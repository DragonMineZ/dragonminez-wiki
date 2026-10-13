local p = {}

local data = mw.loadData( 'Module:Forms/data' )
local LANGUAGES = { en = true, es = true, pt = true }
local EMPTY = { [ '' ] = true, [ '—' ] = true, [ '-' ] = true }

local function pageLanguage( frame )
	local lang = frame:preprocess( '{{PAGELANGUAGE}}' )
	return LANGUAGES[ lang ] and lang or 'en'
end

local function label( name, lang )
	local row = mw.loadData( 'Module:Labels/data' )[ name ]
	return row and ( row[ lang ] or row.en ) or name
end

local function arg( args, key )
	local value = mw.text.trim( args[ key ] or '' )
	if EMPTY[ value ] then
		return nil
	end
	return value
end

local function fileExists( name )
	local title = mw.title.new( name, 'File' )
	return title ~= nil and title.file ~= nil and title.file.exists
end

local function findGroup( race, key )
	for _, group in ipairs( data[ race ] or {} ) do
		if group.key == key then
			return group
		end
	end
end

local function findForm( race, groupKey, formKey )
	local index = 0
	for _, group in ipairs( data[ race ] or {} ) do
		for _, form in ipairs( group.forms ) do
			index = index + 1
			if group.key == groupKey and form.key == formKey then
				return form, index
			end
		end
	end
end

local function number( value, lang )
	return mw.getLanguage( lang ):formatNum( value )
end

local function multiplier( value )
	if value:match( '^[%d%.]+$' ) then
		return '×' .. value
	end
	if value:match( '^[%d%.]+%s*/%s*[%d%.]+%s*/%s*[%d%.]+$' ) then
		return ( value:gsub( '([%d%.]+)', '×%1' ) )
	end
	return value
end

local function stat( name, value, lang )
	return string.format(
		'<span class="dmz-formstat"><span class="dmz-formstat__label">%s</span> <span class="dmz-formstat__value">%s</span></span>',
		label( name, lang ), value
	)
end

function p.group( frame )
	local args = frame:getParent().args
	local race = mw.text.trim( args[ 1 ] or '' )
	local group = findGroup( race, mw.text.trim( args[ 2 ] or '' ) )
	if not group then
		return ''
	end
	local lang = pageLanguage( frame )
	local classes = 'dmz-formgroup mw-collapsible'
	if data[ race ][ 1 ].key ~= group.key then
		classes = classes .. ' mw-collapsed'
	end
	local count = 0
	for _ in ipairs( group.forms ) do
		count = count + 1
	end
	local intro = arg( args, 'text' )
	return string.format(
		'<div class="%s"><div class="dmz-formgroup__title mw-collapsible-toggle" role="button" data-count="%d">\n=== %s ===\n</div><div class="mw-collapsible-content dmz-formgroup__body">%s',
		classes, count, group.name[ lang ] or group.name.en,
		intro and ( '<div class="dmz-formgroup__intro">\n' .. intro .. '\n</div>' ) or ''
	)
end

function p.groupEnd()
	return '</div></div>'
end

function p.entry( frame )
	local args = frame:getParent().args
	local race = mw.text.trim( args[ 1 ] or '' )
	local form, index = findForm( race, mw.text.trim( args[ 2 ] or '' ), mw.text.trim( args[ 3 ] or '' ) )
	if not form then
		return ''
	end
	local lang = pageLanguage( frame )
	local name = form.name[ lang ] or form.name.en
	local file = fileExists( form.file ) and form.file or 'Placeholder.png'

	local stats = {}
	local level = arg( args, 'level' )
	if level then
		stats[ #stats + 1 ] = stat( 'Level', level, lang )
	end
	local cost = arg( args, 'cost' )
	if cost then
		if cost:match( '^[%d,]+$' ) then
			cost = number( tonumber( ( cost:gsub( ',', '' ) ) ), lang )
		end
		stats[ #stats + 1 ] = stat( 'TP cost', cost, lang )
	end
	local story = arg( args, 'story' )
	if story then
		stats[ #stats + 1 ] = stat( 'Story requisite', story, lang )
	end
	local power = arg( args, 'power' )
	if power then
		stats[ #stats + 1 ] = stat( 'STR / SKP / PWR', multiplier( power ), lang )
	end
	local def = arg( args, 'def' )
	if def then
		stats[ #stats + 1 ] = stat( 'DEF', multiplier( def ), lang )
	end
	local drain = arg( args, 'drain' )
	if drain then
		stats[ #stats + 1 ] = stat( 'Ki drain', drain, lang )
	else
		stats[ #stats + 1 ] = string.format( '<span class="dmz-formstat dmz-formstat--note">%s</span>', label( 'No Ki upkeep', lang ) )
	end
	for _, extra in ipairs( { { 'speed', 'Movement speed' }, { 'stamina', 'Stamina per attack' }, { 'attack', 'Attack speed' }, { 'size', 'Size' } } ) do
		if form[ extra[ 1 ] ] then
			stats[ #stats + 1 ] = stat( extra[ 2 ], '×' .. tostring( form[ extra[ 1 ] ] ), lang )
		end
	end

	local text = arg( args, 'text' ) or ''
	return string.format(
		'<div class="dmz-form dmz-form--%s"><div class="dmz-form__media">[[File:%s|x280px|link=|alt=%s]]</div><div class="dmz-form__body">\n==== %s ====\n<div class="dmz-form__stats">%s</div>\n%s\n</div></div>',
		index % 2 == 1 and 'left' or 'right', file, name, name, table.concat( stats ), text
	)
end

return p
