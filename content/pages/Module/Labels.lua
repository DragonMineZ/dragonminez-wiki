local p = {}

local data = mw.loadData( 'Module:Labels/data' )
local LANGUAGES = { en = true, es = true, pt = true }
local PLACEHOLDER = 'Placeholder.png'

local function pageLanguage( frame )
	local lang = frame:preprocess( '{{PAGELANGUAGE}}' )
	if LANGUAGES[ lang ] then
		return lang
	end
	return 'en'
end

local function translate( key, lang )
	local row = data[ key ]
	if not row then
		return key
	end
	return row[ lang ] or row.en or key
end

local function baseOf( text )
	local base, suffix = text:match( '^(.*)/([^/]+)$' )
	if base and LANGUAGES[ suffix ] then
		return base
	end
	return text
end

local function fileExists( name )
	local title = mw.title.new( name, 'File' )
	return title ~= nil and title.file ~= nil and title.file.exists
end

function p.get( frame )
	local key = mw.text.trim( frame.args[ 1 ] or '' )
	return translate( key, pageLanguage( frame ) )
end

function p.base( frame )
	return baseOf( mw.title.getCurrentTitle().text )
end

function p.name( frame )
	local page = mw.text.trim( frame.args[ 1 ] or '' )
	if page == '' then
		page = baseOf( mw.title.getCurrentTitle().text )
	end
	return translate( page, pageLanguage( frame ) )
end

function p.link( frame )
	local page = mw.text.trim( frame.args[ 1 ] or '' )
	local text = mw.text.trim( frame.args[ 2 ] or '' )
	if text == '' then
		text = translate( page, pageLanguage( frame ) )
	end
	return string.format( '[[Special:MyLanguage/%s|%s]]', page, text )
end

function p.image( frame )
	local args = frame.args
	local given = mw.text.trim( args[ 1 ] or '' )
	local page = mw.text.trim( args.page or '' )
	if page == '' then
		page = baseOf( mw.title.getCurrentTitle().text )
	end
	local size = mw.text.trim( args.size or '' )
	if size == '' then
		size = '300px'
	end
	local candidates = {}
	if given ~= '' then
		table.insert( candidates, given )
	end
	table.insert( candidates, page .. '.png' )
	for _, name in ipairs( candidates ) do
		if fileExists( name ) then
			return string.format( '[[File:%s|%s|link=|alt=%s]]', name, size, page )
		end
	end
	local placeholder = mw.text.trim( args.placeholder or '' )
	if placeholder == '' then
		placeholder = PLACEHOLDER
	end
	local label = translate( 'Image pending', pageLanguage( frame ) )
	return string.format(
		'<span class="dmz-placeholder" title="%s">[[File:%s|%s|link=|alt=%s]]</span>',
		label, placeholder, size, label
	)
end

return p
