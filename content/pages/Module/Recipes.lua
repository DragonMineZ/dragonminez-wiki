local p = {}

local data = mw.loadData( 'Module:Recipes/data' )
local LANGUAGES = { en = true, es = true, pt = true }
local CYCLE_SECONDS = 1.5
local MAX_CYCLE = 8

local TEXT = {
	shapeless = {
		en = 'Shapeless: the ingredients can go in any slot',
		es = 'Sin forma: los ingredientes pueden ir en cualquier casilla',
		pt = 'Sem forma: os ingredientes podem ir em qualquer espaço',
	},
	missing = { en = 'No recipe for %s', es = 'No hay receta para %s', pt = 'Nenhuma receita para %s' },
	missingScreen = { en = 'No screen called %s', es = 'No hay pantalla llamada %s', pt = 'Nenhuma tela chamada %s' },
	energy = { en = '%s Star Energy', es = '%s de Energía Estelar', pt = '%s de Energia Estelar' },
	energyName = { en = 'Star Energy', es = 'Energía Estelar', pt = 'Energia Estelar' },
	seconds = { en = '%s s', es = '%s s', pt = '%s s' },
}

local function language( frame )
	local lang = frame:preprocess( '{{PAGELANGUAGE}}' )
	if LANGUAGES[ lang ] then
		return lang
	end
	return 'en'
end

local function itemId( value )
	value = mw.text.trim( value or '' )
	if value == '' then
		return nil
	end
	if not value:find( ':', 1, true ) then
		value = 'dragonminez:' .. value
	end
	return value
end

local function count( list )
	local n = 0
	for _ in ipairs( list ) do
		n = n + 1
	end
	return n
end

local function number( value, lang )
	local out = tostring( math.floor( value + 0.5 ) )
	local sep = lang == 'en' and ',' or '\194\160'
	local changed
	repeat
		out, changed = out:gsub( '^(%d+)(%d%d%d)', '%1' .. sep .. '%2' )
	until changed == 0
	return out
end

local function seconds( ticks, lang )
	local value = ticks / 20
	local text
	if value == math.floor( value ) then
		text = tostring( math.floor( value ) )
	else
		text = string.format( '%.1f', value )
		if lang ~= 'en' then
			text = text:gsub( '%.', ',' )
		end
	end
	return string.format( TEXT.seconds[ lang ], text )
end

local function nameOf( id, lang )
	local item = data.items[ id ]
	if not item then
		return id
	end
	return item.name[ lang ] or item.name.en
end

local function tip( text )
	return '<span class="dmz-recipe__tip">' .. mw.text.nowiki( text ) .. '</span>'
end

local function icon( id, lang )
	local item = data.items[ id ]
	if not item then
		return ''
	end
	local name = nameOf( id, lang )
	local link = ''
	if item.page then
		link = 'Special:MyLanguage/' .. item.page
	elseif item.url then
		link = item.url
	end
	local alt = name:gsub( '[|%[%]]', '' )
	return '[[File:' .. item.icon .. '|link=' .. link .. '|alt=' .. alt .. ']]' .. tip( name )
end

local function slot( position, items, lang, class, extra )
	local n = math.min( count( items ), MAX_CYCLE )
	local inner = {}
	if n == 1 then
		table.insert( inner, icon( items[ 1 ], lang ) )
	else
		for i = 1, n do
			local delay = ( i - 1 - n ) * CYCLE_SECONDS
			table.insert( inner, '<span class="dmz-recipe__cycle dmz-recipe__cycle--' .. n
				.. '" style="animation-delay:' .. delay .. 's">' .. icon( items[ i ], lang ) .. '</span>' )
		end
	end
	return '<span class="dmz-recipe__slot' .. ( class or '' ) .. '" style="left:' .. position[ 1 ]
		.. 'px;top:' .. position[ 2 ] .. 'px">' .. table.concat( inner ) .. ( extra or '' ) .. '</span>'
end

local function fixed( layout, lang, html )
	for _, entry in ipairs( layout.fixed or {} ) do
		table.insert( html, slot( entry.pos, entry.items, lang, entry.plain and ' dmz-recipe__slot--plain' or nil ) )
	end
end

local function energy( layout, amount, lang )
	if not layout.energy then
		return ''
	end
	local box = layout.energy
	local label = amount and string.format( TEXT.energy[ lang ], number( amount, lang ) ) or TEXT.energyName[ lang ]
	return '<span class="dmz-recipe__energy" style="left:' .. box[ 1 ] .. 'px;top:' .. box[ 2 ] .. 'px;width:'
		.. box[ 3 ] .. 'px;height:' .. box[ 4 ] .. 'px">' .. tip( label ) .. '</span>'
