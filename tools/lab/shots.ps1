param(
	[Parameter(Mandatory = $true)][string]$OutDir,
	[string]$Base = 'http://localhost:8080',
	[string[]]$Only = @()
)

$ErrorActionPreference = 'Stop'
$edge = @(
	"${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe",
	"$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe"
) | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $edge) { throw 'Microsoft Edge not found' }

New-Item -ItemType Directory -Force $OutDir | Out-Null
$profileDir = Join-Path $env:TEMP ('dmz-shots-' + [guid]::NewGuid().ToString('N'))

$shots = @(
	@{ Name = 'home-dark';        Path = '/';                                   W = 1440; H = 2600 },
	@{ Name = 'home-light';       Path = '/?dmztheme=light';                    W = 1440; H = 2600 },
	@{ Name = 'article-dark';     Path = '/wiki/Janemba';                       W = 1440; H = 3400 },
	@{ Name = 'article-light';    Path = '/wiki/Janemba?dmztheme=light';        W = 1440; H = 3400 },
	@{ Name = 'article-en';       Path = '/wiki/Janemba?uselang=en';            W = 1440; H = 1400 },
	@{ Name = 'article-mobile';   Path = '/wiki/Janemba';                       W = 390;  H = 2600 },
	@{ Name = 'home-mobile';      Path = '/';                                   W = 390;  H = 2600 },
	@{ Name = 'tablet';           Path = '/wiki/Janemba';                       W = 900;  H = 1600 },
	@{ Name = 'note-doc';         Path = '/wiki/Template:Note';                 W = 1440; H = 1800 },
	@{ Name = 'search-special';   Path = '/index.php?search=janemba&fulltext=1'; W = 1440; H = 1400 },
	@{ Name = 'login';            Path = '/wiki/Special:UserLogin';             W = 1440; H = 1400 },
	@{ Name = 'recentchanges';    Path = '/wiki/Special:RecentChanges';         W = 1440; H = 1800 }
)

foreach ($shot in $shots) {
	if ($Only.Count -and -not ($Only -contains $shot.Name)) { continue }
	$file = Join-Path $OutDir ($shot.Name + '.png')
	& $edge --headless=new --disable-gpu --hide-scrollbars --no-first-run --user-data-dir="$profileDir" `
		"--window-size=$($shot.W),$($shot.H)" --virtual-time-budget=9000 "--screenshot=$file" ($Base + $shot.Path) 2>$null | Out-Null
	Write-Output ("{0,-16} {1}" -f $shot.Name, $file)
}
