param(
	[Parameter(Mandatory = $true)][string]$LabDir,
	[ValidateSet('install', 'update', 'serve', 'import', 'php')][string]$Action = 'serve',
	[int]$Port = 8080,
	[string[]]$Rest = @()
)

$ErrorActionPreference = 'Stop'
$repo = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$php = Join-Path $LabDir 'php\php.exe'
$mw = Join-Path $LabDir 'mw'
$data = Join-Path $LabDir 'data'
$secrets = Join-Path $LabDir 'secrets'
$fwd = { param($p) $p -replace '\\', '/' }

function Invoke-Maintenance([string[]]$Arguments) {
	& $php (Join-Path $mw 'maintenance\run.php') @Arguments
	if ($LASTEXITCODE -ne 0) { throw "maintenance $($Arguments[0]) failed ($LASTEXITCODE)" }
}

function New-Hex([int]$Bytes) {
	$buffer = New-Object byte[] $Bytes
	[System.Security.Cryptography.RandomNumberGenerator]::Create().GetBytes($buffer)
	return -join ($buffer | ForEach-Object { $_.ToString('x2') })
}

function Write-LabSettings {
	$content = @"
<?php
putenv( 'MW_SERVER=http://localhost:$Port' );
putenv( 'MW_DATA_DIR=$(& $fwd $data)' );
putenv( 'MW_SECRETS_FILE=$(& $fwd (Join-Path $secrets 'secrets.php'))' );
putenv( 'MW_LOCAL_SETTINGS=$(& $fwd (Join-Path $secrets 'LocalSettings.local.php'))' );
putenv( 'MW_IMAGEMAGICK=0' );
putenv( 'MW_DEBUG=1' );
require '$(& $fwd (Join-Path $repo 'config\LocalSettings.php'))';
"@
	Set-Content -Path (Join-Path $mw 'LocalSettings.php') -Value $content -Encoding ascii
}

switch ($Action) {
	'install' {
		New-Item -ItemType Directory -Force $data, $secrets | Out-Null
		$skinLink = Join-Path $mw 'skins\DragonMineZ'
		if (Test-Path $skinLink) { (Get-Item $skinLink).Delete() }
		New-Item -ItemType Junction -Path $skinLink -Target (Join-Path $repo 'skins\DragonMineZ') | Out-Null
		$authLink = Join-Path $mw 'extensions\DMZAuth'
		if (Test-Path $authLink) { (Get-Item $authLink).Delete() }
		New-Item -ItemType Junction -Path $authLink -Target (Join-Path $repo 'extensions\DMZAuth') | Out-Null

		$passFile = Join-Path $secrets 'admin-password.txt'
		if (-not (Test-Path $passFile)) { Set-Content -Path $passFile -Value ('Lab-' + (New-Hex 12)) -NoNewline -Encoding ascii }
		$secretsPhp = Join-Path $secrets 'secrets.php'
		if (-not (Test-Path $secretsPhp)) {
			Set-Content -Path $secretsPhp -Encoding ascii -Value "<?php`n`$wgSecretKey = '$(New-Hex 32)';`n`$wgUpgradeKey = '$(New-Hex 8)';`n"
		}
		$generated = Join-Path $mw 'LocalSettings.php'
		if (Test-Path $generated) { Remove-Item $generated }
		Invoke-Maintenance @('install', '--dbtype=sqlite', "--dbpath=$(& $fwd $data)", '--dbname=dmzwiki',
			"--server=http://localhost:$Port", '--scriptpath=', '--lang=en', "--passfile=$(& $fwd $passFile)",
			'--skins=', 'DragonMineZ Wiki', 'Admin')
		Remove-Item $generated
		Write-LabSettings
		Invoke-Maintenance @('update', '--quick')
	}
	'update' {
		$authLink = Join-Path $mw 'extensions\DMZAuth'
		if (-not (Test-Path $authLink)) {
			New-Item -ItemType Junction -Path $authLink -Target (Join-Path $repo 'extensions\DMZAuth') | Out-Null
		}
		Write-LabSettings
		Invoke-Maintenance @('update', '--quick')
	}
	'import' {
		Invoke-Maintenance (@('importDump') + $Rest)
	}
	'php' {
		Invoke-Maintenance $Rest
	}
	'serve' {
		$env:PHP_CLI_SERVER_WORKERS = '4'
		& $php -S "127.0.0.1:$Port" -t $mw (Join-Path $repo 'tools\lab\router.php')
	}
}