end

local function render( recipe, lang )
	local layout = data.layouts[ recipe.kind ]
	local station = nameOf( layout.station, lang ):gsub( '[|%[%]]', '' )
	local html = {
		'<div class="dmz-recipe dmz-recipe--' .. recipe.kind .. '" style="width:' .. layout.width
			.. 'px;height:' .. layout.height .. 'px">',
		'[[File:' .. layout.file .. '|link=|alt=' .. station .. ']]',
	}
	fixed( layout, lang, html )
	for name, items in pairs( recipe.slots ) do
		local position = layout.slots[ name ]
		if position then
			table.insert( html, slot( position, items, lang ) )
		end
	end
	local amount = ''
	if recipe.count then
		amount = '<span class="dmz-recipe__count">' .. recipe.count .. '</span>'
	end
	table.insert( html, slot( layout.slots.result, recipe.result, lang, ' dmz-recipe__slot--result', amount ) )
	if recipe.shapeless and layout.shapeless then
		table.insert( html, '<span class="dmz-recipe__shapeless material-symbols-rounded" style="left:'
			.. layout.shapeless[ 1 ] .. 'px;top:' .. layout.shapeless[ 2 ] .. 'px" title="'
			.. TEXT.shapeless[ lang ] .. '">shuffle</span>' )
	end
	if recipe.time and layout.time then
		table.insert( html, '<span class="dmz-recipe__time" style="left:' .. layout.time[ 1 ] .. 'px;top:'
			.. layout.time[ 2 ] .. 'px">' .. seconds( recipe.time, lang ) .. '</span>' )
	end
	if recipe.energy then
		table.insert( html, energy( layout, recipe.energy, lang ) )
	end
	table.insert( html, '</div>' )
	return table.concat( html )
end

local function card( recipe, lang )
	return '<div class="dmz-recipe-card"><div class="dmz-recipe-card__title">'
		.. mw.text.nowiki( nameOf( recipe.result[ 1 ], lang ) ) .. '</div>' .. render( recipe, lang ) .. '</div>'
end

local function recipesFor( arg, kind )
	local value = mw.text.trim( arg or '' )
	if data.recipes[ value ] then
		return { data.recipes[ value ] }
	end
	local id = itemId( value )
	local list = {}
	for _, recipeId in ipairs( data.byResult[ id ] or {} ) do
		local recipe = data.recipes[ recipeId ]
		if not kind or recipe.kind == kind then
			table.insert( list, recipe )
		end
	end
	return list, id
end

local function wrap( out, small )
	local class = 'dmz-recipes'
	if small then
		class = class .. ' dmz-recipes--small'
	end
	return '<div class="' .. class .. '">' .. table.concat( out ) .. '</div>'
end

function p.show( frame )
	local args = frame:getParent().args
	local lang = language( frame )
	local captions = args.caption == 'yes'
	local kind = args.kind and mw.text.trim( args.kind ) ~= '' and mw.text.trim( args.kind ) or nil
	local out = {}
	for _, arg in ipairs( args ) do
		local list, id = recipesFor( arg, kind )
		if #list == 0 then
			table.insert( out, '<strong class="error">' .. string.format( TEXT.missing[ lang ], mw.text.nowiki( id or arg ) ) .. '</strong>' )
		end
		for _, recipe in ipairs( list ) do
			table.insert( out, captions and card( recipe, lang ) or render( recipe, lang ) )
		end
	end
	return wrap( out, args.size == 'small' )
end

function p.patterns( frame )
	local set = mw.text.trim( frame.args[ 1 ] or '' )
	local lang = language( frame )
	local list = {}
	for _, recipe in pairs( data.recipes ) do
		if recipe.kind == 'pattern' and recipe.set == set then
			table.insert( list, recipe )
		end
	end
	table.sort( list, function ( a, b )
		return nameOf( a.result[ 1 ], lang ) < nameOf( b.result[ 1 ], lang )
	end )
	local out = {}
	for _, recipe in ipairs( list ) do
		table.insert( out, card( recipe, lang ) )
	end
	return wrap( out, true )
end

local PRIORITY = { crafting = 1, pattern = 2, kikono = 3, brewing = 4, smelting = 5, blasting = 6, smoking = 7, campfire = 8 }
local MAX_DEPTH = 8

