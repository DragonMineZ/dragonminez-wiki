local p = {}

local data = mw.loadData( 'Module:Sidequests/data' )
local LANGUAGES = { en = true, es = true, pt = true }

local TEXT = {
	quest = { en = 'Quest', es = 'Misión', pt = 'Missão' },
	requirements = { en = 'Requirements', es = 'Requisitos', pt = 'Requisitos' },
	objectives = { en = 'Objectives', es = 'Objetivos', pt = 'Objetivos' },
	rewards = { en = 'Rewards', es = 'Recompensas', pt = 'Recompensas' },
	givenBy = { en = 'Given by', es = 'La da', pt = 'Dada por' },
	tree = { en = 'Quest tree only', es = 'Solo desde el árbol de misiones', pt = 'Só pela árvore de missões' },
	turnIn = { en = 'turn in to', es = 'se entrega a', pt = 'entregar para' },
	anyOrder = { en = 'In any order', es = 'En cualquier orden', pt = 'Em qualquer ordem' },
	repeatable = { en = 'Repeatable', es = 'Repetible', pt = 'Repetível' },
	empty = { en = 'No side quests.', es = 'Ninguna misión secundaria.', pt = 'Nenhuma missão secundária.' },
	category = { en = 'Category', es = 'Categoría', pt = 'Categoria' },
	quests = { en = 'Side quests', es = 'Misiones secundarias', pt = 'Missões secundárias' },
	total = { en = 'Total', es = 'Total', pt = 'Total' },
}

local function language( frame )
	local lang = frame:preprocess( '{{PAGELANGUAGE}}' )
	if LANGUAGES[ lang ] then
		return lang
	end
	return 'en'
end

local function list( items, ordered )
	if #items == 0 then
		return ''
	end
	local marker = ordered and '#' or '*'
	local out = {}
	for _, item in ipairs( items ) do
		table.insert( out, marker .. ' ' .. item )
	end
	return '\n' .. table.concat( out, '\n' )
end

local function questCell( quest, lang, showGiver )
	local parts = { "'''" .. quest.name[ lang ] .. "'''" }
	if quest.repeatable then
		table.insert( parts, ' <span class="dmz-tag">' .. TEXT.repeatable[ lang ] .. '</span>' )
	end
	table.insert( parts, '<div class="dmz-sidequest__desc">' .. quest.desc[ lang ] .. '</div>' )
	if showGiver then
		local giver
		if quest.giverText then
			giver = TEXT.givenBy[ lang ] .. ': ' .. quest.giverText[ lang ]
		else
			giver = TEXT.tree[ lang ]
		end
		table.insert( parts, '<div class="dmz-sidequest__giver">' .. giver .. '</div>' )
	end
	return table.concat( parts )
end

local function objectivesCell( quest, lang )
	local items = quest.objectives[ lang ]
	local ordered = quest.ordered and #items > 1
	local prefix = ''
	if not quest.ordered and #items > 1 then
		prefix = '<div class="dmz-sidequest__note">' .. TEXT.anyOrder[ lang ] .. '</div>'
	end
	return prefix .. list( items, ordered )
end

local function render( quests, lang, showGiver )
	if #quests == 0 then
		return "''" .. TEXT.empty[ lang ] .. "''"
	end
	local out = {
		'{| class="wikitable dmz-sidequests"',
		'! ' .. TEXT.quest[ lang ] .. ' !! ' .. TEXT.requirements[ lang ] .. ' !! ' .. TEXT.objectives[ lang ] .. ' !! ' .. TEXT.rewards[ lang ],
	}
	for _, quest in ipairs( quests ) do
		local requirements = quest.unlock[ lang ]
		local requirementsText = #requirements > 0 and list( requirements, false ) or data.none[ lang ]
		table.insert( out, '|- id="sq-' .. quest.id .. '"' )
		table.insert( out, '| ' .. questCell( quest, lang, showGiver ) )
		table.insert( out, '| ' .. requirementsText )
		table.insert( out, '| ' .. objectivesCell( quest, lang ) )
		table.insert( out, '| ' .. list( quest.rewards[ lang ], false ) )
	end
	table.insert( out, '|}' )
	return table.concat( out, '\n' )
end

local function filter( test )
	local result = {}
	for _, quest in ipairs( data.quests ) do
		if test( quest ) then
			table.insert( result, quest )
		end
	end
	return result
end

local function argument( frame, index )
	local value = frame.args[ index ]
	if value == nil or mw.text.trim( value ) == '' then
		value = frame:getParent() and frame:getParent().args[ index ]
	end
	return value and mw.text.trim( value ) or ''
end

function p.category( frame )
	local category = argument( frame, 1 )
	return render( filter( function ( quest )
		return quest.category == category
	end ), language( frame ), true )
end

function p.giver( frame )
	local wanted = {}
	for id in mw.text.gsplit( argument( frame, 1 ), ',', true ) do
		wanted[ mw.text.trim( id ) ] = true
	end
	return render( filter( function ( quest )
		return wanted[ quest.giver ] == true
	end ), language( frame ), false )
end

function p.count( frame )
	local category = argument( frame, 1 )
	local giver = argument( frame, 'giver' )
	return #filter( function ( quest )
		return ( category == '' or quest.category == category ) and ( giver == '' or quest.giver == giver )
	end )
end

function p.categoryName( frame )
	local names = data.categoryNames[ argument( frame, 1 ) ]
	if not names then
		return argument( frame, 1 )
	end
	return names[ language( frame ) ]
end

function p.summary( frame )
	local lang = language( frame )
	local rows = {}
	for _, category in ipairs( data.categories ) do
		local count = #filter( function ( quest )
			return quest.category == category
		end )
		if count > 0 then
			table.insert( rows, '|-\n| [[#' .. category .. '|' .. data.categoryNames[ category ][ lang ] .. ']] || ' .. count )
		end
	end
	return '{| class="wikitable"\n! ' .. TEXT.category[ lang ] .. ' !! ' .. TEXT.quests[ lang ] .. '\n' .. table.concat( rows, '\n' ) .. '\n|-\n! ' .. TEXT.total[ lang ] .. ' !! ' .. #data.quests .. '\n|}'
end

return p
