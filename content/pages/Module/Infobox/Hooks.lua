local p = {}

local LANGUAGES = { en = true, es = true, pt = true }
local HIDE = { none = true, ['-'] = true }
local OWN = { image = true, label = true }

local function pageLanguage()
	local lang = mw.getCurrentFrame():preprocess( '{{PAGELANGUAGE}}' )
	return LANGUAGES[ lang ] and lang or 'en'
end

local function localize( name, lang )
	local row = mw.loadData( 'Module:Labels/data' )[ name ]
	return row and ( row[ lang ] or row.en ) or name
end

local function fileWikitext( name, alt )
	local title = mw.title.new( name, 'File' )
	if not title or not title.file or not title.file.exists then
		return nil
	end
	return string.format( '[[File:%s|300px|link=|alt=%s]]', name, alt )
end

local function formatValue( value, lang )
	if value:match( '^%d+$' ) and #value > 3 then
		return mw.getLanguage( lang ):formatNum( tonumber( value ) )
	end
	return value
end

function p.onCastArgsStart( args, sep )
	if not args.forms then
		return
	end
	local names = {}
	for _, name in ipairs( mw.text.split( args.forms, '%s*;%s*' ) ) do
		if name ~= '' then
			names[ #names + 1 ] = name
		end
	end
	args.forms = nil
	if #names < 2 then
		return
	end
	local lang = pageLanguage()
	local overrides = {}
	for key, value in pairs( args ) do
		if type( key ) == 'string' then
			for i, name in ipairs( names ) do
				local prefix = name .. '_'
				if key:sub( 1, #prefix ) == prefix then
					local field = key:sub( #prefix + 1 )
					if not OWN[ field ] then
						overrides[ field ] = overrides[ field ] or {}
						overrides[ field ][ i ] = value
					end
				end
			end
		end
	end
	local keys = {}
	for i, name in ipairs( names ) do
		local key = 'form' .. i
		keys[ i ] = key
		local label = args[ name .. '_label' ] or localize( name, lang )
		args[ key .. '_label' ] = label
		local image = i > 1 and args[ name .. '_image' ] and fileWikitext( args[ name .. '_image' ], label )
		args[ key .. '_image' ] = image or args.image
	end
	for field, values in pairs( overrides ) do
		local shared = args[ field ]
		for i, key in ipairs( keys ) do
			local value = values[ i ]
			if value == nil then
				value = shared
			elseif HIDE[ value ] then
				value = nil
			else
				value = formatValue( value, lang )
			end
			args[ key .. '_' .. field ] = value
		end
		args[ field ] = nil
	end
	args.image = nil
	args.tabs = table.concat( keys, sep )
end

return p