local TREE = {
	materials = { en = 'Base materials for one craft', es = 'Materiales base para un crafteo', pt = 'Materiais básicos para uma fabricação' },
	steps = { en = 'Crafting tree', es = 'Árbol de crafteo', pt = 'Árvore de fabricação' },
	energy = { en = 'Total: %s Star Energy', es = 'Total: %s de Energía Estelar', pt = 'Total: %s de Energia Estelar' },
	unknown = { en = 'Unknown item: %s', es = 'Ítem desconocido: %s', pt = 'Item desconhecido: %s' },
}

local function armorRecipe( id )
	local info = data.armor[ id ]
	if not info then
		return nil
	end
	local group = data.recipes[ 'kikono/' .. info.piece ]
	local slots = {}
	for name, items in pairs( group.slots ) do
		slots[ name ] = items
	end
	slots.pattern = { info.pattern }
	return { kind = 'kikono', slots = slots, result = { id }, time = group.time, energy = group.energy }
end

local function recipesOf( id )
	local armor = armorRecipe( id )
	if armor then
		return { armor }
	end
	local list = {}
	for _, recipeId in ipairs( data.byResult[ id ] or {} ) do
		table.insert( list, data.recipes[ recipeId ] )
	end
	table.sort( list, function ( a, b )
		local sa, sb = ( a.unpack or a.alternate ) and 1 or 0, ( b.unpack or b.alternate ) and 1 or 0
		if sa ~= sb then
			return sa < sb
		end
		return ( PRIORITY[ a.kind ] or 9 ) < ( PRIORITY[ b.kind ] or 9 )
	end )
	return list
end

local function main( id )
	if id:find( '^minecraft:' ) and not id:find( '^minecraft:potion%.' ) then
		return nil
	end
	for _, recipe in ipairs( recipesOf( id ) ) do
		if not recipe.unpack and not recipe.alternate then
			return recipe
		end
	end
	return nil
end

local function isTool( id )
	for _, tool in ipairs( data.tools or {} ) do
		if tool == id then
			return true
		end
	end
	return false
end

local function itemLink( id, lang )
	local item = data.items[ id ]
	local name = mw.text.nowiki( nameOf( id, lang ) )
	if item and item.page then
		return '[[Special:MyLanguage/' .. item.page .. '|' .. name .. ']]'
	end
	return name
end

local function smallIcon( id )
	local item = data.items[ id ]
	if not item then
		return ''
	end
	return '[[File:' .. item.icon .. '|link=|alt=]]'
end

local function gather( id, qty, acc, order, path, totals, force )
	local recipe = force and recipesOf( id )[ 1 ] or main( id )
	if isTool( id ) then
		if totals.tools[ id ] then
			return
		end
		totals.tools[ id ] = true
		qty = 1
	end
	if not recipe or path[ id ] then
		if not acc[ id ] then
			acc[ id ] = { items = { id }, qty = 0 }
			table.insert( order, id )
		end
		acc[ id ].qty = acc[ id ].qty + qty
		return
	end
	local yield = recipe.count or 1
	local crafts = math.ceil( qty / yield )
	if recipe.energy then
		totals.energy = totals.energy + crafts * recipe.energy
	end
	path[ id ] = true
	local names = {}
	for name in pairs( recipe.slots ) do
		table.insert( names, name )
	end
	table.sort( names )
	for _, name in ipairs( names ) do
		local items = recipe.slots[ name ]
		if count( items ) == 1 then
			gather( items[ 1 ], crafts, acc, order, path, totals )
		else
			local key = ''
			for _, item in ipairs( items ) do
				key = key .. item .. '|'
			end
			if not acc[ key ] then
				local copy = {}
				for _, item in ipairs( items ) do
					table.insert( copy, item )
				end
				acc[ key ] = { items = copy, qty = 0 }
				table.insert( order, key )
			end
			acc[ key ].qty = acc[ key ].qty + crafts
		end
	end
	path[ id ] = nil
end

local function materials( id, lang )
	local recipe = recipesOf( id )[ 1 ]
	if not recipe or recipe.unpack or recipe.alternate then
		return ''
	end
	local acc, order = {}, {}
	local totals = { energy = 0, tools = {} }
	gather( id, recipe.count or 1, acc, order, {}, totals, true )
	local html = { '<div class="dmz-materials"><div class="dmz-materials__title">' .. TREE.materials[ lang ] .. '</div><div class="dmz-materials__row">' }
	for _, key in ipairs( order ) do
		local entry = acc[ key ]
		local amount = entry.qty > 1 and ( '<span class="dmz-recipe__count">' .. entry.qty .. '</span>' ) or ''
		table.insert( html, '<span class="dmz-materials__slot">' .. slot( { 2, 2 }, entry.items, lang, nil, amount ) .. '</span>' )
	end
	table.insert( html, '</div>' )
	if totals.energy > 0 then
		table.insert( html, '<div class="dmz-materials__energy">' .. string.format( TREE.energy[ lang ], number( totals.energy, lang ) ) .. '</div>' )
	end
	table.insert( html, '</div>' )
	return table.concat( html )
end

local function node( id, lang, depth, path, root )
	local list = recipesOf( id )
	if #list == 0 then
		return ''
	end
	path[ id ] = true
	if not root then
		list = { main( id ) or list[ 1 ] }
	end
	local html = { '<div class="dmz-tree__node">', '<div class="dmz-tree__head">' .. smallIcon( id ) .. '<span>' .. itemLink( id, lang ) .. '</span></div>', '<div class="dmz-recipes">' }
	for _, recipe in ipairs( list ) do
		table.insert( html, render( recipe, lang ) )
	end
	table.insert( html, '</div>' )
	local base = main( id ) or ( not list[ 1 ].unpack and not list[ 1 ].alternate and list[ 1 ] ) or nil
	if base and depth < MAX_DEPTH then
		local children = {}
		local names = {}
		for name in pairs( base.slots ) do
			table.insert( names, name )
		end
		table.sort( names, function ( a, b )
			local na, nb = tonumber( a ), tonumber( b )
			if na and nb then
				return na < nb
			end
			return tostring( a ) < tostring( b )
		end )
		for _, name in ipairs( names ) do
			local items = base.slots[ name ]
			local child = items[ 1 ]
			if count( items ) == 1 and not path[ child ] and main( child ) then
				table.insert( children, node( child, lang, depth + 1, path, false ) )
			end
		end
		if #children > 0 then
			table.insert( html, '<div class="dmz-tree__children">' .. table.concat( children ) .. '</div>' )
		end
	end
	table.insert( html, '</div>' )
	return table.concat( html )
end

function p.tree( frame )
	local lang = language( frame )
	local id = itemId( frame.args[ 1 ] or frame:getParent().args[ 1 ] )
	if not id or not data.items[ id ] or #recipesOf( id ) == 0 then
		return '<strong class="error">' .. string.format( TREE.unknown[ lang ], mw.text.nowiki( id or '' ) ) .. '</strong>'
	end
	return '<div class="dmz-tree">' .. materials( id, lang )
		.. '<div class="dmz-tree__title">' .. TREE.steps[ lang ] .. '</div>'
		.. node( id, lang, 0, {}, true ) .. '</div>'
end

function p.finder( frame )
	local lang = language( frame )
	local list = {}
	local seen = {}
	local function add( id )
		if seen[ id ] or not data.items[ id ] then
			return
		end
		seen[ id ] = true
		local item = data.items[ id ]
		table.insert( list, { id = id, name = nameOf( id, lang ), en = item.name.en, icon = item.icon } )
	end
	for id in pairs( data.byResult ) do
		add( id )
	end
	for id in pairs( data.armor ) do
		add( id )
	end
	table.sort( list, function ( a, b )
		return a.name < b.name
	end )
	local json = mw.text.jsonEncode( list ):gsub( '&', '&amp;' ):gsub( '"', '&quot;' ):gsub( '<', '&lt;' ):gsub( '>', '&gt;' )
	return '<div class="dmz-finder" data-lang="' .. lang .. '" data-items="' .. json .. '"></div>'
end

function p.screen( frame )
	local key = mw.text.trim( frame.args[ 1 ] or frame:getParent().args[ 1 ] or '' )
	local lang = language( frame )
	local screen = data.screens[ key ]
	if not screen then
		return '<strong class="error">' .. string.format( TEXT.missingScreen[ lang ], mw.text.nowiki( key ) ) .. '</strong>'
	end
	local html = {
		'<div class="dmz-recipes"><div class="dmz-recipe dmz-recipe--screen" style="width:' .. screen.width
			.. 'px;height:' .. screen.height .. 'px">',
		'[[File:' .. screen.file .. '|link=|alt=]]',
	}
	fixed( screen, lang, html )
	for _, entry in ipairs( screen.texts or {} ) do
		local class = 'dmz-recipe__text dmz-recipe__text--' .. entry.align
		if entry.outline then
			class = class .. ' dmz-recipe__text--outline'
		end
		table.insert( html, '<span class="' .. class .. '" style="left:' .. entry.x .. 'px;top:' .. entry.y
			.. 'px;color:' .. entry.color .. '">' .. mw.text.nowiki( entry.text[ lang ] or entry.text.en ) .. '</span>' )
	end
	table.insert( html, energy( screen, nil, lang ) )
	table.insert( html, '</div></div>' )
	return table.concat( html )
end

return p
