return {
	layouts = {
		crafting = {
			file = 'Recipe GUI crafting.png',
			width = 264,
			height = 136,
			slots = {
				[ '1' ] = {
					16,
					16,
				},
				[ '2' ] = {
					52,
					16,
				},
				[ '3' ] = {
					88,
					16,
				},
				[ '4' ] = {
					16,
					52,
				},
				[ '5' ] = {
					52,
					52,
				},
				[ '6' ] = {
					88,
					52,
				},
				[ '7' ] = {
					16,
					88,
				},
				[ '8' ] = {
					52,
					88,
				},
				[ '9' ] = {
					88,
					88,
				},
				result = {
					208,
					52,
				},
			},
			shapeless = {
				160,
				18,
			},
			station = 'minecraft:crafting_table',
		},
		pattern = {
			file = 'Recipe GUI pattern.png',
			width = 372,
			height = 244,
			slots = {
				[ '1' ] = {
					16,
					16,
				},
				[ '2' ] = {
					52,
					16,
				},
				[ '3' ] = {
					88,
					16,
				},
				[ '4' ] = {
					124,
					16,
				},
				[ '5' ] = {
					160,
					16,
				},
				[ '6' ] = {
					196,
					16,
				},
				[ '7' ] = {
					16,
					52,
				},
				[ '8' ] = {
					52,
					52,
				},
				[ '9' ] = {
					88,
					52,
				},
				[ '10' ] = {
					124,
					52,
				},
				[ '11' ] = {
					160,
					52,
				},
				[ '12' ] = {
					196,
					52,
				},
				[ '13' ] = {
					16,
					88,
				},
				[ '14' ] = {
					52,
					88,
				},
				[ '15' ] = {
					88,
					88,
				},
				[ '16' ] = {
					124,
					88,
				},
				[ '17' ] = {
					160,
					88,
				},
				[ '18' ] = {
					196,
					88,
				},
				[ '19' ] = {
					16,
					124,
				},
				[ '20' ] = {
					52,
					124,
				},
				[ '21' ] = {
					88,
					124,
				},
				[ '22' ] = {
					124,
					124,
				},
				[ '23' ] = {
					160,
					124,
				},
				[ '24' ] = {
					196,
					124,
				},
				[ '25' ] = {
					16,
					160,
				},
				[ '26' ] = {
					52,
					160,
				},
				[ '27' ] = {
					88,
					160,
				},
				[ '28' ] = {
					124,
					160,
				},
				[ '29' ] = {
					160,
					160,
				},
				[ '30' ] = {
					196,
					160,
				},
				[ '31' ] = {
					16,
					196,
				},
				[ '32' ] = {
					52,
					196,
				},
				[ '33' ] = {
					88,
					196,
				},
				[ '34' ] = {
					124,
					196,
				},
				[ '35' ] = {
					160,
					196,
				},
				[ '36' ] = {
					196,
					196,
				},
				result = {
					316,
					106,
				},
			},
			shapeless = {
				268,
				18,
			},
			station = 'dragonminez:pattern_station',
		},
		kikono = {
			file = 'Recipe GUI kikono.png',
			width = 352,
			height = 164,
			slots = {
				[ '1' ] = {
					56,
					34,
				},
				[ '2' ] = {
					92,
					34,
				},
				[ '3' ] = {
					128,
					34,
				},
				[ '4' ] = {
					56,
					70,
				},
				[ '5' ] = {
					92,
					70,
				},
				[ '6' ] = {
					128,
					70,
				},
				[ '7' ] = {
					56,
					106,
				},
				[ '8' ] = {
					92,
					106,
				},
				[ '9' ] = {
					128,
					106,
				},
				pattern = {
					178,
					34,
				},
				template = {
					178,
					106,
				},
				result = {
					282,
					70,
				},
			},
			time = {
				242,
				112,
			},
			energy = {
				18,
				42,
				24,
				104,
			},
			station = 'dragonminez:kikono_station',
		},
		smelting = {
			file = 'Recipe GUI furnace.png',
			width = 212,
			height = 158,
			slots = {
				input = {
					26,
					26,
				},
				result = {
					146,
					62,
				},
			},
			time = {
				96,
				98,
			},
			fixed = {
				{
					pos = {
						26,
						98,
					},
					items = {
						'minecraft:coal',
						'minecraft:charcoal',
						'minecraft:coal_block',
						'minecraft:lava_bucket',
						'minecraft:blaze_rod',
					},
				},
			},
			station = 'minecraft:furnace',
		},
		blasting = {
			file = 'Recipe GUI blast furnace.png',
			width = 212,
			height = 158,
			slots = {
				input = {
					26,
					26,
				},
				result = {
					146,
					62,
				},
			},
			time = {
				96,
				98,
			},
			fixed = {
				{
					pos = {
						26,
						98,
					},
					items = {
						'minecraft:coal',
						'minecraft:charcoal',
						'minecraft:coal_block',
						'minecraft:lava_bucket',
						'minecraft:blaze_rod',
					},
				},
			},
			station = 'minecraft:blast_furnace',
		},
		smoking = {
			file = 'Recipe GUI smoker.png',
			width = 212,
			height = 158,
			slots = {
				input = {
					26,
					26,
				},
				result = {
					146,
					62,
				},
			},
			time = {
				96,
				98,
			},
			fixed = {
				{
					pos = {
						26,
						98,
					},
					items = {
						'minecraft:coal',
						'minecraft:charcoal',
						'minecraft:coal_block',
						'minecraft:lava_bucket',
						'minecraft:blaze_rod',
					},
				},
			},
			station = 'minecraft:smoker',
		},
		campfire = {
			file = 'Recipe GUI campfire.png',
			width = 228,
			height = 104,
			slots = {
				input = {
					16,
					42,
				},
				result = {
					172,
					42,
				},
			},
			time = {
				128,
				78,
			},
			fixed = {
				{
					pos = {
						62,
						42,
					},
					items = {
						'minecraft:campfire',
					},
					plain = true,
				},
			},
			station = 'minecraft:campfire',
		},
		brewing = {
			file = 'Recipe GUI brewing.png',
			width = 384,
			height = 166,
			slots = {
				ingredient = {
					148,
					26,
				},
				bottle1 = {
					102,
					94,
				},
				bottle2 = {
					148,
					108,
				},
				bottle3 = {
					194,
					94,
				},
				result = {
					328,
					102,
				},
			},
			fixed = {
				{
					pos = {
						24,
						26,
					},
					items = {
						'minecraft:blaze_powder',
					},
				},
			},
			station = 'minecraft:brewing_stand',
		},
	},
	screens = {
		fuel_generator = {
			file = 'Screen fuel generator.png',
			width = 352,
			height = 160,
			slots = {},
			energy = {
				308,
				42,
				24,
				104,
			},
			fixed = {
				{
					pos = {
						162,
						78,
					},
					items = {
						'minecraft:coal',
						'minecraft:charcoal',
						'minecraft:coal_block',
						'minecraft:lava_bucket',
						'minecraft:blaze_rod',
					},
				},
			},
			texts = {
				{
					x = 16,
					y = 12,
					text = {
						en = 'Fuel Generator',
						es = 'Generador de Combustible',
						pt = 'Gerador de Combustível',
					},
					align = 'left',
					color = '#404040',
				},
			},
		},
		gravity_device = {
			file = 'Screen gravity device.png',
			width = 352,
			height = 160,
			slots = {},
			energy = {
				308,
				42,
				24,
				104,
			},
			texts = {
				{
					x = 176,
					y = 12,
					text = {
						en = 'Gravity Device',
						es = 'Dispositivo de Gravedad',
						pt = 'Dispositivo de Gravidade',
					},
					align = 'center',
					color = '#ffffff',
					outline = true,
				},
				{
					x = 88,
					y = 48,
					text = {
						en = '10',
						es = '10',
						pt = '10',
					},
					align = 'left',
					color = '#e0e0e0',
				},
				{
					x = 230,
					y = 48,
					text = {
						en = 'Set',
						es = 'Establecer',
						pt = 'Definir',
					},
					align = 'center',
					color = '#ffffff',
					outline = true,
				},
				{
					x = 175,
					y = 94,
					text = {
						en = 'Turn On',
						es = 'Encender',
						pt = 'Ligar',
					},
					align = 'center',
					color = '#ffffff',
					outline = true,
				},
				{
					x = 176,
					y = 128,
					text = {
						en = 'Idle',
						es = 'En espera',
						pt = 'Inativo',
					},
					align = 'center',
					color = '#aaaaaa',
					outline = true,
				},
			},
		},
	},
	items = {
		[ 'dragonminez:a13_armor_boots' ] = {
			name = {
				en = 'Red Ribbon Army Boots (Android 13)',
				es = 'Botas del Ejército Red Ribbon (Androide 13)',
				pt = 'Botas da Força Red Ribbon (Androide 13)',
			},
			icon = 'Item dragonminez a13_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a13_armor_chestplate' ] = {
			name = {
				en = 'Red Ribbon Army Chestplate (Android 13)',
				es = 'Peto del Ejército Red Ribbon (Androide 13)',
				pt = 'Peitoral da Força Red Ribbon Army (Androide 13)',
			},
			icon = 'Item dragonminez a13_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a13_armor_leggings' ] = {
			name = {
				en = 'Red Ribbon Army Leggings (Android 13)',
				es = 'Pantalones del Ejército Red Ribbon (Androide 13)',
				pt = 'Calças da Força Red Ribbon (Androide 13)',
			},
			icon = 'Item dragonminez a13_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a14_armor_boots' ] = {
			name = {
				en = 'Red Ribbon Army Boots (Android 14)',
				es = 'Botas del Ejército Red Ribbon (Androide 14)',
				pt = 'Botas da Força Red Ribbon Army (Androide 14)',
			},
			icon = 'Item dragonminez a14_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a14_armor_chestplate' ] = {
			name = {
				en = 'Red Ribbon Army Chestplate (Android 14)',
				es = 'Peto del Ejército Red Ribbon (Androide 14)',
				pt = 'Peitoral da Força Red Ribbon (Androide 14)',
			},
			icon = 'Item dragonminez a14_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a14_armor_leggings' ] = {
			name = {
				en = 'Red Ribbon Army Leggings (Android 14)',
				es = 'Pantalones del Ejército Red Ribbon (Androide 14)',
				pt = 'Calças da Força Red Ribbon Army (Androide 14)',
			},
			icon = 'Item dragonminez a14_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a16_armor_boots' ] = {
			name = {
				en = 'Red Ribbon Army Boots (Android 16)',
				es = 'Botas del Ejército Red Ribbon (Androide 16)',
				pt = 'Botas da Força Red Ribbon (Androide 16)',
			},
			icon = 'Item dragonminez a16_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a16_armor_chestplate' ] = {
			name = {
				en = 'Red Ribbon Army Chestplate (Android 16)',
				es = 'Peto del Ejército Red Ribbon (Androide 16)',
				pt = 'Peitoral da Força Red Ribbon (Androide 16)',
			},
			icon = 'Item dragonminez a16_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a16_armor_leggings' ] = {
			name = {
				en = 'Red Ribbon Army Leggings (Android 16)',
				es = 'Pantalones del Ejército Red Ribbon (Androide 16)',
				pt = 'Calças da Forças Red Ribbon (Androide 16)',
			},
			icon = 'Item dragonminez a16_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a17_armor_boots' ] = {
			name = {
				en = 'Red Ribbon Army Boots (Android 17)',
				es = 'Botas del Ejército Red Ribbon (Androide 17)',
				pt = 'Botas da Força Red Ribbon (Androide 17)',
			},
			icon = 'Item dragonminez a17_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a17_armor_chestplate' ] = {
			name = {
				en = 'Red Ribbon Army Chestplate (Android 17)',
				es = 'Peto del Ejército Red Ribbon (Androide 17)',
				pt = 'Peitoral da Força Red Ribbon (Androide 17)',
			},
			icon = 'Item dragonminez a17_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a17_armor_leggings' ] = {
			name = {
				en = 'Red Ribbon Army Leggings (Android 17)',
				es = 'Pantalones del Ejército Red Ribbon (Androide 17)',
				pt = 'Calças da Força Red Ribbon (Androide 17)',
			},
			icon = 'Item dragonminez a17_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a17_super_armor_boots' ] = {
			name = {
				en = 'Android 17 Boots (Super)',
				es = 'Botas del Androide 17 (Super)',
				pt = 'Botas do Androide 17 (Super)',
			},
			icon = 'Item dragonminez a17_super_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:a17_super_armor_chestplate' ] = {
			name = {
				en = 'Android 17 Chestplate (Super)',
				es = 'Peto del Androide 17 (Super)',
				pt = 'Peitoral do Androide 17 (Super)',
			},
			icon = 'Item dragonminez a17_super_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:a17_super_armor_leggings' ] = {
			name = {
				en = 'Android 17 Leggings (Super)',
				es = 'Pantalones del Androide 17 (Super)',
				pt = 'Calças do Androide 17 (Super)',
			},
			icon = 'Item dragonminez a17_super_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:a18_armor_boots' ] = {
			name = {
				en = 'Red Ribbon Army Boots (Android 18)',
				es = 'Botas del Ejército Red Ribbon (Androide 18)',
				pt = 'Botas da Força Red Ribbon (Androide 18)',
			},
			icon = 'Item dragonminez a18_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_armor_chestplate' ] = {
			name = {
				en = 'Red Ribbon Army Chestplate (Android 18)',
				es = 'Peto del Ejército Red Ribbon (Androide 18)',
				pt = 'Peitoral da Força Red Ribbon (Androide 18)',
			},
			icon = 'Item dragonminez a18_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_armor_leggings' ] = {
			name = {
				en = 'Red Ribbon Army Leggings (Android 18)',
				es = 'Pantalones del Ejército Red Ribbon (Androide 18)',
				pt = 'Calças da Força Red Ribbon (Androide 18)',
			},
			icon = 'Item dragonminez a18_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_cell_armor_boots' ] = {
			name = {
				en = 'Android 18 Boots (Cell Saga)',
				es = 'Botas del Androide 18 (Saga de Cell)',
				pt = 'Botas da Androide 18 (Saga Cell)',
			},
			icon = 'Item dragonminez a18_cell_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_cell_armor_chestplate' ] = {
			name = {
				en = 'Android 18 Chestplate (Cell Saga)',
				es = 'Peto del Androide 18 (Saga de Cell)',
				pt = 'Peitoral da Androide 18 (Saga Cell)',
			},
			icon = 'Item dragonminez a18_cell_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_cell_armor_leggings' ] = {
			name = {
				en = 'Android 18 Leggings (Cell Saga)',
				es = 'Pantalones del Androide 18 (Saga de Cell)',
				pt = 'Calças da Androide 18 (Saga Cell)',
			},
			icon = 'Item dragonminez a18_cell_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_kame_armor_boots' ] = {
			name = {
				en = 'Android 18 Boots (Kame House)',
				es = 'Botas del Androide 18 (Casa Kame)',
				pt = 'Botas do Androide 18 (Casa do Kame)',
			},
			icon = 'Item dragonminez a18_kame_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_kame_armor_chestplate' ] = {
			name = {
				en = 'Android 18 Chestplate (Kame House)',
				es = 'Peto del Androide 18 (Casa Kame)',
				pt = 'Peitoral do Androide 18 (Casa do Kame)',
			},
			icon = 'Item dragonminez a18_kame_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_kame_armor_leggings' ] = {
			name = {
				en = 'Android 18 Leggings (Kame House)',
				es = 'Pantalones del Androide 18 (Casa Kame)',
				pt = 'Calças do Androide 18 (Casa do Kame)',
			},
			icon = 'Item dragonminez a18_kame_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_tournament_armor_boots' ] = {
			name = {
				en = 'Android 18 Boots (Tournament)',
				es = 'Botas del Androide 18 (Torneo)',
				pt = 'Botas da Androide 18 (Torneio)',
			},
			icon = 'Item dragonminez a18_tournament_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_tournament_armor_chestplate' ] = {
			name = {
				en = 'Android 18 Chestplate (Tournament)',
				es = 'Peto del Androide 18 (Torneo)',
				pt = 'Peitoral da Androide 18 (Torneio)',
			},
			icon = 'Item dragonminez a18_tournament_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a18_tournament_armor_leggings' ] = {
			name = {
				en = 'Android 18 Leggings (Tournament)',
				es = 'Pantalones del Androide 18 (Torneo)',
				pt = 'Calças da Androide 18 (Torneio)',
			},
			icon = 'Item dragonminez a18_tournament_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a20_armor_boots' ] = {
			name = {
				en = 'Red Ribbon Army Boots (Android 20)',
				es = 'Botas del Ejército Red Ribbon (Androide 20)',
				pt = 'Botas da Força Red Ribbon (Androide 20)',
			},
			icon = 'Item dragonminez a20_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a20_armor_chestplate' ] = {
			name = {
				en = 'Red Ribbon Army Chestplate (Android 20)',
				es = 'Peto del Ejército Red Ribbon (Androide 20)',
				pt = 'Capacete da Força Red Ribbon (Androide 20)',
			},
			icon = 'Item dragonminez a20_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a20_armor_helmet' ] = {
			name = {
				en = 'Red Ribbon Army Helmet (Android 20)',
				es = 'Casco del Ejército Red Ribbon (Androide 20)',
				pt = 'Capacete da Força Red Ribbon (Androide 20)',
			},
			icon = 'Item dragonminez a20_armor_helmet.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:a20_armor_leggings' ] = {
			name = {
				en = 'Red Ribbon Army Leggings (Android 20)',
				es = 'Pantalones del Ejército Red Ribbon (Androide 20)',
				pt = 'Calças da Força Red Ribbon (Androide 20)',
			},
			icon = 'Item dragonminez a20_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:adobe' ] = {
			name = {
				en = 'Adobe',
				es = 'Adobe',
				pt = 'Adobe',
			},
			icon = 'Item dragonminez adobe.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:adobe_bricks' ] = {
			name = {
				en = 'Adobe Bricks',
				es = 'Ladrillos de Adobe',
				pt = 'Tijolos de Adobe',
			},
			icon = 'Item dragonminez adobe_bricks.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:adobe_slab' ] = {
			name = {
				en = 'Adobe Slab',
				es = 'Losa de Adobe',
				pt = 'Laje de Adobe',
			},
			icon = 'Item dragonminez adobe_slab.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:adobe_stairs' ] = {
			name = {
				en = 'Adobe Stairs',
				es = 'Escaleras de Adobe',
				pt = 'Escadas de Adobe',
			},
			icon = 'Item dragonminez adobe_stairs.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:adobe_wall' ] = {
			name = {
				en = 'Adobe Wall',
				es = 'Muro de Adobe',
				pt = 'Muro de Adobe',
			},
			icon = 'Item dragonminez adobe_wall.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:age1000_armor_boots' ] = {
			name = {
				en = 'Capsule Corp Boots (Age 1000)',
				es = 'Botas Cápsula Corp. (Era 1000)',
				pt = 'Botas da Corporação Cápsula (Era 1000)',
			},
			icon = 'Item dragonminez age1000_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:age1000_armor_chestplate' ] = {
			name = {
				en = 'Capsule Corp Chestplate (Age 1000)',
				es = 'Peto Cápsula Corp. (Era 1000)',
				pt = 'Peitoral da Corporação Cápsula (Era 1000)',
			},
			icon = 'Item dragonminez age1000_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:age1000_armor_leggings' ] = {
			name = {
				en = 'Capsule Corp Leggings (Age 1000)',
				es = 'Pantalones Cápsula Corp. (Era 1000)',
				pt = 'Calças da Corporação Cápsula (Era 1000)',
			},
			icon = 'Item dragonminez age1000_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:armor_crafting_kit' ] = {
			name = {
				en = 'Armor Crafting Kit',
				es = 'Kit de Fabricación de Armaduras',
				pt = 'Kit de Fabricação de Armadura',
			},
			icon = 'Item dragonminez armor_crafting_kit.png',
			page = 'Armor',
		},
		[ 'dragonminez:aura_lily' ] = {
			name = {
				en = 'Aura Lily',
				es = 'Lirio de Aura',
				pt = 'Lírio de Aura',
			},
			icon = 'Item dragonminez aura_lily.png',
			page = 'Farming',
		},
		[ 'dragonminez:bardock_dbz_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Bardock - DBZ)',
				es = 'Botas de la Armadura Saiyajin (Bardock - DBZ)',
				pt = 'Botas da Armadura Saiyajin (Bardock - DBZ)',
			},
			icon = 'Item dragonminez bardock_dbz_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:bardock_dbz_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Bardock - DBZ)',
				es = 'Peto de la Armadura Saiyajin (Bardock - DBZ)',
				pt = 'Peitoral da Armadura Saiyajin (Bardock - DBZ)',
			},
			icon = 'Item dragonminez bardock_dbz_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:bardock_dbz_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Bardock - DBZ)',
				es = 'Pantalones de la Armadura Saiyajin (Bardock - DBZ)',
				pt = 'Calças da Armadura Saiyajin (Bardock - DBZ)',
			},
			icon = 'Item dragonminez bardock_dbz_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:bardock_super_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Bardock - DBSuper)',
				es = 'Botas de la Armadura Saiyajin (Bardock - DBSuper)',
				pt = 'Botas da Armadura Saiyajin (Bardock - Super)',
			},
			icon = 'Item dragonminez bardock_super_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:bardock_super_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Bardock - DBSuper)',
				es = 'Peto de la Armadura Saiyajin (Bardock - DBSuper)',
				pt = 'Peitoral da Armadura Saiyajin (Bardock - Super)',
			},
			icon = 'Item dragonminez bardock_super_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:bardock_super_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Bardock - DBSuper)',
				es = 'Pantalones de la Armadura Saiyajin (Bardock - DBSuper)',
				pt = 'Calças da Armadura Saiyajin (Bardock - Super)',
			},
			icon = 'Item dragonminez bardock_super_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:beerus_armor_boots' ] = {
			name = {
				en = 'God of Destruction Boots (Beerus)',
				es = 'Botas del Dios de la Destrucción (Beerus)',
				pt = 'Botas do Deus da Destruição (Bills)',
			},
			icon = 'Item dragonminez beerus_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:beerus_armor_chestplate' ] = {
			name = {
				en = 'God of Destruction Chestplate (Beerus)',
				es = 'Peto del Dios de la Destrucción (Beerus)',
				pt = 'Peitoral do Deus da Destruição (Bills)',
			},
			icon = 'Item dragonminez beerus_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:beerus_armor_leggings' ] = {
			name = {
				en = 'God of Destruction Leggings (Beerus)',
				es = 'Pantalones del Dios de la Destrucción (Beerus)',
				pt = 'Calças do Deus da Destruição (Bills)',
			},
			icon = 'Item dragonminez beerus_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:blackgoku_armor_boots' ] = {
			name = {
				en = 'Black Turtle Hermit School GI Boots (Black Goku)',
				es = 'Botas del Gi de la Escuela Tortuga Negra (Goku Negro)',
				pt = 'Botas do Uniforme Preto da Escola da Tartaruga (Black Goku)',
			},
			icon = 'Item dragonminez blackgoku_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:blackgoku_armor_chestplate' ] = {
			name = {
				en = 'Black Turtle Hermit School GI Chestplate (Black Goku)',
				es = 'Peto del Gi de la Escuela Tortuga Negra (Goku Negro)',
				pt = 'Peitoral do Uniforme Preto da Escola da Tartaruga (Black Goku)',
			},
			icon = 'Item dragonminez blackgoku_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:blackgoku_armor_leggings' ] = {
			name = {
				en = 'Black Turtle Hermit School GI Leggings (Black Goku)',
				es = 'Pantalones del Gi de la Escuela Tortuga Negra (Goku Negro)',
				pt = 'Calças do Uniforme Preto da Escola da Tartaruga (Black Goku)',
			},
			icon = 'Item dragonminez blackgoku_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:blank_pattern_super' ] = {
			name = {
				en = 'Blank Pattern (Super)',
				es = 'Patrón en Blanco (Super)',
				pt = 'Molde em Branco (Super)',
			},
			icon = 'Item dragonminez blank_pattern_super.png',
			page = 'Armor',
		},
		[ 'dragonminez:blank_pattern_z' ] = {
			name = {
				en = 'Blank Pattern (Z)',
				es = 'Patrón en Blanco (Z)',
				pt = 'Molde em Branco (Z)',
			},
			icon = 'Item dragonminez blank_pattern_z.png',
			page = 'Armor',
		},
		[ 'dragonminez:blue_capsule' ] = {
			name = {
				en = 'Blue Capsule',
				es = 'Blue Capsule',
				pt = 'Blue Capsule',
			},
			icon = 'Item dragonminez blue_capsule.png',
			page = 'Capsules',
		},
		[ 'dragonminez:blue_scouter' ] = {
			name = {
				en = 'Scouter (Blue)',
				es = 'Escáner (Azul)',
				pt = 'Scouter (Azul)',
			},
			icon = 'Item dragonminez blue_scouter.png',
			page = 'Scouters',
		},
		[ 'dragonminez:broly_super_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Broly)',
				es = 'Botas de la Armadura Saiyajin (Broly)',
				pt = 'Botas da Armadura Saiyajin (Broly)',
			},
			icon = 'Item dragonminez broly_super_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:broly_super_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Broly)',
				es = 'Peto de la Armadura Saiyajin (Broly)',
				pt = 'Peitoral da Armadura Saiyajin (Broly)',
			},
			icon = 'Item dragonminez broly_super_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:broly_super_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Broly)',
				es = 'Pantalones de la Armadura Saiyajin (Broly)',
				pt = 'Calças da Armadura Saiyajin (Broly)',
			},
			icon = 'Item dragonminez broly_super_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:broly_z_armor_boots' ] = {
			name = {
				en = 'Control Jewelry Set Boots (Broly)',
				es = 'Botas del Conjunto de Joyería de Control (Broly)',
				pt = 'Botas do Conjunto de Jóias de Controle (Broly)',
			},
			icon = 'Item dragonminez broly_z_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:broly_z_armor_chestplate' ] = {
			name = {
				en = 'Control Jewelry Set Chestplate (Broly)',
				es = 'Peto del Conjunto de Joyería de Control (Broly)',
				pt = 'Peitoral do Conjunto de Jóias de Controle (Broly)',
			},
			icon = 'Item dragonminez broly_z_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:broly_z_armor_leggings' ] = {
			name = {
				en = 'Control Jewelry Set Leggings (Broly)',
				es = 'Pantalones del Conjunto de Joyería de Control (Broly)',
				pt = 'Calças do Conjunto de Jóias de Controle (Broly)',
			},
			icon = 'Item dragonminez broly_z_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:capsule_corp_armor_boots' ] = {
			name = {
				en = 'Capsule Corp Boots',
				es = 'Botas Cápsula Corp.',
				pt = 'Botas da Corporação Cápsula',
			},
			icon = 'Item dragonminez capsule_corp_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:capsule_corp_armor_chestplate' ] = {
			name = {
				en = 'Capsule Corp Chestplate',
				es = 'Peto Cápsula Corp.',
				pt = 'Peitoral da Corporação Cápsula',
			},
			icon = 'Item dragonminez capsule_corp_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:capsule_corp_armor_leggings' ] = {
			name = {
				en = 'Capsule Corp Leggings',
				es = 'Pantalones Cápsula Corp.',
				pt = 'Calças da Corporação Cápsula',
			},
			icon = 'Item dragonminez capsule_corp_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:caulifla_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Caulifla)',
				es = 'Botas de la Armadura Saiyajin (Caulifla)',
				pt = 'Botas da Armadura Saiyajin (Caulifla)',
			},
			icon = 'Item dragonminez caulifla_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:caulifla_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Caulifla)',
				es = 'Peto de la Armadura Saiyajin (Caulifla)',
				pt = 'Peitoral da Armadura Saiyajin (Caulifla)',
			},
			icon = 'Item dragonminez caulifla_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:caulifla_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Caulifla)',
				es = 'Pantalones de la Armadura Saiyajin (Caulifla)',
				pt = 'Calças da Armadura Saiyajin (Caulifla)',
			},
			icon = 'Item dragonminez caulifla_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:chaoz_armor_boots' ] = {
			name = {
				en = 'Crane School GI Boots (Chaotzu)',
				es = 'Botas del Gi de la Escuela Grulla (Chaozu)',
				pt = 'Botas do Uniforme da Escola da Garça (Chaoz)',
			},
			icon = 'Item dragonminez chaoz_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:chaoz_armor_chestplate' ] = {
			name = {
				en = 'Crane School GI Chesptlate (Chaotzu)',
				es = 'Peto del Gi de la Escuela Grulla (Chaozu)',
				pt = 'Peitoral do Uniforme da Escola da Garça (Chaoz)',
			},
			icon = 'Item dragonminez chaoz_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:chaoz_armor_helmet' ] = {
			name = {
				en = 'Crane School GI Helmet (Chaotzu)',
				es = 'Casco del Gi de la Escuela Grulla (Chaozu)',
				pt = 'Capacete do Uniforme da Escola da Garça (Chaoz)',
			},
			icon = 'Item dragonminez chaoz_armor_helmet.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:chaoz_armor_leggings' ] = {
			name = {
				en = 'Crane School GI Leggings (Chaotzu)',
				es = 'Pantalones del Gi de la Escuela Grulla (Chaozu)',
				pt = 'Calças do Uniforme da Escola da Garça (Chaoz)',
			},
			icon = 'Item dragonminez chaoz_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:cooked_baby_dino_meat' ] = {
			name = {
				en = 'Cooked Baby Dino Meat',
				es = 'Carne Cocinada de Dinosaurio Bebé',
				pt = 'Carne de Dinossauro Bebê Cozida',
			},
			icon = 'Item dragonminez cooked_baby_dino_meat.png',
			page = 'Food',
		},
		[ 'dragonminez:cooked_dino_meat' ] = {
			name = {
				en = 'Cooked Dino Meat',
				es = 'Carne Cocinada de Dinosaurio',
				pt = 'Carne de Dinossauro Cozida',
			},
			icon = 'Item dragonminez cooked_dino_meat.png',
			page = 'Food',
		},
		[ 'dragonminez:cooler_soldier_armor_boots' ] = {
			name = {
				en = 'Cooler\'s Soldier Boots',
				es = 'Botas del Soldado de Cooler',
				pt = 'Botas do Soldado de Cooler',
			},
			icon = 'Item dragonminez cooler_soldier_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:cooler_soldier_armor_chestplate' ] = {
			name = {
				en = 'Cooler\'s Soldier Chestplate',
				es = 'Peto del Soldado de Cooler',
				pt = 'Peitoral do Soldado de Cooler',
			},
			icon = 'Item dragonminez cooler_soldier_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:cooler_soldier_armor_leggings' ] = {
			name = {
				en = 'Cooler\'s Soldier Leggings',
				es = 'Pantalones del Soldado de Cooler',
				pt = 'Calças do Soldado de Cooler',
			},
			icon = 'Item dragonminez cooler_soldier_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:dball_radar' ] = {
			name = {
				en = 'Dragon Radar (Earth)',
				es = 'Radar de Esferas del Dragón (Tierra)',
				pt = 'Radar do Dragão (Terra)',
			},
			icon = 'Item dragonminez dball_radar.png',
			page = 'Dragon Radar',
		},
		[ 'dragonminez:demon_brick_slab' ] = {
			name = {
				en = 'Demon Brick Slab',
				es = 'Losa de Ladrillos Demoníacos',
				pt = 'Laje de Tijolos Demoníacos',
			},
			icon = 'Item dragonminez demon_brick_slab.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:demon_brick_stairs' ] = {
			name = {
				en = 'Demon Brick Stairs',
				es = 'Escaleras de Ladrillos Demoníacos',
				pt = 'Escadas de Tijolos Demoníacos',
			},
			icon = 'Item dragonminez demon_brick_stairs.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:demon_brick_wall' ] = {
			name = {
				en = 'Demon Brick Wall',
				es = 'Muro de Ladrillos Demoníacos',
				pt = 'Muro de Tijolos Demoníacos',
			},
			icon = 'Item dragonminez demon_brick_wall.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:demon_bricks' ] = {
			name = {
				en = 'Demon Bricks',
				es = 'Ladrillos Demoníacos',
				pt = 'Tijolos Demoníacos',
			},
			icon = 'Item dragonminez demon_bricks.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:demon_gi_blue_armor_boots' ] = {
			name = {
				en = 'Demon GI Boots (Gohan)',
				es = 'Botas del Gi Demonio (Gohan)',
				pt = 'Botas do GI do Demônio (Gohan)',
			},
			icon = 'Item dragonminez demon_gi_blue_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:demon_gi_blue_armor_chestplate' ] = {
			name = {
				en = 'Demon GI Chestplate (Gohan)',
				es = 'Peto del Gi Demonio (Gohan)',
				pt = 'Peitoral do GI do Demônio (Gohan)',
			},
			icon = 'Item dragonminez demon_gi_blue_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:demon_gi_blue_armor_leggings' ] = {
			name = {
				en = 'Demon GI Leggings (Gohan)',
				es = 'Pantalones del Gi Demonio (Gohan)',
				pt = 'Calças do GI do Demônio (Gohan)',
			},
			icon = 'Item dragonminez demon_gi_blue_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:demon_rock' ] = {
			name = {
				en = 'Demon Rock',
				es = 'Roca Demoníaca',
				pt = 'Rocha Demoníaca',
			},
			icon = 'Item dragonminez demon_rock.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:dino_tail_cooked' ] = {
			name = {
				en = 'Cooked Dino Tail',
				es = 'Cola de Dinosaurio Cocinada',
				pt = 'Rabo de Dinossauro Cozido',
			},
			icon = 'Item dragonminez dino_tail_cooked.png',
			page = 'Food',
		},
		[ 'dragonminez:dino_tail_raw' ] = {
			name = {
				en = 'Raw Dino Tail',
				es = 'Cola de Dinosaurio Cruda',
				pt = 'Rabo de Dinossauro Cru',
			},
			icon = 'Item dragonminez dino_tail_raw.png',
			page = 'Dinosaurs',
		},
		[ 'dragonminez:dragon_clan_armor_boots' ] = {
			name = {
				en = 'DBOnline Boots (Dragon)',
				es = 'Botas DBOnline (Dragón)',
				pt = 'Botas do Online (Dragão)',
			},
			icon = 'Item dragonminez dragon_clan_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:dragon_clan_armor_chestplate' ] = {
			name = {
				en = 'DBOnline Chestplate (Dragon)',
				es = 'Peto DBOnline (Dragón)',
				pt = 'Peitoral do Online (Dragão)',
			},
			icon = 'Item dragonminez dragon_clan_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:dragon_clan_armor_leggings' ] = {
			name = {
				en = 'DBOnline Leggings (Dragon)',
				es = 'Pantalones DBOnline (Dragón)',
				pt = 'Calças do Online (Dragão)',
			},
			icon = 'Item dragonminez dragon_clan_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:empty_capsule' ] = {
			name = {
				en = 'Empty Capsule',
				es = 'Cápsula Vacía',
				pt = 'Cápsula Vazia',
			},
			icon = 'Item dragonminez empty_capsule.png',
			page = 'Capsules',
		},
		[ 'dragonminez:energy_cable' ] = {
			name = {
				en = 'Energy Cable',
				es = 'Cable de Energía',
				pt = 'Cabo de Energia',
			},
			icon = 'Item dragonminez energy_cable.png',
			page = 'Armor',
		},
		[ 'dragonminez:evil_buu_armor_boots' ] = {
			name = {
				en = 'Majin Boots (Evil Buu)',
				es = 'Botas Majin (Buu Maligno)',
				pt = 'Botas Majin (Boo Maligno)',
			},
			icon = 'Item dragonminez evil_buu_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:evil_buu_armor_chestplate' ] = {
			name = {
				en = 'Majin Chestplate (Evil Buu)',
				es = 'Peto Majin (Buu Maligno)',
				pt = 'Peitoral Majin (Boo Maligno)',
			},
			icon = 'Item dragonminez evil_buu_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:evil_buu_armor_leggings' ] = {
			name = {
				en = 'Majin Leggings (Evil Buu)',
				es = 'Pantalones Majin (Buu Maligno)',
				pt = 'Calças Majin (Boo Maligno)',
			},
			icon = 'Item dragonminez evil_buu_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:fighter_armor_boots' ] = {
			name = {
				en = 'DBOnline Boots (Fighter)',
				es = 'Botas DBOnline (Luchador)',
				pt = 'Botas do Online (Lutador)',
			},
			icon = 'Item dragonminez fighter_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:fighter_armor_chestplate' ] = {
			name = {
				en = 'DBOnline Chestplate (Fighter)',
				es = 'Peto DBOnline (Luchador)',
				pt = 'Peitoral do Online (Lutador)',
			},
			icon = 'Item dragonminez fighter_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:fighter_armor_leggings' ] = {
			name = {
				en = 'DBOnline Leggings (Fighter)',
				es = 'Pantalones DBOnline (Luchador)',
				pt = 'Calças do Online (Lutador)',
			},
			icon = 'Item dragonminez fighter_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:frog_legs_cooked' ] = {
			name = {
				en = 'Cooked Frog Legs',
				es = 'Ancas de Rana Cocinadas',
				pt = 'Coxas de Sapo Cozidas',
			},
			icon = 'Item dragonminez frog_legs_cooked.png',
			page = 'Food',
		},
		[ 'dragonminez:frog_legs_raw' ] = {
			name = {
				en = 'Raw Frog Legs',
				es = 'Ancas de Rana Crudas',
				pt = 'Coxas de Sapo Cruas',
			},
			icon = 'Item dragonminez frog_legs_raw.png',
			page = 'Food',
		},
		[ 'dragonminez:fuel_generator' ] = {
			name = {
				en = 'Fuel Generator',
				es = 'Generador de Combustible',
				pt = 'Gerador de Combustível',
			},
			icon = 'Item dragonminez fuel_generator.png',
			page = 'Armor',
		},
		[ 'dragonminez:fusion_zamasu_armor_boots' ] = {
			name = {
				en = 'Kaioshin Boots (Fused Zamasu)',
				es = 'Botas de Kaioshin (Zamasu Fusionado)',
				pt = 'Botas Kaioshin (Zamasu Fundido)',
			},
			icon = 'Item dragonminez fusion_zamasu_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:fusion_zamasu_armor_chestplate' ] = {
			name = {
				en = 'Kaioshin Chestplate (Fused Zamasu)',
				es = 'Peto de Kaioshin (Zamasu Fusionado)',
				pt = 'Peitoral Kaioshin (Zamasu Fundido)',
			},
			icon = 'Item dragonminez fusion_zamasu_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:fusion_zamasu_armor_leggings' ] = {
			name = {
				en = 'Kaioshin Leggings (Fused Zamasu)',
				es = 'Pantalones de Kaioshin (Zamasu Fusionado)',
				pt = 'Calças Kaioshin (Zamasu Fundido)',
			},
			icon = 'Item dragonminez fusion_zamasu_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:future_gohan_armor_boots' ] = {
			name = {
				en = 'Turtle Hermit School GI Boots (Future Gohan)',
				es = 'Botas del Gi de la Escuela Tortuga (Gohan del Futuro)',
				pt = 'Botas do Uniforme da Escola da Tartaruga (Gohan do Futuro)',
			},
			icon = 'Item dragonminez future_gohan_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:future_gohan_armor_chestplate' ] = {
			name = {
				en = 'Turtle Hermit School GI Chestplate (Future Gohan)',
				es = 'Peto del Gi de la Escuela Tortuga (Gohan del Futuro)',
				pt = 'Peitoral do Uniforme da Escola da Tartaruga (Gohan do Futuro)',
			},
			icon = 'Item dragonminez future_gohan_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:future_gohan_armor_leggings' ] = {
			name = {
				en = 'Turtle Hermit School GI Leggings (Future Gohan)',
				es = 'Pantalones del Gi de la Escuela Tortuga (Gohan del Futuro)',
				pt = 'Calças do Uniforme da Escola da Tartaruga (Gohan do Futuro)',
			},
			icon = 'Item dragonminez future_gohan_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:gamma1_armor_boots' ] = {
			name = {
				en = 'Red Ribbon Army Boots (Gamma 1)',
				es = 'Botas del Ejército Red Ribbon (Gamma 1)',
				pt = 'Botas da Força Red Ribbon (Gamma 1)',
			},
			icon = 'Item dragonminez gamma1_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gamma1_armor_chestplate' ] = {
			name = {
				en = 'Red Ribbon Army Chestplate (Gamma 1)',
				es = 'Peto del Ejército Red Ribbon (Gamma 1)',
				pt = 'Peitoral da Força Red Ribbon (Gamma 1)',
			},
			icon = 'Item dragonminez gamma1_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gamma1_armor_leggings' ] = {
			name = {
				en = 'Red Ribbon Army Leggings (Gamma 1)',
				es = 'Pantalones del Ejército Red Ribbon (Gamma 1)',
				pt = 'Calças da Força Red Ribbon (Gamma 1)',
			},
			icon = 'Item dragonminez gamma1_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gamma2_armor_boots' ] = {
			name = {
				en = 'Red Ribbon Army Boots (Gamma 2)',
				es = 'Botas del Ejército Red Ribbon (Gamma 2)',
				pt = 'Botas da Força Red Ribbon (Gamma 2)',
			},
			icon = 'Item dragonminez gamma2_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gamma2_armor_chestplate' ] = {
			name = {
				en = 'Red Ribbon Army Chestplate (Gamma 2)',
				es = 'Peto del Ejército Red Ribbon (Gamma 2)',
				pt = 'Peitoral da Força Red Ribbon (Gamma 2)',
			},
			icon = 'Item dragonminez gamma2_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gamma2_armor_leggings' ] = {
			name = {
				en = 'Red Ribbon Army Leggings (Gamma 2)',
				es = 'Pantalones del Ejército Red Ribbon (Gamma 2)',
				pt = 'Calças da Força Red Ribbon (Gamma 2)',
			},
			icon = 'Item dragonminez gamma2_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gas_armor_boots' ] = {
			name = {
				en = 'Heata Family Boots (Gas)',
				es = 'Botas de la Familia Heata (Gas)',
				pt = 'Botas da Família Heata (Gas)',
			},
			icon = 'Item dragonminez gas_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gas_armor_chestplate' ] = {
			name = {
				en = 'Heata Family Chestplate (Gas)',
				es = 'Peto de la Familia Heata (Gas)',
				pt = 'Peitoral da Família Heata (Gas)',
			},
			icon = 'Item dragonminez gas_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gas_armor_leggings' ] = {
			name = {
				en = 'Heata Family Leggings (Gas)',
				es = 'Pantalones de la Familia Heata (Gas)',
				pt = 'Calças da Família Heata (Gas)',
			},
			icon = 'Item dragonminez gas_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gero_armor_boots' ] = {
			name = {
				en = 'Red Ribbon Army Boots (Dr. Gero)',
				es = 'Botas del Ejército Red Ribbon (Dr. Gero)',
				pt = 'Botas da Força Red Ribbon (Dr. Gero)',
			},
			icon = 'Item dragonminez gero_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:gero_armor_chestplate' ] = {
			name = {
				en = 'Red Ribbon Army Chestplate (Dr. Gero)',
				es = 'Peto del Ejército Red Ribbon (Dr. Gero)',
				pt = 'Peitoral da Força Red Ribbon (Dr. Gero)',
			},
			icon = 'Item dragonminez gero_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:gero_armor_leggings' ] = {
			name = {
				en = 'Red Ribbon Army Leggings (Dr. Gero)',
				es = 'Pantalones del Ejército Red Ribbon (Dr. Gero)',
				pt = 'Calças da Força Red Ribbon (Dr. Gero)',
			},
			icon = 'Item dragonminez gero_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:gete_axe' ] = {
			name = {
				en = 'Gete Axe',
				es = 'Hacha Gete',
				pt = 'Machado de Gete',
			},
			icon = 'Item dragonminez gete_axe.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_block' ] = {
			name = {
				en = 'Gete Block',
				es = 'Bloque Gete',
				pt = 'Bloco de Gete',
			},
			icon = 'Item dragonminez gete_block.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_blue_capsule' ] = {
			name = {
				en = 'Gete Blue Capsule',
				es = 'Gete Blue Capsule',
				pt = 'Gete Blue Capsule',
			},
			icon = 'Item dragonminez gete_blue_capsule.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_debris_ore' ] = {
			name = {
				en = 'Gete Debris',
				es = 'Escombros Gete',
				pt = 'Detritos de Gete',
			},
			icon = 'Item dragonminez gete_debris_ore.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_green_capsule' ] = {
			name = {
				en = 'Gete Green Capsule',
				es = 'Gete Green Capsule',
				pt = 'Gete Green Capsule',
			},
			icon = 'Item dragonminez gete_green_capsule.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_hoe' ] = {
			name = {
				en = 'Gete Hoe',
				es = 'Azada Gete',
				pt = 'Enxada de Gete',
			},
			icon = 'Item dragonminez gete_hoe.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_ingot' ] = {
			name = {
				en = 'Gete Ingot',
				es = 'Lingote Gete',
				pt = 'Lingote de Gete',
			},
			icon = 'Item dragonminez gete_ingot.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_orange_capsule' ] = {
			name = {
				en = 'Gete Orange Capsule',
				es = 'Gete Orange Capsule',
				pt = 'Gete Orange Capsule',
			},
			icon = 'Item dragonminez gete_orange_capsule.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_pickaxe' ] = {
			name = {
				en = 'Gete Pickaxe',
				es = 'Pico Gete',
				pt = 'Picareta de Gete',
			},
			icon = 'Item dragonminez gete_pickaxe.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_purple_capsule' ] = {
			name = {
				en = 'Gete Purple Capsule',
				es = 'Gete Purple Capsule',
				pt = 'Gete Purple Capsule',
			},
			icon = 'Item dragonminez gete_purple_capsule.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_red_capsule' ] = {
			name = {
				en = 'Gete Red Capsule',
				es = 'Gete Red Capsule',
				pt = 'Gete Red Capsule',
			},
			icon = 'Item dragonminez gete_red_capsule.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_scrap' ] = {
			name = {
				en = 'Gete Scrap',
				es = 'Chatarra Gete',
				pt = 'Sucata de Gete',
			},
			icon = 'Item dragonminez gete_scrap.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_shovel' ] = {
			name = {
				en = 'Gete Shovel',
				es = 'Pala Gete',
				pt = 'Pá de Gete',
			},
			icon = 'Item dragonminez gete_shovel.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:gete_yellow_capsule' ] = {
			name = {
				en = 'Gete Yellow Capsule',
				es = 'Gete Yellow Capsule',
				pt = 'Gete Yellow Capsule',
			},
			icon = 'Item dragonminez gete_yellow_capsule.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:giant_fish_cooked' ] = {
			name = {
				en = 'Cooked Giant Fish',
				es = 'Pez Gigante Cocinado',
				pt = 'Peixe Gigante Cozido',
			},
			icon = 'Item dragonminez giant_fish_cooked.png',
			page = 'Food',
		},
		[ 'dragonminez:giant_fish_raw' ] = {
			name = {
				en = 'Raw Giant Fish',
				es = 'Pez Gigante Crudo',
				pt = 'Peixe Gigante Cru',
			},
			icon = 'Item dragonminez giant_fish_raw.png',
			page = 'Giant Fish',
		},
		[ 'dragonminez:giant_turtle_cooked' ] = {
			name = {
				en = 'Cooked Giant Turtle',
				es = 'Tortuga Gigante Cocinada',
				pt = 'Tartaruga Gigante Cozida',
			},
			icon = 'Item dragonminez giant_turtle_cooked.png',
			page = 'Food',
		},
		[ 'dragonminez:giant_turtle_raw' ] = {
			name = {
				en = 'Raw Giant Turtle',
				es = 'Tortuga Gigante Cruda',
				pt = 'Tartaruga Gigante Crua',
			},
			icon = 'Item dragonminez giant_turtle_raw.png',
			page = 'Giant Turtle',
		},
		[ 'dragonminez:gine_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Gine)',
				es = 'Botas de la Armadura Saiyajin (Gine)',
				pt = 'Botas da Armadura Saiyajin (Gine)',
			},
			icon = 'Item dragonminez gine_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:gine_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Gine)',
				es = 'Peto de la Armadura Saiyajin (Gine)',
				pt = 'Peitoral da Armadura Saiyajin (Gine)',
			},
			icon = 'Item dragonminez gine_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:gine_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Gine)',
				es = 'Pantalones de la Armadura Saiyajin (Gine)',
				pt = 'Calças da Armadura Saiyajin (Gine)',
			},
			icon = 'Item dragonminez gine_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:gogeta_armor_boots' ] = {
			name = {
				en = 'Metamoran Suit Boots (Gogeta)',
				es = 'Botas del Traje Metamoru (Gogeta)',
				pt = 'Botas do Traje Metamor (Gogeta)',
			},
			icon = 'Item dragonminez gogeta_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gogeta_armor_chestplate' ] = {
			name = {
				en = 'Metamoran Suit Chestplate (Gogeta)',
				es = 'Peto del Traje Metamoru (Gogeta)',
				pt = 'Peitoral do Traje Metamor (Gogeta)',
			},
			icon = 'Item dragonminez gogeta_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gogeta_armor_leggings' ] = {
			name = {
				en = 'Metamoran Suit Leggings (Gogeta)',
				es = 'Pantalones del Traje Metamoru (Gogeta)',
				pt = 'Calças do Traje Metamor (Gogeta)',
			},
			icon = 'Item dragonminez gogeta_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gohan_super_armor_boots' ] = {
			name = {
				en = 'Demon GI Boots (Gohan - Super)',
				es = 'Botas del Gi Demonio (Gohan - Super)',
				pt = 'Botas do GI do Demônio (Gohan - Super)',
			},
			icon = 'Item dragonminez gohan_super_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gohan_super_armor_chestplate' ] = {
			name = {
				en = 'Demon GI Chestplate (Gohan - Super)',
				es = 'Peto del Gi Demonio (Gohan - Super)',
				pt = 'Peitoral do GI do Demônio (Gohan - Super)',
			},
			icon = 'Item dragonminez gohan_super_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gohan_super_armor_leggings' ] = {
			name = {
				en = 'Demon GI Leggings (Gohan - Super)',
				es = 'Pantalones del Gi Demonio (Gohan - Super)',
				pt = 'Calças do GI do Demônio (Gohan - Super)',
			},
			icon = 'Item dragonminez gohan_super_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:goku_armor_boots' ] = {
			name = {
				en = 'Turtle Hermit School GI Boots (Goku)',
				es = 'Botas del Gi de la Escuela Tortuga (Goku)',
				pt = 'Botas do Uniforme da Escola da Tartaruga (Goku)',
			},
			icon = 'Item dragonminez goku_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goku_armor_chestplate' ] = {
			name = {
				en = 'Turtle Hermit School GI Chestplate (Goku)',
				es = 'Peto del Gi de la Escuela Tortuga (Goku)',
				pt = 'Peitoral do Uniforme da Escola da Tartaruga (Goku)',
			},
			icon = 'Item dragonminez goku_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goku_armor_leggings' ] = {
			name = {
				en = 'Turtle Hermit School GI Leggings (Goku)',
				es = 'Pantalones del Gi de la Escuela Tortuga (Goku)',
				pt = 'Calças do Uniforme da Escola da Tartaruga (Goku)',
			},
			icon = 'Item dragonminez goku_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goku_gt_armor_boots' ] = {
			name = {
				en = 'Blue Master GI Boots (Goku - GT)',
				es = 'Botas del Gi del Maestro Azul (Goku - GT)',
				pt = 'Botas do Uniforme Azul do Mestre (Goku - GT)',
			},
			icon = 'Item dragonminez goku_gt_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goku_gt_armor_chestplate' ] = {
			name = {
				en = 'Blue Master GI Chestplate (Goku - GT)',
				es = 'Peto del Gi del Maestro Azul (Goku - GT)',
				pt = 'Peitoral do Uniforme Azul do Mestre (Goku - GT)',
			},
			icon = 'Item dragonminez goku_gt_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goku_gt_armor_leggings' ] = {
			name = {
				en = 'Blue Master GI Leggings (Goku - GT)',
				es = 'Pantalones del Gi del Maestro Azul (Goku - GT)',
				pt = 'Calças do Uniforme Azul do Mestre (Goku - GT)',
			},
			icon = 'Item dragonminez goku_gt_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goku_kid_armor_boots' ] = {
			name = {
				en = 'Red Turtle Hermit School GI Boots (Goku - Kid)',
				es = 'Botas del Gi de la Escuela Tortuga Roja (Goku - Niño)',
				pt = 'Botas do Uniforme Vermelho da Escola da Tartaruga (Goku - Kid)',
			},
			icon = 'Item dragonminez goku_kid_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goku_kid_armor_chestplate' ] = {
			name = {
				en = 'Red Turtle Hermit School GI Chestplate (Goku - Kid)',
				es = 'Peto del Gi de la Escuela Tortuga Roja (Goku - Niño)',
				pt = 'Peitoral do Uniforme Vermelho da Escola da Tartaruga (Goku - Kid)',
			},
			icon = 'Item dragonminez goku_kid_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goku_kid_armor_leggings' ] = {
			name = {
				en = 'Red Turtle Hermit School GI Leggings (Goku - Kid)',
				es = 'Pantalones del Gi de la Escuela Tortuga Roja (Goku - Niño)',
				pt = 'Calças do Uniforme Vermelho da Escola da Tartaruga (Goku - Kid)',
			},
			icon = 'Item dragonminez goku_kid_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goku_super_armor_boots' ] = {
			name = {
				en = 'Turtle Hermit School GI Boots (Goku - Super)',
				es = 'Botas del Gi de la Escuela Tortuga (Goku - Super)',
				pt = 'Botas do Uniforme da Escola da Tartaruga (Goku - Super)',
			},
			icon = 'Item dragonminez goku_super_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:goku_super_armor_chestplate' ] = {
			name = {
				en = 'Turtle Hermit School GI Chestplate (Goku - Super)',
				es = 'Peto del Gi de la Escuela Tortuga (Goku - Super)',
				pt = 'Peitoral do Uniforme da Escola da Tartaruga (Goku - Super)',
			},
			icon = 'Item dragonminez goku_super_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:goku_super_armor_leggings' ] = {
			name = {
				en = 'Turtle Hermit School GI Leggings (Goku - Super)',
				es = 'Pantalones del Gi de la Escuela Tortuga (Goku - Super)',
				pt = 'Calças do Uniforme da Escola da Tartaruga (Goku - Super)',
			},
			icon = 'Item dragonminez goku_super_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:goku_whis_armor_boots' ] = {
			name = {
				en = 'Whis Symbol GI Boots (Goku)',
				es = 'Botas del Gi con Símbolo Whis (Goku)',
				pt = 'Botas do Uniforme com Símbolo de Whis (Goku)',
			},
			icon = 'Item dragonminez goku_whis_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:goku_whis_armor_chestplate' ] = {
			name = {
				en = 'Whis Symbol GI Chestplate (Goku)',
				es = 'Peto del Gi con Símbolo Whis (Goku)',
				pt = 'Peitoral do Uniforme com Símbolo de Whis (Goku)',
			},
			icon = 'Item dragonminez goku_whis_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:goku_whis_armor_leggings' ] = {
			name = {
				en = 'Whis Symbol GI Leggings (Goku)',
				es = 'Pantalones del Gi con Símbolo Whis (Goku)',
				pt = 'Calças do Uniforme com Símbolo de Whis (Goku)',
			},
			icon = 'Item dragonminez goku_whis_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:goten_armor_boots' ] = {
			name = {
				en = 'Turtle Hermit School GI Boots (Goten)',
				es = 'Botas del Gi de la Escuela Tortuga (Goten)',
				pt = 'Botas do Uniforme da Escola da Tartaruga (Goten)',
			},
			icon = 'Item dragonminez goten_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goten_armor_chestplate' ] = {
			name = {
				en = 'Turtle Hermit School GI Chesplate (Goten)',
				es = 'Peto del Gi de la Escuela Tortuga (Goten)',
				pt = 'Peitoral do Uniforme da Escola da Tartaruga (Goten)',
			},
			icon = 'Item dragonminez goten_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goten_armor_leggings' ] = {
			name = {
				en = 'Turtle Hermit School GI Leggings (Goten)',
				es = 'Pantalones del Gi de la Escuela Tortuga (Goten)',
				pt = 'Calças do Uniforme da Escola da Tartaruga (Goten)',
			},
			icon = 'Item dragonminez goten_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:goten_super_armor_boots' ] = {
			name = {
				en = 'Green Jacket Outfit Boots (Goten - Super)',
				es = 'Botas Chaqueta Verde (Goten - Super)',
				pt = 'Botas do Conjunto de Jaqueta Verde (Goten - Super)',
			},
			icon = 'Item dragonminez goten_super_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:goten_super_armor_chestplate' ] = {
			name = {
				en = 'Green Jacket Outfit (Goten - Super)',
				es = 'Traje Chaqueta Verde (Goten - Super)',
				pt = 'Conjunto de Jaqueta Verde (Goten - Super)',
			},
			icon = 'Item dragonminez goten_super_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:goten_super_armor_leggings' ] = {
			name = {
				en = 'Green Jacket Outfit Leggings (Goten - Super)',
				es = 'Pantalones Chaqueta Verde (Goten - Super)',
				pt = 'Calças do Conjunto de Jaqueta Verde (Goten - Super)',
			},
			icon = 'Item dragonminez goten_super_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:granola_armor_boots' ] = {
			name = {
				en = 'Cereal Armor Boots (Granolah)',
				es = 'Botas de la Armadura Cerealiana (Granolah)',
				pt = 'Botas da Armadura Cerealiana (Granolah)',
			},
			icon = 'Item dragonminez granola_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:granola_armor_chestplate' ] = {
			name = {
				en = 'Cereal Armor Chestplate (Granolah)',
				es = 'Peto de la Armadura Cerealiana (Granolah)',
				pt = 'Peitoral da Armadura Cerealiana (Granolah)',
			},
			icon = 'Item dragonminez granola_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:granola_armor_leggings' ] = {
			name = {
				en = 'Cereal Armor Leggings (Granolah)',
				es = 'Pantalones de la Armadura Cerealiana (Granolah)',
				pt = 'Calças da Armadura Cerealiana (Granolah)',
			},
			icon = 'Item dragonminez granola_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:gravity_device' ] = {
			name = {
				en = 'Gravity Device',
				es = 'Dispositivo de Gravedad',
				pt = 'Dispositivo de Gravidade',
			},
			icon = 'Item dragonminez gravity_device.png',
			page = 'Gravity Device',
		},
		[ 'dragonminez:great_saiyaman_2_armor_boots' ] = {
			name = {
				en = 'Hero of Justice 2 Boots (Great Saiyaman 2)',
				es = 'Botas del Héroe de la Justicia 2 (Gran Saiyaman 2)',
				pt = 'Botas do Herói da Justiça 2 (Grande Saiyaman 2)',
			},
			icon = 'Item dragonminez great_saiyaman_2_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:great_saiyaman_2_armor_chestplate' ] = {
			name = {
				en = 'Hero of Justice 2 Chestplate (Great Saiyaman 2)',
				es = 'Peto del Héroe de la Justicia 2 (Gran Saiyaman 2)',
				pt = 'Peitoral do Herói da Justiça 2 (Grande Saiyaman 2)',
			},
			icon = 'Item dragonminez great_saiyaman_2_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:great_saiyaman_2_armor_helmet' ] = {
			name = {
				en = 'Hero of Justice 2 Helmet (Great Saiyaman 2)',
				es = 'Casco del Héroe de la Justicia 2 (Gran Saiyaman 2)',
				pt = 'Capacete do Herói da Justiça 2 (Grande Saiyaman 2)',
			},
			icon = 'Item dragonminez great_saiyaman_2_armor_helmet.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:great_saiyaman_2_armor_leggings' ] = {
			name = {
				en = 'Hero of Justice 2 Leggings (Great Saiyaman 2)',
				es = 'Pantalones del Héroe de la Justicia 2 (Gran Saiyaman 2)',
				pt = 'Calças do Herói da Justiça 2 (Grande Saiyaman 2)',
			},
			icon = 'Item dragonminez great_saiyaman_2_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:great_saiyaman_armor_boots' ] = {
			name = {
				en = 'Hero of Justice Boots (Great Saiyaman)',
				es = 'Botas del Héroe de la Justicia (Gran Saiyaman)',
				pt = 'Botas do Herói da Justiça (Grande Saiyaman)',
			},
			icon = 'Item dragonminez great_saiyaman_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:great_saiyaman_armor_chestplate' ] = {
			name = {
				en = 'Hero of Justice Chestplate (Great Saiyaman)',
				es = 'Peto del Héroe de la Justicia (Gran Saiyaman)',
				pt = 'Peitoral do Herói da Justiça (Grande Saiyaman)',
			},
			icon = 'Item dragonminez great_saiyaman_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:great_saiyaman_armor_helmet' ] = {
			name = {
				en = 'Hero of Justice Helmet (Great Saiyaman)',
				es = 'Casco del Héroe de la Justicia (Gran Saiyaman)',
				pt = 'Capacete do Herói da Justiça (Grande Saiyaman)',
			},
			icon = 'Item dragonminez great_saiyaman_armor_helmet.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:great_saiyaman_armor_leggings' ] = {
			name = {
				en = 'Hero of Justice Leggings (Great Saiyaman)',
				es = 'Pantalones del Héroe de la Justicia (Gran Saiyaman)',
				pt = 'Calças do Herói da Justiça (Grande Saiyaman)',
			},
			icon = 'Item dragonminez great_saiyaman_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:green_capsule' ] = {
			name = {
				en = 'Green Capsule',
				es = 'Green Capsule',
				pt = 'Green Capsule',
			},
			icon = 'Item dragonminez green_capsule.png',
			page = 'Capsules',
		},
		[ 'dragonminez:green_scouter' ] = {
			name = {
				en = 'Scouter (Green)',
				es = 'Escáner (Verde)',
				pt = 'Scouter (Verde)',
			},
			icon = 'Item dragonminez green_scouter.png',
			page = 'Scouters',
		},
		[ 'dragonminez:healing_liquid_bucket' ] = {
			name = {
				en = 'Healing Liquid Bucket',
				es = 'Cubo de Líquido Curativo',
				pt = 'Balde de Líquido de Cura',
			},
			icon = 'Item dragonminez healing_liquid_bucket.png',
			page = 'Farming',
		},
		[ 'dragonminez:heart_medicine' ] = {
			name = {
				en = 'Heart Medicine',
				es = 'Medicina para el Corazón',
				pt = 'Remédio Cardíaco',
			},
			icon = 'Item dragonminez heart_medicine.png',
			page = 'Heart Medicine',
		},
		[ 'dragonminez:hermit_fern' ] = {
			name = {
				en = 'Hermit\'s Fern',
				es = 'Helecho del Ermitaño',
				pt = 'Samambaia do Eremita',
			},
			icon = 'Item dragonminez hermit_fern.png',
			page = 'Farming',
		},
		[ 'dragonminez:hit_armor_boots' ] = {
			name = {
				en = 'Assassin Boots (Hit)',
				es = 'Botas del Asesino (Hit)',
				pt = 'Botas do Assassino (Hit)',
			},
			icon = 'Item dragonminez hit_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:hit_armor_chestplate' ] = {
			name = {
				en = 'Assassin Chestplate (Hit)',
				es = 'Peto del Asesino (Hit)',
				pt = 'Peitoral do Assassino (Hit)',
			},
			icon = 'Item dragonminez hit_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:hit_armor_leggings' ] = {
			name = {
				en = 'Assassin Leggings (Hit)',
				es = 'Pantalones del Asesino (Hit)',
				pt = 'Calças do Assassino (Hit)',
			},
			icon = 'Item dragonminez hit_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:kaioshin_fruit' ] = {
			name = {
				en = 'Kaioshin Fruit',
				es = 'Fruta Kaioshin',
				pt = 'Fruta Kaioshin',
			},
			icon = 'Item dragonminez kaioshin_fruit.png',
			page = 'Farming',
		},
		[ 'dragonminez:kale_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Kale)',
				es = 'Botas de la Armadura Saiyajin (Kale)',
				pt = 'Botas da Armadura Saiyajin (Kale)',
			},
			icon = 'Item dragonminez kale_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:kale_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Kale)',
				es = 'Peto de la Armadura Saiyajin (Kale)',
				pt = 'Peitoral da Armadura Saiyajin (Kale)',
			},
			icon = 'Item dragonminez kale_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:kale_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Kale)',
				es = 'Pantalones de la Armadura Saiyajin (Kale)',
				pt = 'Calças da Armadura Saiyajin (Kale)',
			},
			icon = 'Item dragonminez kale_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:katchin_sprout' ] = {
			name = {
				en = 'Katchin Sprout',
				es = 'Brote de Katchin',
				pt = 'Broto de Katchin',
			},
			icon = 'Item dragonminez katchin_sprout.png',
			page = 'Farming',
		},
		[ 'dragonminez:kefla_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Kefla)',
				es = 'Botas de la Armadura Saiyajin (Kefla)',
				pt = 'Botas da Armadura Saiyajin (Kefla)',
			},
			icon = 'Item dragonminez kefla_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:kefla_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Kefla)',
				es = 'Peto de la Armadura Saiyajin (Kefla)',
				pt = 'Peitoral da Armadura Saiyajin (Kefla)',
			},
			icon = 'Item dragonminez kefla_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:kefla_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Kefla)',
				es = 'Pantalones de la Armadura Saiyajin (Kefla)',
				pt = 'Calças da Armadura Saiyajin (Kefla)',
			},
			icon = 'Item dragonminez kefla_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:ki_battery' ] = {
			name = {
				en = 'Ki Battery',
				es = 'Acumulador de Ki',
				pt = 'Bateria de Ki',
			},
			icon = 'Item dragonminez ki_battery.png',
			page = 'Ki Battery',
		},
		[ 'dragonminez:kibito_armor_boots' ] = {
			name = {
				en = 'Kaioshin Boots (Kibito)',
				es = 'Botas de Kaioshin (Kibito)',
				pt = 'Botas Kaioshin (Kibito)',
			},
			icon = 'Item dragonminez kibito_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:kibito_armor_chestplate' ] = {
			name = {
				en = 'Kaioshin Chestplate (Kibito)',
				es = 'Peto de Kaioshin (Kibito)',
				pt = 'Peitoral Kaioshin (Kibito)',
			},
			icon = 'Item dragonminez kibito_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:kibito_armor_leggings' ] = {
			name = {
				en = 'Kaioshin Leggings (Kibito)',
				es = 'Pantalones de Kaioshin (Kibito)',
				pt = 'Calças Kaioshin (Kibito)',
			},
			icon = 'Item dragonminez kibito_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:kikono_block' ] = {
			name = {
				en = 'Kikono Block',
				es = 'Bloque de Kikono',
				pt = 'Bloco de Kikono',
			},
			icon = 'Item dragonminez kikono_block.png',
			page = 'Kikono Materials',
		},
		[ 'dragonminez:kikono_cloth' ] = {
			name = {
				en = 'Kikono Cloth',
				es = 'Tela de Kikono',
				pt = 'Tecido de Kikono',
			},
			icon = 'Item dragonminez kikono_cloth.png',
			page = 'Kikono Materials',
		},
		[ 'dragonminez:kikono_shard' ] = {
			name = {
				en = 'Kikono Shard',
				es = 'Fragmento de Kikono',
				pt = 'Fragmento de Kikono',
			},
			icon = 'Item dragonminez kikono_shard.png',
			page = 'Kikono Materials',
		},
		[ 'dragonminez:kikono_station' ] = {
			name = {
				en = 'Dr. Kikono\'s Station',
				es = 'Estación del Dr. Kikono',
				pt = 'Estação do Dr. Kikono',
			},
			icon = 'Item dragonminez kikono_station.png',
			page = 'Armor',
		},
		[ 'dragonminez:kikono_stick' ] = {
			name = {
				en = 'Kikono Stick',
				es = 'Palillo de Kikono',
				pt = 'Bastão de Kikono',
			},
			icon = 'Item dragonminez kikono_stick.png',
			page = 'Kikono Materials',
		},
		[ 'dragonminez:kikono_string' ] = {
			name = {
				en = 'Kikono String',
				es = 'Hilo de Kikono',
				pt = 'Fio de Kikono',
			},
			icon = 'Item dragonminez kikono_string.png',
			page = 'Kikono Materials',
		},
		[ 'dragonminez:king_vegeta_armor_boots' ] = {
			name = {
				en = 'Royal Armor Boots (King Vegeta)',
				es = 'Botas de la Armadura Real (Rey Vegeta)',
				pt = 'Botas da Armadura Real (Rei Vegeta)',
			},
			icon = 'Item dragonminez king_vegeta_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:king_vegeta_armor_chestplate' ] = {
			name = {
				en = 'Royal Armor Chestplate (King Vegeta)',
				es = 'Peto de la Armadura Real (Rey Vegeta)',
				pt = 'Peitoral da Armadura Real (Rei Vegeta)',
			},
			icon = 'Item dragonminez king_vegeta_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:king_vegeta_armor_leggings' ] = {
			name = {
				en = 'Royal Armor Leggings (King Vegeta)',
				es = 'Pantalones de la Armadura Real (Rey Vegeta)',
				pt = 'Calças da Armadura Real (Rei Vegeta)',
			},
			icon = 'Item dragonminez king_vegeta_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:majin21_armor_boots' ] = {
			name = {
				en = 'Android 21 Boots (Majin)',
				es = 'Botas del Androide 21 (Majin)',
				pt = 'Botas da Androide 21 (Majin)',
			},
			icon = 'Item dragonminez majin21_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:majin21_armor_chestplate' ] = {
			name = {
				en = 'Android 21 Chestplate (Majin)',
				es = 'Peto del Androide 21 (Majin)',
				pt = 'Peitoral da Androide 21 (Majin)',
			},
			icon = 'Item dragonminez majin21_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:majin21_armor_leggings' ] = {
			name = {
				en = 'Android 21 Leggings (Majin)',
				es = 'Pantalones del Androide 21 (Majin)',
				pt = 'Calças da Androide 21 (Majin)',
			},
			icon = 'Item dragonminez majin21_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:majin_buu_armor_boots' ] = {
			name = {
				en = 'Majin Boots (Buu)',
				es = 'Botas Majin (Buu)',
				pt = 'Botas Majin (Boo)',
			},
			icon = 'Item dragonminez majin_buu_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:majin_buu_armor_chestplate' ] = {
			name = {
				en = 'Majin Chestplate (Buu)',
				es = 'Peto Majin (Buu)',
				pt = 'Peitoral Majin (Boo)',
			},
			icon = 'Item dragonminez majin_buu_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:majin_buu_armor_leggings' ] = {
			name = {
				en = 'Majin Leggings (Buu)',
				es = 'Pantalones Majin (Buu)',
				pt = 'Calças Majin (Boo)',
			},
			icon = 'Item dragonminez majin_buu_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:makai_sand' ] = {
			name = {
				en = 'Makai Sand',
				es = 'Arena Makai',
				pt = 'Areia Makai',
			},
			icon = 'Item dragonminez makai_sand.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:makai_stone' ] = {
			name = {
				en = 'Makai Stone',
				es = 'Piedra Makai',
				pt = 'Pedra Makai',
			},
			icon = 'Item dragonminez makai_stone.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:makai_stone_slab' ] = {
			name = {
				en = 'Makai Stone Slab',
				es = 'Losa de Piedra Makai',
				pt = 'Laje de Pedra Makai',
			},
			icon = 'Item dragonminez makai_stone_slab.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:makai_stone_stairs' ] = {
			name = {
				en = 'Makai Stone Stairs',
				es = 'Escaleras de Piedra Makai',
				pt = 'Escadas de Pedra Makai',
			},
			icon = 'Item dragonminez makai_stone_stairs.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:makai_stone_wall' ] = {
			name = {
				en = 'Makai Stone Wall',
				es = 'Muro de Piedra Makai',
				pt = 'Muro de Pedra Makai',
			},
			icon = 'Item dragonminez makai_stone_wall.png',
			page = 'Demon Realm',
		},
		[ 'dragonminez:mastery_capsule' ] = {
			name = {
				en = 'Mastery Capsule',
				es = 'Cápsula de Maestría',
				pt = 'Cápsula de Domínio',
			},
			icon = 'Item dragonminez mastery_capsule.png',
			page = 'Capsules',
		},
		[ 'dragonminez:meteor_flower' ] = {
			name = {
				en = 'Meteor Flower',
				es = 'Flor Meteoro',
				pt = 'Flor Meteoro',
			},
			icon = 'Item dragonminez meteor_flower.png',
			page = 'Farming',
		},
		[ 'dragonminez:mighty_majin_armor_boots' ] = {
			name = {
				en = 'DBOnline Boots (Mighty)',
				es = 'Botas DBOnline (Poderoso)',
				pt = 'Botas do Online (Poderoso)',
			},
			icon = 'Item dragonminez mighty_majin_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:mighty_majin_armor_chestplate' ] = {
			name = {
				en = 'DBOnline Chestplate (Mighty)',
				es = 'Peto DBOnline (Poderoso)',
				pt = 'Peitoral do Online (Poderoso)',
			},
			icon = 'Item dragonminez mighty_majin_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:mighty_majin_armor_leggings' ] = {
			name = {
				en = 'DBOnline Leggings (Mighty)',
				es = 'Pantalones DBOnline (Poderoso)',
				pt = 'Calças do Online (Poderoso)',
			},
			icon = 'Item dragonminez mighty_majin_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:mystic_armor_boots' ] = {
			name = {
				en = 'DBOnline Boots (Mystic)',
				es = 'Botas DBOnline (Místico)',
				pt = 'Botas do Online (Místico)',
			},
			icon = 'Item dragonminez mystic_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:mystic_armor_chestplate' ] = {
			name = {
				en = 'DBOnline Chestplate (Mystic)',
				es = 'Peto DBOnline (Místico)',
				pt = 'Peitoral do Online (Místico)',
			},
			icon = 'Item dragonminez mystic_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:mystic_armor_leggings' ] = {
			name = {
				en = 'DBOnline Leggings (Mystic)',
				es = 'Pantalones DBOnline (Místico)',
				pt = 'Calças do Online (Místico)',
			},
			icon = 'Item dragonminez mystic_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:namek_ajissa_button' ] = {
			name = {
				en = 'Ajissa Button',
				es = 'Botón de Ajissa',
				pt = 'Botão de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_button.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_ajissa_door' ] = {
			name = {
				en = 'Ajissa Door',
				es = 'Puerta de Ajissa',
				pt = 'Porta de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_door.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_ajissa_fence' ] = {
			name = {
				en = 'Ajissa Fence',
				es = 'Valla de Ajissa',
				pt = 'Cerca de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_fence.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_ajissa_fence_gate' ] = {
			name = {
				en = 'Ajissa Fence Gate',
				es = 'Puerta de Valla de Ajissa',
				pt = 'Portão de Cerca de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_fence_gate.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_ajissa_log' ] = {
			name = {
				en = 'Ajissa Log',
				es = 'Tronco de Ajissa',
				pt = 'Tora de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_log.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_ajissa_planks' ] = {
			name = {
				en = 'Ajissa Planks',
				es = 'Tablones de Ajissa',
				pt = 'Tábuas de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_planks.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_ajissa_pressure_plate' ] = {
			name = {
				en = 'Ajissa Pressure Plate',
				es = 'Placa de Presión de Ajissa',
				pt = 'Placa de Pressão de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_pressure_plate.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_ajissa_slab' ] = {
			name = {
				en = 'Ajissa Slab',
				es = 'Losa de Ajissa',
				pt = 'Laje de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_slab.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_ajissa_stairs' ] = {
			name = {
				en = 'Ajissa Stairs',
				es = 'Escaleras de Ajissa',
				pt = 'Escadas de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_stairs.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_ajissa_trapdoor' ] = {
			name = {
				en = 'Ajissa Trapdoor',
				es = 'Trampilla de Ajissa',
				pt = 'Alçapão de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_trapdoor.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_ajissa_wood' ] = {
			name = {
				en = 'Ajissa Wood',
				es = 'Madera de Ajissa',
				pt = 'Madeira de Ajissa',
			},
			icon = 'Item dragonminez namek_ajissa_wood.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_coal_ore' ] = {
			name = {
				en = 'Namek Coal Ore',
				es = 'Mineral de Carbón de Namek',
				pt = 'Minério de Carvão de Namek',
			},
			icon = 'Item dragonminez namek_coal_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_cobblestone' ] = {
			name = {
				en = 'Namek Cobblestone',
				es = 'Adoquín de Namek',
				pt = 'Pedregulho de Namek',
			},
			icon = 'Item dragonminez namek_cobblestone.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_cobblestone_slab' ] = {
			name = {
				en = 'Namek Cobblestone Slab',
				es = 'Losa de Adoquín de Namek',
				pt = 'Laje de Pedregulho de Namek',
			},
			icon = 'Item dragonminez namek_cobblestone_slab.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_cobblestone_stairs' ] = {
			name = {
				en = 'Namek Cobblestone Stairs',
				es = 'Escaleras de Adoquín de Namek',
				pt = 'Escadas de Pedregulho de Namek',
			},
			icon = 'Item dragonminez namek_cobblestone_stairs.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_cobblestone_wall' ] = {
			name = {
				en = 'Namek Cobblestone Wall',
				es = 'Muro de Adoquín de Namek',
				pt = 'Muro de Pedregulho de Namek',
			},
			icon = 'Item dragonminez namek_cobblestone_wall.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_copper_ore' ] = {
			name = {
				en = 'Namek Copper Ore',
				es = 'Mineral de Cobre de Namek',
				pt = 'Minério de Cobre de Namek',
			},
			icon = 'Item dragonminez namek_copper_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate' ] = {
			name = {
				en = 'Namek Deepslate',
				es = 'Pizarra de Namek',
				pt = 'Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_coal_ore' ] = {
			name = {
				en = 'Namek Deepslate Coal Ore',
				es = 'Mineral de Carbón en Pizarra de Namek',
				pt = 'Minério de Carvão de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_coal_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_copper_ore' ] = {
			name = {
				en = 'Namek Deepslate Copper Ore',
				es = 'Mineral de Cobre en Pizarra de Namek',
				pt = 'Minério de Cobre de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_copper_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_diamond_ore' ] = {
			name = {
				en = 'Namek Deepslate Diamond Ore',
				es = 'Mineral de Diamante en Pizarra de Namek',
				pt = 'Minério de Diamante de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_diamond_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_emerald_ore' ] = {
			name = {
				en = 'Namek Deepslate Emerald Ore',
				es = 'Mineral de Esmeralda en Pizarra de Namek',
				pt = 'Minério de Esmeralda de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_emerald_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_gold_ore' ] = {
			name = {
				en = 'Namek Deepslate Gold Ore',
				es = 'Mineral de Oro en Pizarra de Namek',
				pt = 'Minério de Ouro de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_gold_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_iron_ore' ] = {
			name = {
				en = 'Namek Deepslate Iron Ore',
				es = 'Mineral de Hierro en Pizarra de Namek',
				pt = 'Minério de Ferro de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_iron_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_lapis_ore' ] = {
			name = {
				en = 'Namek Deepslate Lapis Lazuli Ore',
				es = 'Mineral de Lapislázuli en Pizarra de Namek',
				pt = 'Minério de Lápis-Lazúli de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_lapis_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_redstone_ore' ] = {
			name = {
				en = 'Namek Deepslate Redstone Ore',
				es = 'Mineral de Piedra Roja en Pizarra de Namek',
				pt = 'Minério de Redstone de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_redstone_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_slab' ] = {
			name = {
				en = 'Namek Deepslate Slab',
				es = 'Losa de Pizarra de Namek',
				pt = 'Laje de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_slab.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_stairs' ] = {
			name = {
				en = 'Namek Deepslate Stairs',
				es = 'Escaleras de Pizarra de Namek',
				pt = 'Escadas de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_stairs.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_deepslate_wall' ] = {
			name = {
				en = 'Namek Deepslate Wall',
				es = 'Muro de Pizarra de Namek',
				pt = 'Muro de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_deepslate_wall.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_diamond_ore' ] = {
			name = {
				en = 'Namek Diamond Ore',
				es = 'Mineral de Diamante de Namek',
				pt = 'Minério de Diamante de Namek',
			},
			icon = 'Item dragonminez namek_diamond_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_emerald_ore' ] = {
			name = {
				en = 'Namek Emerald Ore',
				es = 'Mineral de Esmeralda de Namek',
				pt = 'Minério de Esmeralda de Namek',
			},
			icon = 'Item dragonminez namek_emerald_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_gold_ore' ] = {
			name = {
				en = 'Namek Gold Ore',
				es = 'Mineral de Oro de Namek',
				pt = 'Minério de Ouro de Namek',
			},
			icon = 'Item dragonminez namek_gold_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_iron_ore' ] = {
			name = {
				en = 'Namek Iron Ore',
				es = 'Mineral de Hierro de Namek',
				pt = 'Minério de Ferro de Namek',
			},
			icon = 'Item dragonminez namek_iron_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_kikono_ore' ] = {
			name = {
				en = 'Namek Deepslate Kikono Ore',
				es = 'Mineral de Kikono en Pizarra de Namek',
				pt = 'Minério de Kikono de Ardosiabissal de Namek',
			},
			icon = 'Item dragonminez namek_kikono_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_lapis_ore' ] = {
			name = {
				en = 'Namek Lapis Lazuli Ore',
				es = 'Mineral de Lapislázuli de Namek',
				pt = 'Minério de Lápis-Lazúli de Namek',
			},
			icon = 'Item dragonminez namek_lapis_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_moss' ] = {
			name = {
				en = 'Namek Moss',
				es = 'Musgo de Namek',
				pt = 'Musgo de Namek',
			},
			icon = 'Item dragonminez namek_moss.png',
			page = 'Farming',
		},
		[ 'dragonminez:namek_redstone_ore' ] = {
			name = {
				en = 'Namek Redstone Ore',
				es = 'Mineral de Piedra Roja de Namek',
				pt = 'Minério de Redstone de Namek',
			},
			icon = 'Item dragonminez namek_redstone_ore.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_button' ] = {
			name = {
				en = 'Sacred Button',
				es = 'Botón Sagrado',
				pt = 'Botão Sagrado',
			},
			icon = 'Item dragonminez namek_sacred_button.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_door' ] = {
			name = {
				en = 'Sacred Door',
				es = 'Puerta Sagrada',
				pt = 'Porta Sagrada',
			},
			icon = 'Item dragonminez namek_sacred_door.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_fence' ] = {
			name = {
				en = 'Sacred Fence',
				es = 'Valla Sagrada',
				pt = 'Cerca Sagrada',
			},
			icon = 'Item dragonminez namek_sacred_fence.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_fence_gate' ] = {
			name = {
				en = 'Sacred Fence Gate',
				es = 'Puerta de Valla Sagrada',
				pt = 'Portão de Cerca Sagrado',
			},
			icon = 'Item dragonminez namek_sacred_fence_gate.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_log' ] = {
			name = {
				en = 'Sacred Log',
				es = 'Tronco Sagrado',
				pt = 'Tora Sagrada',
			},
			icon = 'Item dragonminez namek_sacred_log.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_planks' ] = {
			name = {
				en = 'Sacred Planks',
				es = 'Tablones Sagrados',
				pt = 'Tábuas Sagradas',
			},
			icon = 'Item dragonminez namek_sacred_planks.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_pressure_plate' ] = {
			name = {
				en = 'Sacred Pressure Plate',
				es = 'Placa de Presión Sagrada',
				pt = 'Placa de Pressão Sagrada',
			},
			icon = 'Item dragonminez namek_sacred_pressure_plate.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_slab' ] = {
			name = {
				en = 'Sacred Slab',
				es = 'Losa Sagrada',
				pt = 'Laje Sagrada',
			},
			icon = 'Item dragonminez namek_sacred_slab.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_stairs' ] = {
			name = {
				en = 'Sacred Stairs',
				es = 'Escaleras Sagradas',
				pt = 'Escadas Sagradas',
			},
			icon = 'Item dragonminez namek_sacred_stairs.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_trapdoor' ] = {
			name = {
				en = 'Sacred Trapdoor',
				es = 'Trampilla Sagrada',
				pt = 'Alçapão Sagrado',
			},
			icon = 'Item dragonminez namek_sacred_trapdoor.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_sacred_wood' ] = {
			name = {
				en = 'Sacred Wood',
				es = 'Madera Sagrada',
				pt = 'Madeira Sagrada',
			},
			icon = 'Item dragonminez namek_sacred_wood.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_stone' ] = {
			name = {
				en = 'Namek Stone',
				es = 'Piedra de Namek',
				pt = 'Pedra de Namek',
			},
			icon = 'Item dragonminez namek_stone.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_stone_slab' ] = {
			name = {
				en = 'Namek Stone Slab',
				es = 'Losa de Piedra de Namek',
				pt = 'Laje de Pedra de Namek',
			},
			icon = 'Item dragonminez namek_stone_slab.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_stone_stairs' ] = {
			name = {
				en = 'Namek Stone Stairs',
				es = 'Escaleras de Piedra de Namek',
				pt = 'Escadas de Pedra de Namek',
			},
			icon = 'Item dragonminez namek_stone_stairs.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_stone_wall' ] = {
			name = {
				en = 'Namek Stone Wall',
				es = 'Muro de Piedra de Namek',
				pt = 'Muro de Pedra de Namek',
			},
			icon = 'Item dragonminez namek_stone_wall.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_stripped_ajissa_log' ] = {
			name = {
				en = 'Stripped Ajissa Log',
				es = 'Tronco de Ajissa Pelado',
				pt = 'Tora Descascada de Ajissa',
			},
			icon = 'Item dragonminez namek_stripped_ajissa_log.png',
			page = 'Namek',
		},
		[ 'dragonminez:namek_stripped_sacred_log' ] = {
			name = {
				en = 'Stripped Sacred Log',
				es = 'Tronco Sagrado Pelado',
				pt = 'Tora Sagrada Descascada',
			},
			icon = 'Item dragonminez namek_stripped_sacred_log.png',
			page = 'Namek',
		},
		[ 'dragonminez:namekdball_radar' ] = {
			name = {
				en = 'Dragon Radar (Namek)',
				es = 'Radar de Esferas del Dragón (Namek)',
				pt = 'Radar do Dragão (Namek)',
			},
			icon = 'Item dragonminez namekdball_radar.png',
			page = 'Dragon Radar',
		},
		[ 'dragonminez:oozaru_root' ] = {
			name = {
				en = 'Oozaru Root',
				es = 'Raíz Oozaru',
				pt = 'Raiz de Oozaru',
			},
			icon = 'Item dragonminez oozaru_root.png',
			page = 'Farming',
		},
		[ 'dragonminez:orange_capsule' ] = {
			name = {
				en = 'Orange Capsule',
				es = 'Orange Capsule',
				pt = 'Orange Capsule',
			},
			icon = 'Item dragonminez orange_capsule.png',
			page = 'Capsules',
		},
		[ 'dragonminez:orange_high_armor_boots' ] = {
			name = {
				en = 'Orange Star High School Boots',
				es = 'Botas del Instituto Orange Star',
				pt = 'Peitoral do Ensino Médio da Estrela Laranja',
			},
			icon = 'Item dragonminez orange_high_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:orange_high_armor_chestplate' ] = {
			name = {
				en = 'Orange Star High School Chestplate',
				es = 'Peto del Instituto Orange Star',
				pt = 'Peitoral do Ensino Médio da Estrela Laranja',
			},
			icon = 'Item dragonminez orange_high_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:orange_high_armor_leggings' ] = {
			name = {
				en = 'Orange Star High School Leggings',
				es = 'Pantalones del Instituto Orange Star',
				pt = 'Peitoral do Ensino Médio da Estrela Laranja',
			},
			icon = 'Item dragonminez orange_high_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_a13' ] = {
			name = {
				en = 'Red Ribbon Army Pattern (Android 13)',
				es = 'Patrón del Ejército Red Ribbon (Androide 13)',
				pt = 'Padrão do Exército Red Ribbon (Androide 13)',
			},
			icon = 'Item dragonminez pattern_a13.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_a14' ] = {
			name = {
				en = 'Red Ribbon Army Pattern (Android 14)',
				es = 'Patrón del Ejército Red Ribbon (Androide 14)',
				pt = 'Padrão do Exército Red Ribbon (Androide 14)',
			},
			icon = 'Item dragonminez pattern_a14.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_a16' ] = {
			name = {
				en = 'Red Ribbon Army Pattern (Android 16)',
				es = 'Patrón del Ejército Red Ribbon (Androide 16)',
				pt = 'Padrão do Exército Red Ribbon (Androide 16)',
			},
			icon = 'Item dragonminez pattern_a16.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_a17' ] = {
			name = {
				en = 'Red Ribbon Army Pattern (Android 17)',
				es = 'Patrón del Ejército Red Ribbon (Androide 17)',
				pt = 'Padrão do Exército Red Ribbon (Androide 17)',
			},
			icon = 'Item dragonminez pattern_a17.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_a17_super' ] = {
			name = {
				en = 'Android 17 Pattern (Super)',
				es = 'Patrón del Androide 17 (Super)',
				pt = 'Padrão Androide 17 (Super)',
			},
			icon = 'Item dragonminez pattern_a17_super.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_a18' ] = {
			name = {
				en = 'Red Ribbon Army Pattern (Android 18)',
				es = 'Patrón del Ejército Red Ribbon (Androide 18)',
				pt = 'Padrão do Exército Red Ribbon (Androide 18)',
			},
			icon = 'Item dragonminez pattern_a18.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_a18_cell' ] = {
			name = {
				en = 'Android 18 Pattern (Cell Saga)',
				es = 'Patrón del Androide 18 (Saga de Cell)',
				pt = 'Padrão Androide 18 (Saga Cell)',
			},
			icon = 'Item dragonminez pattern_a18_cell.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_a18_kame' ] = {
			name = {
				en = 'Android 18 Pattern (Kame House)',
				es = 'Patrón del Androide 18 (Casa Kame)',
				pt = 'Padrão Androide 18 (Casa do Kame)',
			},
			icon = 'Item dragonminez pattern_a18_kame.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_a18_tournament' ] = {
			name = {
				en = 'Android 18 Pattern (Tournament)',
				es = 'Patrón del Androide 18 (Torneo)',
				pt = 'Padrão Androide 18 (Torneio)',
			},
			icon = 'Item dragonminez pattern_a18_tournament.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_a20' ] = {
			name = {
				en = 'Red Ribbon Army Pattern (Android 20)',
				es = 'Patrón del Ejército Red Ribbon (Androide 20)',
				pt = 'Padrão do Exército da Red Ribbon (Androide 20)',
			},
			icon = 'Item dragonminez pattern_a20.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_age1000' ] = {
			name = {
				en = 'Capsule Corp Pattern (Age 1000)',
				es = 'Patrón Cápsula Corp. (Era 1000)',
				pt = 'Padrão da Corporação Cápsula (Era 1000)',
			},
			icon = 'Item dragonminez pattern_age1000.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_bardock1' ] = {
			name = {
				en = 'Saiyan Armor Pattern (Bardock) (DBZ)',
				es = 'Patrón de la Armadura Saiyajin (Bardock) (DBZ)',
				pt = 'Padrão da Armadura Saiyajin (Bardock) (DBZ)',
			},
			icon = 'Item dragonminez pattern_bardock1.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_bardock2' ] = {
			name = {
				en = 'Saiyan Armor Pattern (Bardock) (DBSuper)',
				es = 'Patrón de la Armadura Saiyajin (Bardock) (DBSuper)',
				pt = 'Padrão da Armadura Saiyajin (Bardock) (Super)',
			},
			icon = 'Item dragonminez pattern_bardock2.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_beerus' ] = {
			name = {
				en = 'God of Destruction Pattern (Beerus)',
				es = 'Patrón del Dios de la Destrucción (Beerus)',
				pt = 'Padrão do Deus da Destruição (Bills)',
			},
			icon = 'Item dragonminez pattern_beerus.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_black' ] = {
			name = {
				en = 'Black Turtle Hermit School GI Pattern (Black)',
				es = 'Patrón del Gi de la Escuela Tortuga Negra (Goku Negro)',
				pt = 'Padrão do Uniforme Preto da Escola da Tartaruga (Black)',
			},
			icon = 'Item dragonminez pattern_black.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_broly_super' ] = {
			name = {
				en = 'Saiyan Armor Pattern (Broly) (Super)',
				es = 'Patrón de la Armadura Saiyajin (Broly) (Super)',
				pt = 'Padrão da Armadura Saiyajin (Broly) (Super)',
			},
			icon = 'Item dragonminez pattern_broly_super.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_broly_z' ] = {
			name = {
				en = 'Control Jewelry Set Pattern (Broly)',
				es = 'Patrón del Conjunto de Joyería de Control (Broly)',
				pt = 'Padrão do Conjunto de Jóias de Controle (Broly)',
			},
			icon = 'Item dragonminez pattern_broly_z.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_capsule_corp' ] = {
			name = {
				en = 'Capsule Corp Pattern (Age 1000)',
				es = 'Patrón Cápsula Corp. (Era 1000)',
				pt = 'Padrão da Corporação Cápsula (Era 1000)',
			},
			icon = 'Item dragonminez pattern_capsule_corp.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_caulifla' ] = {
			name = {
				en = 'Saiyan Pattern (Caulifla)',
				es = 'Patrón Saiyajin (Caulifla)',
				pt = 'Padrão Saiyajin (Caulifla)',
			},
			icon = 'Item dragonminez pattern_caulifla.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_chaoz' ] = {
			name = {
				en = 'Crane School Pattern (Chaoz)',
				es = 'Patrón de la Escuela Grulla (Chaozu)',
				pt = 'Padrão da Escola da Garça (Caos)',
			},
			icon = 'Item dragonminez pattern_chaoz.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_cooler_soldier' ] = {
			name = {
				en = 'Cooler\'s Soldier Pattern',
				es = 'Patrón del Soldado de Cooler',
				pt = 'Padrão do Soldado de Cooler',
			},
			icon = 'Item dragonminez pattern_cooler_soldier.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_dragon_clan' ] = {
			name = {
				en = 'DBOnline Armor Pattern (Dragon)',
				es = 'Patrón de Armadura DBOnline (Dragón)',
				pt = 'Padrão da Armadura Online (Dragão)',
			},
			icon = 'Item dragonminez pattern_dragon_clan.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_evil_buu' ] = {
			name = {
				en = 'Majin Pattern (Evil Buu)',
				es = 'Patrón Majin (Buu Maligno)',
				pt = 'Padrão Majin (Boo Maligno)',
			},
			icon = 'Item dragonminez pattern_evil_buu.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_fighter' ] = {
			name = {
				en = 'DBOnline Armor Pattern (Fighter)',
				es = 'Patrón de Armadura DBOnline (Luchador)',
				pt = 'Padrão da Armadura Online (Lutador)',
			},
			icon = 'Item dragonminez pattern_fighter.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_fusionzamasu' ] = {
			name = {
				en = 'Kaioshin Pattern (Fused Zamasu)',
				es = 'Patrón de Kaioshin (Zamasu Fusionado)',
				pt = 'Padrão Kaioshin (Zamasu Fundido)',
			},
			icon = 'Item dragonminez pattern_fusionzamasu.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_future_gohan' ] = {
			name = {
				en = 'Turtle Hermit School GI Pattern (Future Gohan)',
				es = 'Patrón del Gi de la Escuela Tortuga (Gohan del Futuro)',
				pt = 'Padrão do Uniforme da Escola da Tartaruga (Gohan do Futuro)',
			},
			icon = 'Item dragonminez pattern_future_gohan.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_gamma1' ] = {
			name = {
				en = 'Red Ribbon Army Pattern (Gamma 1)',
				es = 'Patrón del Ejército Red Ribbon (Gamma 1)',
				pt = 'Padrão do Exército Red Ribbon (Gamma 1)',
			},
			icon = 'Item dragonminez pattern_gamma1.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_gamma2' ] = {
			name = {
				en = 'Red Ribbon Army Pattern (Gamma 2)',
				es = 'Patrón del Ejército Red Ribbon (Gamma 2)',
				pt = 'Padrão do Exército Red Ribbon (Gamma 2)',
			},
			icon = 'Item dragonminez pattern_gamma2.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_gas' ] = {
			name = {
				en = 'Heata Family Pattern (Gas)',
				es = 'Patrón de la Familia Heata (Gas)',
				pt = 'Padrão de Família Heata (Gas)',
			},
			icon = 'Item dragonminez pattern_gas.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_gero' ] = {
			name = {
				en = 'Red Ribbon Army Pattern (Dr. Gero)',
				es = 'Patrón del Ejército Red Ribbon (Dr. Gero)',
				pt = 'Padrão do Exército da Red Ribbon (Dr. Gero)',
			},
			icon = 'Item dragonminez pattern_gero.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_gete' ] = {
			name = {
				en = 'Gete Pattern',
				es = 'Patrón Gete',
				pt = 'Padrão Gete',
			},
			icon = 'Item dragonminez pattern_gete.png',
			page = 'Gete Tech',
		},
		[ 'dragonminez:pattern_gine' ] = {
			name = {
				en = 'Saiyan Armor Pattern (Gine)',
				es = 'Patrón de la Armadura Saiyajin (Gine)',
				pt = 'Padrão de Armadura de Saiyajin (Gine)',
			},
			icon = 'Item dragonminez pattern_gine.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_gogeta' ] = {
			name = {
				en = 'Metamoran Suit Pattern (Gogeta)',
				es = 'Patrón del Traje Metamoru (Gogeta)',
				pt = 'Padrão do Traje Metamor (Gogeta)',
			},
			icon = 'Item dragonminez pattern_gogeta.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_gohan1' ] = {
			name = {
				en = 'Demon GI Pattern (Gohan)',
				es = 'Patrón del Gi Demonio (Gohan)',
				pt = 'Padrão do GI do Demônio (Gohan)',
			},
			icon = 'Item dragonminez pattern_gohan1.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_gohan_super' ] = {
			name = {
				en = 'Demon GI Pattern (Gohan) (Super)',
				es = 'Patrón del Gi Demonio (Gohan) (Super)',
				pt = 'Padrão do GI do Demônio (Gohan) (Super)',
			},
			icon = 'Item dragonminez pattern_gohan_super.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_goku1' ] = {
			name = {
				en = 'Turtle Hermit School GI Pattern (Goku)',
				es = 'Patrón del Gi de la Escuela Tortuga (Goku)',
				pt = 'Padrão do Uniforme da Escola da Tartaruga (Goku)',
			},
			icon = 'Item dragonminez pattern_goku1.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_goku_gt' ] = {
			name = {
				en = 'Blue Master GI Pattern (Goku) (GT)',
				es = 'Patrón del Gi del Maestro Azul (Goku) (GT)',
				pt = 'Padrão do Uniforme Azul do Mestre (Goku) (GT)',
			},
			icon = 'Item dragonminez pattern_goku_gt.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_goku_kid' ] = {
			name = {
				en = 'Red Turtle Hermit School GI Pattern (Goku) (Kid)',
				es = 'Patrón del Gi de la Escuela Tortuga Roja (Goku) (Niño)',
				pt = 'Padrão do Uniforme Vermelho da Escola da Tartaruga (Goku) (Kid)',
			},
			icon = 'Item dragonminez pattern_goku_kid.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_goku_super' ] = {
			name = {
				en = 'Turtle Hermit School GI Pattern (Goku) (Super)',
				es = 'Patrón del Gi de la Escuela Tortuga (Goku) (Super)',
				pt = 'Padrão do Uniforme da Escola da Tartaruga (Goku) (Super)',
			},
			icon = 'Item dragonminez pattern_goku_super.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_goku_whis' ] = {
			name = {
				en = 'Whis Symbol GI Pattern (Goku)',
				es = 'Patrón del Gi con Símbolo Whis (Goku)',
				pt = 'Padrão de Uniforme com Símbolo de Whis (Goku)',
			},
			icon = 'Item dragonminez pattern_goku_whis.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_goten' ] = {
			name = {
				en = 'Turtle Hermit School GI Pattern (Goten)',
				es = 'Patrón del Gi de la Escuela Tortuga (Goten)',
				pt = 'Padrão do Uniforme da Escola da Tartaruga (Goten)',
			},
			icon = 'Item dragonminez pattern_goten.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_goten_super' ] = {
			name = {
				en = 'Green Jacket Outfit Pattern (Goten) (Super)',
				es = 'Patrón del Traje Chaqueta Verde (Goten) (Super)',
				pt = 'Padrão do Conjunto de Jaqueta Verde (Goten) (Super)',
			},
			icon = 'Item dragonminez pattern_goten_super.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_granola' ] = {
			name = {
				en = 'Cerealian Pattern (Granola)',
				es = 'Patrón Cerealiano (Granolah)',
				pt = 'Padrão Cerealiano (Granola)',
			},
			icon = 'Item dragonminez pattern_granola.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_great_saiyaman' ] = {
			name = {
				en = 'Hero of Justice Pattern (Great Saiyaman)',
				es = 'Patrón del Héroe de la Justicia (Gran Saiyaman)',
				pt = 'Padrão do Herói da Justiça (Grande Saiyaman)',
			},
			icon = 'Item dragonminez pattern_great_saiyaman.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_great_saiyaman_2' ] = {
			name = {
				en = 'Hero of Justice 2 Pattern (Great Saiyaman 2)',
				es = 'Patrón del Héroe de la Justicia 2 (Gran Saiyaman 2)',
				pt = 'Padrão do Herói da Justiça 2 (Grande Saiyaman 2)',
			},
			icon = 'Item dragonminez pattern_great_saiyaman_2.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_hit' ] = {
			name = {
				en = 'Assassin Pattern (Hit)',
				es = 'Patrón del Asesino (Hit)',
				pt = 'Padrão do Assassino (Hit)',
			},
			icon = 'Item dragonminez pattern_hit.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_kale' ] = {
			name = {
				en = 'Saiyan Pattern (Kale)',
				es = 'Patrón Saiyajin (Kale)',
				pt = 'Padrão Saiyajin (Kale)',
			},
			icon = 'Item dragonminez pattern_kale.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_kefla' ] = {
			name = {
				en = 'Saiyan Pattern (Kefla)',
				es = 'Patrón Saiyajin (Kefla)',
				pt = 'Padrão Saiyajin (Kefla)',
			},
			icon = 'Item dragonminez pattern_kefla.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_kibito' ] = {
			name = {
				en = 'Kaioshin Pattern (Kibito)',
				es = 'Patrón de Kaioshin (Kibito)',
				pt = 'Padrão Kaioshin (Kibito)',
			},
			icon = 'Item dragonminez pattern_kibito.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_king_vegeta' ] = {
			name = {
				en = 'Royal Armor Pattern (King Vegeta)',
				es = 'Patrón de la Armadura Real (Rey Vegeta)',
				pt = 'Padrão de Armadura Real (Rei Vegeta)',
			},
			icon = 'Item dragonminez pattern_king_vegeta.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_majin21' ] = {
			name = {
				en = 'Majin Pattern (Android 21)',
				es = 'Patrón Majin (Androide 21)',
				pt = 'Padrão Majin (Androide 21)',
			},
			icon = 'Item dragonminez pattern_majin21.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_majin_buu' ] = {
			name = {
				en = 'Majin Pattern (Buu)',
				es = 'Patrón Majin (Buu)',
				pt = 'Padrão de Majin (Boo)',
			},
			icon = 'Item dragonminez pattern_majin_buu.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_mighty_majin' ] = {
			name = {
				en = 'DBOnline Armor Pattern (Mighty)',
				es = 'Patrón de Armadura DBOnline (Poderoso)',
				pt = 'Padrão da Armadura Online (Poderoso)',
			},
			icon = 'Item dragonminez pattern_mighty_majin.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_mystic' ] = {
			name = {
				en = 'DBOnline Armor Pattern (Mystic)',
				es = 'Patrón de Armadura DBOnline (Místico)',
				pt = 'Padrão da Armadura Online (Místico)',
			},
			icon = 'Item dragonminez pattern_mystic.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_orange_high' ] = {
			name = {
				en = 'Orange Star High School Pattern',
				es = 'Patrón del Instituto Orange Star',
				pt = 'Padrão do Ensino Médio da Estrela Laranja',
			},
			icon = 'Item dragonminez pattern_orange_high.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_piccolo' ] = {
			name = {
				en = 'Demon GI Pattern (Piccolo)',
				es = 'Patrón del Gi Demonio (Piccolo)',
				pt = 'Padrão do GI do Demônio (Piccolo)',
			},
			icon = 'Item dragonminez pattern_piccolo.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_pride_troops' ] = {
			name = {
				en = 'Pride Troops Pattern (U11)',
				es = 'Patrón de los Soldados del Orgullo (U11)',
				pt = 'Padrão das Tropas do Orgulho (U11)',
			},
			icon = 'Item dragonminez pattern_pride_troops.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_raditz' ] = {
			name = {
				en = 'Saiyan Armor Pattern (Raditz)',
				es = 'Patrón de la Armadura Saiyajin (Raditz)',
				pt = 'Padrão de Armadura Saiyajin (Raditz)',
			},
			icon = 'Item dragonminez pattern_raditz.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_shin' ] = {
			name = {
				en = 'Kaioshin Pattern (Shin)',
				es = 'Patrón de Kaioshin (Shin)',
				pt = 'Padrão Kaioshin (Shin)',
			},
			icon = 'Item dragonminez pattern_shin.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_slug' ] = {
			name = {
				en = 'Evil Namekian Pattern (Slug)',
				es = 'Patrón del Namekiano Maligno (Slug)',
				pt = 'Padrão Namekuseijin Maligno (Slug)',
			},
			icon = 'Item dragonminez pattern_slug.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_station' ] = {
			name = {
				en = 'Pattern Station',
				es = 'Estación de Patrones',
				pt = 'Estação de Padrões',
			},
			icon = 'Item dragonminez pattern_station.png',
			page = 'Armor',
		},
		[ 'dragonminez:pattern_super_buu' ] = {
			name = {
				en = 'Majin Pattern (Super Buu)',
				es = 'Patrón Majin (Super Buu)',
				pt = 'Padrão Majin (Super Boo)',
			},
			icon = 'Item dragonminez pattern_super_buu.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_tien' ] = {
			name = {
				en = 'Crane School GI Pattern (Tien)',
				es = 'Patrón del Gi de la Escuela Grulla (Ten Shin Han)',
				pt = 'Padrão do Uniforme da Escola do Guindaste (Tien)',
			},
			icon = 'Item dragonminez pattern_tien.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_trunks_kid' ] = {
			name = {
				en = 'Green GI Pattern (Trunks) (Kid)',
				es = 'Patrón del Gi Verde (Trunks) (Niño)',
				pt = 'Padrão do Uniforme Verde (Trunks) (Kid)',
			},
			icon = 'Item dragonminez pattern_trunks_kid.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_trunks_super' ] = {
			name = {
				en = 'Capsule Corp Jacket Pattern (Trunks) (Super)',
				es = 'Patrón de la Chaqueta Cápsula Corp. (Trunks) (Super)',
				pt = 'Padrão da Jaqueta da Capsule Corp (Trunks) (Super)',
			},
			icon = 'Item dragonminez pattern_trunks_super.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_trunks_z' ] = {
			name = {
				en = 'Capsule Corp Jacket Pattern (Trunks)',
				es = 'Patrón de la Chaqueta Cápsula Corp. (Trunks)',
				pt = 'Padrão da Jaqueta da Capsule Corp (Trunks)',
			},
			icon = 'Item dragonminez pattern_trunks_z.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_turles' ] = {
			name = {
				en = 'Saiyan Armor Pattern (Turles)',
				es = 'Patrón de la Armadura Saiyajin (Turles)',
				pt = 'Padrão da Armadura Saiyajin (Turles)',
			},
			icon = 'Item dragonminez pattern_turles.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_vegeta1' ] = {
			name = {
				en = 'Saiyan Armor Pattern (Vegeta) (Saiyan)',
				es = 'Patrón de la Armadura Saiyajin (Vegeta) (Saiyajin)',
				pt = 'Padrão da Armadura Saiyajin (Vegeta) (Saiyajin)',
			},
			icon = 'Item dragonminez pattern_vegeta1.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_vegeta2' ] = {
			name = {
				en = 'Saiyan Armor Pattern (Vegeta) (Namek)',
				es = 'Patrón de la Armadura Saiyajin (Vegeta) (Namek)',
				pt = 'Padrão da Armadura Saiyajin (Vegeta) (Namek)',
			},
			icon = 'Item dragonminez pattern_vegeta2.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_vegeta_buu' ] = {
			name = {
				en = 'Blue Training Outfit Pattern (Vegeta) (Buu)',
				es = 'Patrón del Traje de Entrenamiento Azul (Vegeta) (Buu)',
				pt = 'Padrão do Conjunto de Treino Azul (Vegeta) (Boo)',
			},
			icon = 'Item dragonminez pattern_vegeta_buu.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_vegeta_gt' ] = {
			name = {
				en = 'Vegeta Pattern (GT)',
				es = 'Patrón de Vegeta (GT)',
				pt = 'Padrão Vegeta (GT)',
			},
			icon = 'Item dragonminez pattern_vegeta_gt.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_vegeta_super' ] = {
			name = {
				en = 'Saiyan Armor Pattern (Vegeta) (Super)',
				es = 'Patrón de la Armadura Saiyajin (Vegeta) (Super)',
				pt = 'Padrão da Armadura Saiyajin (Vegeta) (Super)',
			},
			icon = 'Item dragonminez pattern_vegeta_super.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_vegeta_whis' ] = {
			name = {
				en = 'Whis Symbol GI Pattern (Vegeta)',
				es = 'Patrón del Gi con Símbolo Whis (Vegeta)',
				pt = 'Padrão de Uniforme com Símbolo de Whis (Vegeta)',
			},
			icon = 'Item dragonminez pattern_vegeta_whis.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_vegeta_z' ] = {
			name = {
				en = 'Saiyan Armor Pattern (Vegeta) (Cell)',
				es = 'Patrón de la Armadura Saiyajin (Vegeta) (Cell)',
				pt = 'Padrão da Armadura Saiyajin (Vegeta) (Cell)',
			},
			icon = 'Item dragonminez pattern_vegeta_z.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_vegetto' ] = {
			name = {
				en = 'Inverted Turtle Hermit School GI Pattern (Vegito)',
				es = 'Patrón del Gi de la Escuela Tortuga Invertido (Vegito)',
				pt = 'Padrão do Uniforme Invertido da Escola da Tartaruga (Vegetto)',
			},
			icon = 'Item dragonminez pattern_vegetto.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_vergil' ] = {
			name = {
				en = 'The Alpha and the Omega Pattern (Vergil)',
				es = 'Patrón El Alfa y la Omega (Vergil)',
				pt = 'Padrão do Alfa e Ômega (Vergil)',
			},
			icon = 'Item dragonminez pattern_vergil.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_videl' ] = {
			name = {
				en = 'Orange Star High School Pattern (Videl)',
				es = 'Patrón del Instituto Orange Star (Videl)',
				pt = 'Padrão do Ensino Médio da Estrela Laranja (Videl)',
			},
			icon = 'Item dragonminez pattern_videl.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_warrior_clan' ] = {
			name = {
				en = 'DBOnline Armor Pattern (Warrior)',
				es = 'Patrón de Armadura DBOnline (Guerrero)',
				pt = 'Padrão da Armadura Online (Guerreiro)',
			},
			icon = 'Item dragonminez pattern_warrior_clan.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_whis' ] = {
			name = {
				en = 'Angel Pattern (Whis)',
				es = 'Patrón Ángel (Whis)',
				pt = 'Padrão Anjo (Whis)',
			},
			icon = 'Item dragonminez pattern_whis.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_wonder_majin' ] = {
			name = {
				en = 'DBOnline Armor Pattern (Wonder)',
				es = 'Patrón de Armadura DBOnline (Maravilla)',
				pt = 'Padrão da Armadura Online (Maravilha)',
			},
			icon = 'Item dragonminez pattern_wonder_majin.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_xeno_goku' ] = {
			name = {
				en = 'Time Patrol Pattern (Goku Xeno)',
				es = 'Patrón de la Patrulla del Tiempo (Goku Xeno)',
				pt = 'Padrão da Patrulha do Tempo (Goku Xeno)',
			},
			icon = 'Item dragonminez pattern_xeno_goku.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_xeno_goku_patreon' ] = {
			name = {
				en = 'Time Patrol Pattern (Goku Xeno Alternative)',
				es = 'Patrón de la Patrulla del Tiempo (Goku Xeno Alternativo)',
				pt = 'Padrão da Patrulha do Tempo (Goku Xeno Alternativo)',
			},
			icon = 'Item dragonminez pattern_xeno_goku_patreon.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pattern_yardrat' ] = {
			name = {
				en = 'Yardrat Outfit Pattern (Goku)',
				es = 'Patrón del Traje Yardrat (Goku)',
				pt = 'Padrão do Traje de Yardrat (Goku)',
			},
			icon = 'Item dragonminez pattern_yardrat.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pattern_zamasu' ] = {
			name = {
				en = 'Kaioshin Pattern (Zamasu)',
				es = 'Patrón de Kaioshin (Zamasu)',
				pt = 'Padrão Kaioshin (Zamasu)',
			},
			icon = 'Item dragonminez pattern_zamasu.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:piccolo_armor_boots' ] = {
			name = {
				en = 'Demon GI Boots (Piccolo)',
				es = 'Botas del Gi Demonio (Piccolo)',
				pt = 'Botas do GI do Demônio (Piccolo)',
			},
			icon = 'Item dragonminez piccolo_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:piccolo_armor_chestplate' ] = {
			name = {
				en = 'Demon GI Chestplate (Piccolo)',
				es = 'Peto del Gi Demonio (Piccolo)',
				pt = 'Peitoral do GI do Demônio (Piccolo)',
			},
			icon = 'Item dragonminez piccolo_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:piccolo_armor_helmet' ] = {
			name = {
				en = 'Demon GI Turban (Piccolo)',
				es = 'Turbante del Gi Demonio (Piccolo)',
				pt = 'Turbante do GI do Demônio (Piccolo)',
			},
			icon = 'Item dragonminez piccolo_armor_helmet.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:piccolo_armor_leggings' ] = {
			name = {
				en = 'Demon GI Leggings (Piccolo)',
				es = 'Pantalones del Gi Demonio (Piccolo)',
				pt = 'Calças do GI do Demônio (Piccolo)',
			},
			icon = 'Item dragonminez piccolo_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:pride_troops_armor_boots' ] = {
			name = {
				en = 'Pride Trooper Boots (U11)',
				es = 'Botas de los Soldados del Orgullo (U11)',
				pt = 'Botas da Tropa do Orgulho (U11)',
			},
			icon = 'Item dragonminez pride_troops_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pride_troops_armor_chestplate' ] = {
			name = {
				en = 'Pride Trooper Chestplate (U11)',
				es = 'Peto de los Soldados del Orgullo (U11)',
				pt = 'Peitoral da Tropa do Orgulho (U11)',
			},
			icon = 'Item dragonminez pride_troops_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:pride_troops_armor_leggings' ] = {
			name = {
				en = 'Pride Trooper Leggings (U11)',
				es = 'Pantalones de los Soldados del Orgullo (U11)',
				pt = 'Calças da Tropa do Orgulho (U11)',
			},
			icon = 'Item dragonminez pride_troops_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:purple_capsule' ] = {
			name = {
				en = 'Purple Capsule',
				es = 'Purple Capsule',
				pt = 'Purple Capsule',
			},
			icon = 'Item dragonminez purple_capsule.png',
			page = 'Capsules',
		},
		[ 'dragonminez:purple_scouter' ] = {
			name = {
				en = 'Scouter (Purple)',
				es = 'Escáner (Morado)',
				pt = 'Scouter (Roxo)',
			},
			icon = 'Item dragonminez purple_scouter.png',
			page = 'Scouters',
		},
		[ 'dragonminez:radar_piece' ] = {
			name = {
				en = 'Radar\'s Piece',
				es = 'Pieza del Radar',
				pt = 'Pedaço do Radar',
			},
			icon = 'Item dragonminez radar_piece.png',
			page = 'Dragon Radar',
		},
		[ 'dragonminez:raditz_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Raditz)',
				es = 'Botas de la Armadura Saiyajin (Raditz)',
				pt = 'Botas da Armadura Saiyajin (Raditz)',
			},
			icon = 'Item dragonminez raditz_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:raditz_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Raditz)',
				es = 'Peto de la Armadura Saiyajin (Raditz)',
				pt = 'Peitoral da Armadura Saiyajin (Raditz)',
			},
			icon = 'Item dragonminez raditz_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:raditz_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Raditz)',
				es = 'Pantalones de la Armadura Saiyajin (Raditz)',
				pt = 'Calças da Armadura Saiyajin (Raditz)',
			},
			icon = 'Item dragonminez raditz_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:raw_baby_dino_meat' ] = {
			name = {
				en = 'Raw Baby Dino Meat',
				es = 'Carne Cruda de Dinosaurio Bebé',
				pt = 'Carne de Dinossauro Bebê Crua',
			},
			icon = 'Item dragonminez raw_baby_dino_meat.png',
			page = 'Dinosaurs',
		},
		[ 'dragonminez:raw_dino_meat' ] = {
			name = {
				en = 'Raw Dino Meat',
				es = 'Carne Cruda de Dinosaurio',
				pt = 'Carne de Dinossauro Crua',
			},
			icon = 'Item dragonminez raw_dino_meat.png',
			page = 'Dinosaurs',
		},
		[ 'dragonminez:red_capsule' ] = {
			name = {
				en = 'Red Capsule',
				es = 'Red Capsule',
				pt = 'Red Capsule',
			},
			icon = 'Item dragonminez red_capsule.png',
			page = 'Capsules',
		},
		[ 'dragonminez:red_scouter' ] = {
			name = {
				en = 'Scouter (Red)',
				es = 'Escáner (Rojo)',
				pt = 'Scouter (Vermelho)',
			},
			icon = 'Item dragonminez red_scouter.png',
			page = 'Scouters',
		},
		[ 'dragonminez:rocky_cobblestone' ] = {
			name = {
				en = 'Rocky Cobblestone',
				es = 'Adoquín Rocoso',
				pt = 'Pedregulho Rochoso',
			},
			icon = 'Item dragonminez rocky_cobblestone.png',
			page = 'Earth',
		},
		[ 'dragonminez:rocky_cobblestone_slab' ] = {
			name = {
				en = 'Rocky Cobblestone Slab',
				es = 'Losa de Adoquín Rocoso',
				pt = 'Laje de Pedregulho Rochoso',
			},
			icon = 'Item dragonminez rocky_cobblestone_slab.png',
			page = 'Earth',
		},
		[ 'dragonminez:rocky_cobblestone_stairs' ] = {
			name = {
				en = 'Rocky Cobblestone Stairs',
				es = 'Escaleras de Adoquín Rocoso',
				pt = 'Escadas de Pedregulho Rochoso',
			},
			icon = 'Item dragonminez rocky_cobblestone_stairs.png',
			page = 'Earth',
		},
		[ 'dragonminez:rocky_cobblestone_wall' ] = {
			name = {
				en = 'Rocky Cobblestone Wall',
				es = 'Muro de Adoquín Rocoso',
				pt = 'Muro de Pedregulho Rochoso',
			},
			icon = 'Item dragonminez rocky_cobblestone_wall.png',
			page = 'Earth',
		},
		[ 'dragonminez:rocky_stone' ] = {
			name = {
				en = 'Rocky Stone',
				es = 'Piedra Rocosa',
				pt = 'Pedra Rochosa',
			},
			icon = 'Item dragonminez rocky_stone.png',
			page = 'Earth',
		},
		[ 'dragonminez:rocky_stone_slab' ] = {
			name = {
				en = 'Rocky Stone Slab',
				es = 'Losa de Piedra Rocosa',
				pt = 'Laje de Pedra Rochosa',
			},
			icon = 'Item dragonminez rocky_stone_slab.png',
			page = 'Earth',
		},
		[ 'dragonminez:rocky_stone_stairs' ] = {
			name = {
				en = 'Rocky Stone Stairs',
				es = 'Escaleras de Piedra Rocosa',
				pt = 'Escadas de Pedra Rochosa',
			},
			icon = 'Item dragonminez rocky_stone_stairs.png',
			page = 'Earth',
		},
		[ 'dragonminez:rocky_stone_wall' ] = {
			name = {
				en = 'Rocky Stone Wall',
				es = 'Muro de Piedra Rocosa',
				pt = 'Muro de Pedra Rochosa',
			},
			icon = 'Item dragonminez rocky_stone_wall.png',
			page = 'Earth',
		},
		[ 'dragonminez:saiyan_ship' ] = {
			name = {
				en = 'Saiyan Space Pod',
				es = 'Cápsula Espacial Saiyajin',
				pt = 'Cápsula Espacial Saiyajin',
			},
			icon = 'Item dragonminez saiyan_ship.png',
			page = 'Space Pod',
		},
		[ 'dragonminez:senzu_bean' ] = {
			name = {
				en = 'Senzu Bean',
				es = 'Semilla del Ermitaño',
				pt = 'Semente dos Deuses',
			},
			icon = 'Item dragonminez senzu_bean.png',
			page = 'Senzu Bean',
		},
		[ 'dragonminez:senzu_bean_bag' ] = {
			name = {
				en = 'Senzu Bag',
				es = 'Bolsa de Semillas del Ermitaño',
				pt = 'Bolsa de Feijões dos Deuses',
			},
			icon = 'Item dragonminez senzu_bean_bag.png',
			page = 'Senzu Bag',
		},
		[ 'dragonminez:senzu_bean_blue' ] = {
			name = {
				en = 'Senzu Bean (Ki)',
				es = 'Semilla del Ermitaño (Ki)',
				pt = 'Semente dos Deuses (Ki)',
			},
			icon = 'Item dragonminez senzu_bean_blue.png',
			page = 'Senzu Bean',
		},
		[ 'dragonminez:senzu_bean_red' ] = {
			name = {
				en = 'Senzu Bean (Health)',
				es = 'Semilla del Ermitaño (Vida)',
				pt = 'Semente dos Deuses (Vida)',
			},
			icon = 'Item dragonminez senzu_bean_red.png',
			page = 'Senzu Bean',
		},
		[ 'dragonminez:senzu_bean_seeds_blue' ] = {
			name = {
				en = 'Senzu Bean Seeds (Ki)',
				es = 'Semillas de Senzu (Ki)',
				pt = 'Sementes de Senzu (Ki)',
			},
			icon = 'Item dragonminez senzu_bean_seeds_blue.png',
			page = 'Senzu Bean',
		},
		[ 'dragonminez:senzu_bean_seeds_red' ] = {
			name = {
				en = 'Senzu Bean Seeds (Health)',
				es = 'Semillas de Senzu (Vida)',
				pt = 'Sementes de Senzu (Vida)',
			},
			icon = 'Item dragonminez senzu_bean_seeds_red.png',
			page = 'Senzu Bean',
		},
		[ 'dragonminez:senzu_bean_seeds_yellow' ] = {
			name = {
				en = 'Senzu Bean Seeds (Stamina)',
				es = 'Semillas de Senzu (Stamina)',
				pt = 'Sementes de Senzu (Estâmina)',
			},
			icon = 'Item dragonminez senzu_bean_seeds_yellow.png',
			page = 'Senzu Bean',
		},
		[ 'dragonminez:senzu_bean_yellow' ] = {
			name = {
				en = 'Senzu Bean (Stamina)',
				es = 'Semilla del Ermitaño (Stamina)',
				pt = 'Semente dos Deuses (Estâmina)',
			},
			icon = 'Item dragonminez senzu_bean_yellow.png',
			page = 'Senzu Bean',
		},
		[ 'dragonminez:shin_armor_boots' ] = {
			name = {
				en = 'Kaioshin Boots (Shin)',
				es = 'Botas de Kaioshin (Shin)',
				pt = 'Botas Kaioshin (Shin)',
			},
			icon = 'Item dragonminez shin_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:shin_armor_chestplate' ] = {
			name = {
				en = 'Kaioshin Chestplate (Shin)',
				es = 'Peto de Kaioshin (Shin)',
				pt = 'Peitoral Kaioshin (Shin)',
			},
			icon = 'Item dragonminez shin_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:shin_armor_leggings' ] = {
			name = {
				en = 'Kaioshin Leggings (Shin)',
				es = 'Pantalones de Kaioshin (Shin)',
				pt = 'Calças Kaioshin (Shin)',
			},
			icon = 'Item dragonminez shin_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:slug_armor_boots' ] = {
			name = {
				en = 'Evil Namekian Boots (Slug)',
				es = 'Botas del Namekiano Maligno (Slug)',
				pt = 'Botas do Namekuseijin Maligno (Slug)',
			},
			icon = 'Item dragonminez slug_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:slug_armor_chestplate' ] = {
			name = {
				en = 'Evil Namekian Chestplate (Slug)',
				es = 'Peto del Namekiano Maligno (Slug)',
				pt = 'Peitoral do Namekuseijin Maligno (Slug)',
			},
			icon = 'Item dragonminez slug_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:slug_armor_helmet' ] = {
			name = {
				en = 'Evil Namekian Helmet (Slug)',
				es = 'Casco del Namekiano Maligno (Slug)',
				pt = 'Capacete do Namekuseijin Maligno (Slug)',
			},
			icon = 'Item dragonminez slug_armor_helmet.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:slug_armor_leggings' ] = {
			name = {
				en = 'Evil Namekian Leggings (Slug)',
				es = 'Pantalones del Namekiano Maligno (Slug)',
				pt = 'Calças do Namekuseijin Maligno (Slug)',
			},
			icon = 'Item dragonminez slug_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:super_buu_armor_boots' ] = {
			name = {
				en = 'Majin Boots (Super Buu)',
				es = 'Botas Majin (Super Buu)',
				pt = 'Botas Majin (Super Boo)',
			},
			icon = 'Item dragonminez super_buu_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:super_buu_armor_chestplate' ] = {
			name = {
				en = 'Majin Chestplate (Super Buu)',
				es = 'Peto Majin (Super Buu)',
				pt = 'Peitoral Majin (Super Boo)',
			},
			icon = 'Item dragonminez super_buu_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:super_buu_armor_leggings' ] = {
			name = {
				en = 'Majin Leggings (Super Buu)',
				es = 'Pantalones Majin (Super Buu)',
				pt = 'Calças Majin (Super Boo)',
			},
			icon = 'Item dragonminez super_buu_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:t1_radar_chip' ] = {
			name = {
				en = 'Radar\'s Chip (Earth)',
				es = 'Chip del Radar (Tierra)',
				pt = 'Chip do Radar (Terra)',
			},
			icon = 'Item dragonminez t1_radar_chip.png',
			page = 'Dragon Radar',
		},
		[ 'dragonminez:t1_radar_cpu' ] = {
			name = {
				en = 'Radar\'s CPU (Earth)',
				es = 'CPU del Radar (Tierra)',
				pt = 'CPU do Radar (Terra)',
			},
			icon = 'Item dragonminez t1_radar_cpu.png',
			page = 'Dragon Radar',
		},
		[ 'dragonminez:t2_radar_chip' ] = {
			name = {
				en = 'Radar\'s Chip (Namek)',
				es = 'Chip del Radar (Namek)',
				pt = 'Chip do Radar (Namek)',
			},
			icon = 'Item dragonminez t2_radar_chip.png',
			page = 'Dragon Radar',
		},
		[ 'dragonminez:t2_radar_cpu' ] = {
			name = {
				en = 'Radar\'s CPU (Namek)',
				es = 'CPU del Radar (Namek)',
				pt = 'CPU do Radar (Namek)',
			},
			icon = 'Item dragonminez t2_radar_cpu.png',
			page = 'Dragon Radar',
		},
		[ 'dragonminez:tien_armor_boots' ] = {
			name = {
				en = 'Crane School GI Boots (Tien)',
				es = 'Botas del Gi de la Escuela Grulla (Ten Shin Han)',
				pt = 'Botas do Uniforme da Escola da Garça (Tien)',
			},
			icon = 'Item dragonminez tien_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:tien_armor_chestplate' ] = {
			name = {
				en = 'Crane School GI Chestplate (Tien)',
				es = 'Peto del Gi de la Escuela Grulla (Ten Shin Han)',
				pt = 'Peitoral do Uniforme da Escola da Garça (Tien)',
			},
			icon = 'Item dragonminez tien_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:tien_armor_leggings' ] = {
			name = {
				en = 'Crane School GI Leggings (Tien)',
				es = 'Pantalones del Gi de la Escuela Grulla (Ten Shin Han)',
				pt = 'Calças do Uniforme da Escola da Garça (Tien)',
			},
			icon = 'Item dragonminez tien_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:trunks_kid_armor_boots' ] = {
			name = {
				en = 'Green GI Boots (Trunks - Kid)',
				es = 'Botas del Gi Verde (Trunks - Niño)',
				pt = 'Botas do Uniforme Verde (Trunks - Kid)',
			},
			icon = 'Item dragonminez trunks_kid_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:trunks_kid_armor_chestplate' ] = {
			name = {
				en = 'Green GI Chestplate (Trunks - Kid)',
				es = 'Peto del Gi Verde (Trunks - Niño)',
				pt = 'Peitoral do Uniforme Verde (Trunks - Kid)',
			},
			icon = 'Item dragonminez trunks_kid_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:trunks_kid_armor_leggings' ] = {
			name = {
				en = 'Green GI Leggings (Trunks - Kid)',
				es = 'Pantalones del Gi Verde (Trunks - Niño)',
				pt = 'Calças do Uniforme Verde (Trunks - Kid)',
			},
			icon = 'Item dragonminez trunks_kid_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:trunks_super_armor_boots' ] = {
			name = {
				en = 'Capsule Corp Jacket Boots (Trunks - Super)',
				es = 'Botas de la Chaqueta Cápsula Corp. (Trunks - Super)',
				pt = 'Botas da Jaqueta da Corporação Cápsula (Trunks - Super)',
			},
			icon = 'Item dragonminez trunks_super_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:trunks_super_armor_chestplate' ] = {
			name = {
				en = 'Capsule Corp Jacket Chestplate (Trunks - Super)',
				es = 'Peto de la Chaqueta Cápsula Corp. (Trunks - Super)',
				pt = 'Peitoral da Jaqueta da Corporação Cápsula (Trunks - Super)',
			},
			icon = 'Item dragonminez trunks_super_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:trunks_super_armor_leggings' ] = {
			name = {
				en = 'Capsule Corp Jacket Leggings (Trunks - Super)',
				es = 'Pantalones de la Chaqueta Cápsula Corp. (Trunks - Super)',
				pt = 'Calças da Jaqueta da Corporação Cápsula (Trunks - Super)',
			},
			icon = 'Item dragonminez trunks_super_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:trunks_z_armor_boots' ] = {
			name = {
				en = 'Capsule Corp Jacket Boots (Trunks - DBZ)',
				es = 'Botas de la Chaqueta Cápsula Corp. (Trunks - DBZ)',
				pt = 'Botas da Jaqueta da Corporação Cápsula (Trunks - DBZ)',
			},
			icon = 'Item dragonminez trunks_z_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:trunks_z_armor_chestplate' ] = {
			name = {
				en = 'Capsule Corp Jacket Chestplate (Trunks - DBZ)',
				es = 'Peto de la Chaqueta Cápsula Corp. (Trunks - DBZ)',
				pt = 'Peitoral da Jaqueta da Corporação Cápsula (Trunks - DBZ)',
			},
			icon = 'Item dragonminez trunks_z_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:trunks_z_armor_leggings' ] = {
			name = {
				en = 'Capsule Corp Jacket Leggings (Trunks- DBZ)',
				es = 'Pantalones de la Chaqueta Cápsula Corp. (Trunks - DBZ)',
				pt = 'Calças da Jaqueta da Corporação Cápsula (Trunks - DBZ)',
			},
			icon = 'Item dragonminez trunks_z_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:turles_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Turles)',
				es = 'Botas de la Armadura Saiyajin (Turles)',
				pt = 'Botas da Armadura Saiyajin (Turles)',
			},
			icon = 'Item dragonminez turles_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:turles_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Turles)',
				es = 'Peto de la Armadura Saiyajin (Turles)',
				pt = 'Peitoral da Armadura Saiyajin (Turles)',
			},
			icon = 'Item dragonminez turles_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:turles_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Turles)',
				es = 'Pantalones de la Armadura Saiyajin (Turles)',
				pt = 'Calças da Armadura Saiyajin (Turles)',
			},
			icon = 'Item dragonminez turles_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:turtle_scale' ] = {
			name = {
				en = 'Turtle Scale',
				es = 'Escama de Tortuga',
				pt = 'Escama de Tartaruga',
			},
			icon = 'Item dragonminez turtle_scale.png',
			page = 'Farming',
		},
		[ 'dragonminez:vegeta_buu_armor_boots' ] = {
			name = {
				en = 'Blue Training Outfit Boots (Vegeta - Buu)',
				es = 'Botas del Traje de Entrenamiento Azul (Vegeta - Buu)',
				pt = 'Botas do Conjunto de Treino Azul (Vegeta - Boo)',
			},
			icon = 'Item dragonminez vegeta_buu_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_buu_armor_chestplate' ] = {
			name = {
				en = 'Blue Training Outfit (Vegeta - Buu)',
				es = 'Traje de Entrenamiento Azul (Vegeta - Buu)',
				pt = 'Conjunto de Treino Azul (Vegeta - Boo)',
			},
			icon = 'Item dragonminez vegeta_buu_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_buu_armor_leggings' ] = {
			name = {
				en = 'Blue Training Outfit Leggings (Vegeta - Buu)',
				es = 'Pantalones del Traje de Entrenamiento Azul (Vegeta - Buu)',
				pt = 'Calças do Conjunto de Treino Azul (Vegeta - Boo)',
			},
			icon = 'Item dragonminez vegeta_buu_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_gt_armor_boots' ] = {
			name = {
				en = 'Vegeta Boots (GT)',
				es = 'Botas de Vegeta (GT)',
				pt = 'Botas do Vegeta (GT)',
			},
			icon = 'Item dragonminez vegeta_gt_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_gt_armor_chestplate' ] = {
			name = {
				en = 'Vegeta Chestplate (GT)',
				es = 'Peto de Vegeta (GT)',
				pt = 'Peitoral do Vegeta (GT)',
			},
			icon = 'Item dragonminez vegeta_gt_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_gt_armor_leggings' ] = {
			name = {
				en = 'Vegeta Leggings (GT)',
				es = 'Pantalones de Vegeta (GT)',
				pt = 'Calças do Vegeta (GT)',
			},
			icon = 'Item dragonminez vegeta_gt_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_namek_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Vegeta - Namek)',
				es = 'Botas de la Armadura Saiyajin (Vegeta - Namek)',
				pt = 'Botas da Armadura Saiyajin (Vegeta - Namek)',
			},
			icon = 'Item dragonminez vegeta_namek_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_namek_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Vegeta - Namek)',
				es = 'Peto de la Armadura Saiyajin (Vegeta - Namek)',
				pt = 'Calças da Armadura Saiyajin (Vegeta - Namek)',
			},
			icon = 'Item dragonminez vegeta_namek_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_namek_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Vegeta - Namek)',
				es = 'Pantalones de la Armadura Saiyajin (Vegeta - Namek)',
				pt = 'Calças da Armadura Saiyajin (Vegeta - Namek)',
			},
			icon = 'Item dragonminez vegeta_namek_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_saiyan_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Vegeta - Saiyan)',
				es = 'Botas de la Armadura Saiyajin (Vegeta - Saiyajin)',
				pt = 'Botas da Armadura Saiyajin (Vegeta - Saiyajin)',
			},
			icon = 'Item dragonminez vegeta_saiyan_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_saiyan_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Vegeta - Saiyan)',
				es = 'Peto de la Armadura Saiyajin (Vegeta - Saiyajin)',
				pt = 'Peitoral da Armadura Saiyajin (Vegeta - Saiyajin)',
			},
			icon = 'Item dragonminez vegeta_saiyan_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_saiyan_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Vegeta - Saiyan)',
				es = 'Pantalones de la Armadura Saiyajin (Vegeta - Saiyajin)',
				pt = 'Calças da Armadura Saiyajin (Vegeta - Saiyajin)',
			},
			icon = 'Item dragonminez vegeta_saiyan_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_super_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Vegeta - Super)',
				es = 'Botas de la Armadura Saiyajin (Vegeta - Super)',
				pt = 'Botas da Armadura Saiyajin (Vegeta - Super)',
			},
			icon = 'Item dragonminez vegeta_super_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:vegeta_super_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Vegeta - Super)',
				es = 'Peto de la Armadura Saiyajin (Vegeta - Super)',
				pt = 'Peitoral da Armadura Saiyajin (Vegeta - Super)',
			},
			icon = 'Item dragonminez vegeta_super_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:vegeta_super_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Vegeta - Super)',
				es = 'Pantalones de la Armadura Saiyajin (Vegeta - Super)',
				pt = 'Calças da Armadura Saiyajin (Vegeta - Super)',
			},
			icon = 'Item dragonminez vegeta_super_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:vegeta_whis_armor_boots' ] = {
			name = {
				en = 'Whis Symbol GI Boots (Vegeta)',
				es = 'Botas del Gi con Símbolo Whis (Vegeta)',
				pt = 'Botas do Uniforme com Símbolo de Whis (Vegeta)',
			},
			icon = 'Item dragonminez vegeta_whis_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:vegeta_whis_armor_chestplate' ] = {
			name = {
				en = 'Whis Symbol GI Chestplate (Vegeta)',
				es = 'Peto del Gi con Símbolo Whis (Vegeta)',
				pt = 'Peitoral do Uniforme com Símbolo de Whis (Vegeta)',
			},
			icon = 'Item dragonminez vegeta_whis_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:vegeta_whis_armor_leggings' ] = {
			name = {
				en = 'Whis Symbol GI Leggings (Vegeta)',
				es = 'Pantalones del Gi con Símbolo Whis (Vegeta)',
				pt = 'Calças do Uniforme com Símbolo de Whis (Vegeta)',
			},
			icon = 'Item dragonminez vegeta_whis_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:vegeta_z_armor_boots' ] = {
			name = {
				en = 'Saiyan Armor Boots (Vegeta - Cell)',
				es = 'Botas de la Armadura Saiyajin (Vegeta - Cell)',
				pt = 'Botas da Armadura Saiyajin (Vegeta - Cell)',
			},
			icon = 'Item dragonminez vegeta_z_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_z_armor_chestplate' ] = {
			name = {
				en = 'Saiyan Armor Chestplate (Vegeta - Cell)',
				es = 'Peto de la Armadura Saiyajin (Vegeta - Cell)',
				pt = 'Peitoral da Armadura Saiyajin (Vegeta - Cell)',
			},
			icon = 'Item dragonminez vegeta_z_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegeta_z_armor_leggings' ] = {
			name = {
				en = 'Saiyan Armor Leggings (Vegeta - Cell)',
				es = 'Pantalones de la Armadura Saiyajin (Vegeta - Cell)',
				pt = 'Calças da Armadura Saiyajin (Vegeta - Cell)',
			},
			icon = 'Item dragonminez vegeta_z_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegetto_armor_boots' ] = {
			name = {
				en = 'Inverted Turtle Hermit School GI Boots (Vegito)',
				es = 'Botas del Gi Invertido de la Escuela Tortuga (Vegito)',
				pt = 'Botas do Uniforme Invertido da Escola da Tartaruga (Vegito)',
			},
			icon = 'Item dragonminez vegetto_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegetto_armor_chestplate' ] = {
			name = {
				en = 'Inverted Turtle Hermit School GI Chestplate (Vegito)',
				es = 'Peto del Gi Invertido de la Escuela Tortuga (Vegito)',
				pt = 'Peitoral do Uniforme Invertido da Escola da Tartaruga (Vegito)',
			},
			icon = 'Item dragonminez vegetto_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vegetto_armor_leggings' ] = {
			name = {
				en = 'Inverted Turtle Hermit School GI Leggings (Vegito)',
				es = 'Pantalones del Gi Invertido de la Escuela Tortuga (Vegito)',
				pt = 'Calças do Uniforme Invertido da Escola da Tartaruga (Vegito)',
			},
			icon = 'Item dragonminez vegetto_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:vergil_armor_boots' ] = {
			name = {
				en = 'The Alpha and the Omega Boots (Vergil)',
				es = 'Botas El Alfa y la Omega (Vergil)',
				pt = 'Botas do Alfa e Ômega (Vergil)',
			},
			icon = 'Item dragonminez vergil_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:vergil_armor_chestplate' ] = {
			name = {
				en = 'The Alpha and the Omega Chestplate (Vergil)',
				es = 'Peto El Alfa y la Omega (Vergil)',
				pt = 'Peitoral do Alfa e Ômega (Vergil)',
			},
			icon = 'Item dragonminez vergil_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:vergil_armor_leggings' ] = {
			name = {
				en = 'The Alpha and the Omega Leggings (Vergil)',
				es = 'Pantalones El Alfa y la Omega (Vergil)',
				pt = 'Calças do Alfa e Ômega (Vergil)',
			},
			icon = 'Item dragonminez vergil_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:videl_armor_boots' ] = {
			name = {
				en = 'Videl Boots',
				es = 'Botas de Videl',
				pt = 'Botas da Videl',
			},
			icon = 'Item dragonminez videl_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:videl_armor_chestplate' ] = {
			name = {
				en = 'Videl Chestplate',
				es = 'Peto de Videl',
				pt = 'Peitoral da Videl',
			},
			icon = 'Item dragonminez videl_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:videl_armor_leggings' ] = {
			name = {
				en = 'Videl Leggings',
				es = 'Pantalones de Videl',
				pt = 'Calças da Videl',
			},
			icon = 'Item dragonminez videl_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:warrior_clan_armor_boots' ] = {
			name = {
				en = 'DBOnline Boots (Warrior)',
				es = 'Botas DBOnline (Guerrero)',
				pt = 'Botas do Online (Guerreiro)',
			},
			icon = 'Item dragonminez warrior_clan_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:warrior_clan_armor_chestplate' ] = {
			name = {
				en = 'DBOnline Chestplate (Warrior)',
				es = 'Peto DBOnline (Guerrero)',
				pt = 'Peitoral do Online (Guerreiro)',
			},
			icon = 'Item dragonminez warrior_clan_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:warrior_clan_armor_leggings' ] = {
			name = {
				en = 'DBOnline Leggings (Warrior)',
				es = 'Pantalones DBOnline (Guerrero)',
				pt = 'Calças do Online (Guerreiro)',
			},
			icon = 'Item dragonminez warrior_clan_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:weight_piccolo_cape' ] = {
			name = {
				en = 'Weighted Cape',
				es = 'Capa con Pesas',
				pt = 'Capa Ponderada',
			},
			icon = 'Item dragonminez weight_piccolo_cape.png',
			page = 'Weights',
		},
		[ 'dragonminez:weight_turtle_shell' ] = {
			name = {
				en = 'Turtle Shell',
				es = 'Caparazón de Tortuga',
				pt = 'Casco de Tartaruga',
			},
			icon = 'Item dragonminez weight_turtle_shell.png',
			page = 'Weights',
		},
		[ 'dragonminez:whis_armor_boots' ] = {
			name = {
				en = 'Angel Boots (Whis)',
				es = 'Botas Ángel (Whis)',
				pt = 'Botas do Anjo (Whis)',
			},
			icon = 'Item dragonminez whis_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:whis_armor_chestplate' ] = {
			name = {
				en = 'Angel Chestplate (Whis)',
				es = 'Peto Ángel (Whis)',
				pt = 'Peitoral do Anjo (Whis)',
			},
			icon = 'Item dragonminez whis_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:whis_armor_leggings' ] = {
			name = {
				en = 'Angel Leggings (Whis)',
				es = 'Pantalones Ángel (Whis)',
				pt = 'Calças do Anjo (Whis)',
			},
			icon = 'Item dragonminez whis_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:wonder_majin_armor_boots' ] = {
			name = {
				en = 'DBOnline Boots (Wonder)',
				es = 'Botas DBOnline (Maravilla)',
				pt = 'Botas do Online (Maravilha)',
			},
			icon = 'Item dragonminez wonder_majin_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:wonder_majin_armor_chestplate' ] = {
			name = {
				en = 'DBOnline Chestplate (Wonder)',
				es = 'Peto DBOnline (Maravilla)',
				pt = 'Peitoral do Online (Maravilha)',
			},
			icon = 'Item dragonminez wonder_majin_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:wonder_majin_armor_leggings' ] = {
			name = {
				en = 'DBOnline Leggings (Wonder)',
				es = 'Pantalones DBOnline (Maravilla)',
				pt = 'Calças do Online (Maravilha)',
			},
			icon = 'Item dragonminez wonder_majin_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:workout_weights' ] = {
			name = {
				en = 'Workout Weights',
				es = 'Pesas de Entrenamiento',
				pt = 'Pesos de Treino',
			},
			icon = 'Item dragonminez workout_weights.png',
			page = 'Weights',
		},
		[ 'dragonminez:xeno_goku_armor_boots' ] = {
			name = {
				en = 'Time Patrol Boots (Goku Xeno)',
				es = 'Botas de la Patrulla del Tiempo (Goku Xeno)',
				pt = 'Botas da Patrulha do Tempo (Goku Xeno)',
			},
			icon = 'Item dragonminez xeno_goku_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:xeno_goku_armor_chestplate' ] = {
			name = {
				en = 'Time Patrol Chestplate (Goku Xeno)',
				es = 'Peto de la Patrulla del Tiempo (Goku Xeno)',
				pt = 'Peitoral da Patrulha do Tempo (Goku Xeno)',
			},
			icon = 'Item dragonminez xeno_goku_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:xeno_goku_armor_leggings' ] = {
			name = {
				en = 'Time Patrol Leggings (Goku Xeno)',
				es = 'Pantalones de la Patrulla del Tiempo (Goku Xeno)',
				pt = 'Calças da Patrulha do Tempo (Goku Xeno)',
			},
			icon = 'Item dragonminez xeno_goku_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:xeno_goku_patreon_armor_boots' ] = {
			name = {
				en = 'Time Patrol Boots (Goku Xeno Alternative)',
				es = 'Botas de la Patrulla del Tiempo (Goku Xeno Alternativo)',
				pt = 'Botas da Patrulha do Tempo (Goku Xeno Alternativo)',
			},
			icon = 'Item dragonminez xeno_goku_patreon_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:xeno_goku_patreon_armor_chestplate' ] = {
			name = {
				en = 'Time Patrol Chestplate (Goku Xeno Alternative)',
				es = 'Peto de la Patrulla del Tiempo (Goku Xeno Alternativo)',
				pt = 'Peitoral da Patrulha do Tempo (Goku Xeno Alternativo)',
			},
			icon = 'Item dragonminez xeno_goku_patreon_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:xeno_goku_patreon_armor_leggings' ] = {
			name = {
				en = 'Time Patrol Leggings (Goku Xeno Alternative)',
				es = 'Pantalones de la Patrulla del Tiempo (Goku Xeno Alternativo)',
				pt = 'Calças da Patrulha do Tempo (Goku Xeno Alternativo)',
			},
			icon = 'Item dragonminez xeno_goku_patreon_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:yajirobe_katana' ] = {
			name = {
				en = 'Yajirobe\'s Katana',
				es = 'Katana de Yajirobe',
				pt = 'Katana do Yajirobe',
			},
			icon = 'Item dragonminez yajirobe_katana.png',
			page = 'Yajirobe\'s Katana',
		},
		[ 'dragonminez:yardrat_armor_boots' ] = {
			name = {
				en = 'Yardrat Outfit Boots (Goku)',
				es = 'Botas del Traje Yardrat (Goku)',
				pt = 'Botas do Traje de Yardrat (Goku)',
			},
			icon = 'Item dragonminez yardrat_armor_boots.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:yardrat_armor_chestplate' ] = {
			name = {
				en = 'Yardrat Outfit Chestplate (Goku)',
				es = 'Peto del Traje Yardrat (Goku)',
				pt = 'Peitoral do Traje de Yardrat (Goku)',
			},
			icon = 'Item dragonminez yardrat_armor_chestplate.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:yardrat_armor_leggings' ] = {
			name = {
				en = 'Yardrat Outfit Leggings (Goku)',
				es = 'Pantalones del Traje Yardrat (Goku)',
				pt = 'Calças do Traje de Yardrat (Goku)',
			},
			icon = 'Item dragonminez yardrat_armor_leggings.png',
			page = 'Z Armor Sets',
		},
		[ 'dragonminez:yellow_capsule' ] = {
			name = {
				en = 'Yellow Capsule',
				es = 'Yellow Capsule',
				pt = 'Yellow Capsule',
			},
			icon = 'Item dragonminez yellow_capsule.png',
			page = 'Capsules',
		},
		[ 'dragonminez:zamasu_armor_boots' ] = {
			name = {
				en = 'Kaioshin Boots (Zamasu)',
				es = 'Botas de Kaioshin (Zamasu)',
				pt = 'Botas Kaioshin (Zamasu)',
			},
			icon = 'Item dragonminez zamasu_armor_boots.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:zamasu_armor_chestplate' ] = {
			name = {
				en = 'Kaioshin Chestplate (Zamasu)',
				es = 'Peto de Kaioshin (Zamasu)',
				pt = 'Peitoral Kaioshin (Zamasu)',
			},
			icon = 'Item dragonminez zamasu_armor_chestplate.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:zamasu_armor_leggings' ] = {
			name = {
				en = 'Kaioshin Leggings (Zamasu)',
				es = 'Pantalones de Kaioshin (Zamasu)',
				pt = 'Calças Kaioshin (Zamasu)',
			},
			icon = 'Item dragonminez zamasu_armor_leggings.png',
			page = 'Super Armor Sets',
		},
		[ 'dragonminez:zenkai_lotus' ] = {
			name = {
				en = 'Zenkai Lotus',
				es = 'Loto Zenkai',
				pt = 'Lótus Zenkai',
			},
			icon = 'Item dragonminez zenkai_lotus.png',
			page = 'Farming',
		},
		[ 'minecraft:amethyst_shard' ] = {
			name = {
				en = 'Amethyst Shard',
				es = 'Fragmento de amatista',
				pt = 'Fragmento de Ametista',
			},
			icon = 'Item minecraft amethyst_shard.png',
			url = 'https://minecraft.wiki/w/Amethyst_Shard',
		},
		[ 'minecraft:anvil' ] = {
			name = {
				en = 'Anvil',
				es = 'Yunque',
				pt = 'Bigorna',
			},
			icon = 'Item minecraft anvil.png',
			url = 'https://minecraft.wiki/w/Anvil',
		},
		[ 'minecraft:beetroot_seeds' ] = {
			name = {
				en = 'Beetroot Seeds',
				es = 'Semillas de remolacha',
				pt = 'Sementes de Beterraba',
			},
			icon = 'Item minecraft beetroot_seeds.png',
			url = 'https://minecraft.wiki/w/Beetroot_Seeds',
		},
		[ 'minecraft:black_dye' ] = {
			name = {
				en = 'Black Dye',
				es = 'Tinte negro',
				pt = 'Corante Preto',
			},
			icon = 'Item minecraft black_dye.png',
			url = 'https://minecraft.wiki/w/Black_Dye',
		},
		[ 'minecraft:black_wool' ] = {
			name = {
				en = 'Black Wool',
				es = 'Lana negra',
				pt = 'Lã Preta',
			},
			icon = 'Item minecraft black_wool.png',
			url = 'https://minecraft.wiki/w/Black_Wool',
		},
		[ 'minecraft:blast_furnace' ] = {
			name = {
				en = 'Blast Furnace',
				es = 'Alto horno',
				pt = 'Alto-Forno',
			},
			icon = 'Item minecraft blast_furnace.png',
			url = 'https://minecraft.wiki/w/Blast_Furnace',
		},
		[ 'minecraft:blaze_powder' ] = {
			name = {
				en = 'Blaze Powder',
				es = 'Polvo de blaze',
				pt = 'Pó de Blaze',
			},
			icon = 'Item minecraft blaze_powder.png',
			url = 'https://minecraft.wiki/w/Blaze_Powder',
		},
		[ 'minecraft:blaze_rod' ] = {
			name = {
				en = 'Blaze Rod',
				es = 'Vara de blaze',
				pt = 'Vara de Blaze',
			},
			icon = 'Item minecraft blaze_rod.png',
			url = 'https://minecraft.wiki/w/Blaze_Rod',
		},
		[ 'minecraft:blue_concrete' ] = {
			name = {
				en = 'Blue Concrete',
				es = 'Hormigón azul',
				pt = 'Concreto Azul',
			},
			icon = 'Item minecraft blue_concrete.png',
			url = 'https://minecraft.wiki/w/Blue_Concrete',
		},
		[ 'minecraft:blue_dye' ] = {
			name = {
				en = 'Blue Dye',
				es = 'Tinte azul',
				pt = 'Corante Azul',
			},
			icon = 'Item minecraft blue_dye.png',
			url = 'https://minecraft.wiki/w/Blue_Dye',
		},
		[ 'minecraft:blue_stained_glass_pane' ] = {
			name = {
				en = 'Blue Stained Glass Pane',
				es = 'Panel de cristal tintado de azul',
				pt = 'Vidraça Azul',
			},
			icon = 'Item minecraft blue_stained_glass_pane.png',
			url = 'https://minecraft.wiki/w/Blue_Stained_Glass_Pane',
		},
		[ 'minecraft:brewing_stand' ] = {
			name = {
				en = 'Brewing Stand',
				es = 'Soporte para pociones',
				pt = 'Suporte de Poções',
			},
			icon = 'Item minecraft brewing_stand.png',
			url = 'https://minecraft.wiki/w/Brewing_Stand',
		},
		[ 'minecraft:brown_dye' ] = {
			name = {
				en = 'Brown Dye',
				es = 'Tinte marrón',
				pt = 'Corante Marrom',
			},
			icon = 'Item minecraft brown_dye.png',
			url = 'https://minecraft.wiki/w/Brown_Dye',
		},
		[ 'minecraft:campfire' ] = {
			name = {
				en = 'Campfire',
				es = 'Hoguera',
				pt = 'Fogueira',
			},
			icon = 'Item minecraft campfire.png',
			url = 'https://minecraft.wiki/w/Campfire',
		},
		[ 'minecraft:charcoal' ] = {
			name = {
				en = 'Charcoal',
				es = 'Carbón vegetal',
				pt = 'Carvão Vegetal',
			},
			icon = 'Item minecraft charcoal.png',
			url = 'https://minecraft.wiki/w/Charcoal',
		},
		[ 'minecraft:clay_ball' ] = {
			name = {
				en = 'Clay Ball',
				es = 'Bola de arcilla',
				pt = 'Bola de Argila',
			},
			icon = 'Item minecraft clay_ball.png',
			url = 'https://minecraft.wiki/w/Clay_Ball',
		},
		[ 'minecraft:coal' ] = {
			name = {
				en = 'Coal',
				es = 'Carbón',
				pt = 'Carvão',
			},
			icon = 'Item minecraft coal.png',
			url = 'https://minecraft.wiki/w/Coal',
		},
		[ 'minecraft:coal_block' ] = {
			name = {
				en = 'Block of Coal',
				es = 'Bloque de carbón',
				pt = 'Bloco de Carvão',
			},
			icon = 'Item minecraft coal_block.png',
			url = 'https://minecraft.wiki/w/Block_of_Coal',
		},
		[ 'minecraft:comparator' ] = {
			name = {
				en = 'Redstone Comparator',
				es = 'Comparador de redstone',
				pt = 'Comparador de Redstone',
			},
			icon = 'Item minecraft comparator.png',
			url = 'https://minecraft.wiki/w/Redstone_Comparator',
		},
		[ 'minecraft:copper_ingot' ] = {
			name = {
				en = 'Copper Ingot',
				es = 'Lingote de cobre',
				pt = 'Lingote de Cobre',
			},
			icon = 'Item minecraft copper_ingot.png',
			url = 'https://minecraft.wiki/w/Copper_Ingot',
		},
		[ 'minecraft:crafting_table' ] = {
			name = {
				en = 'Crafting Table',
				es = 'Mesa de trabajo',
				pt = 'Bancada de Trabalho',
			},
			icon = 'Item minecraft crafting_table.png',
			url = 'https://minecraft.wiki/w/Crafting_Table',
		},
		[ 'minecraft:crying_obsidian' ] = {
			name = {
				en = 'Crying Obsidian',
				es = 'Obsidiana llorosa',
				pt = 'Obsidiana Chorona',
			},
			icon = 'Item minecraft crying_obsidian.png',
			url = 'https://minecraft.wiki/w/Crying_Obsidian',
		},
		[ 'minecraft:cyan_dye' ] = {
			name = {
				en = 'Cyan Dye',
				es = 'Tinte cian',
				pt = 'Corante Ciano',
			},
			icon = 'Item minecraft cyan_dye.png',
			url = 'https://minecraft.wiki/w/Cyan_Dye',
		},
		[ 'minecraft:cyan_wool' ] = {
			name = {
				en = 'Cyan Wool',
				es = 'Lana cian',
				pt = 'Lã Ciano',
			},
			icon = 'Item minecraft cyan_wool.png',
			url = 'https://minecraft.wiki/w/Cyan_Wool',
		},
		[ 'minecraft:diamond' ] = {
			name = {
				en = 'Diamond',
				es = 'Diamante',
				pt = 'Diamante',
			},
			icon = 'Item minecraft diamond.png',
			url = 'https://minecraft.wiki/w/Diamond',
		},
		[ 'minecraft:diamond_chestplate' ] = {
			name = {
				en = 'Diamond Chestplate',
				es = 'Peto de diamante',
				pt = 'Peitoral de Diamante',
			},
			icon = 'Item minecraft diamond_chestplate.png',
			url = 'https://minecraft.wiki/w/Diamond_Chestplate',
		},
		[ 'minecraft:emerald' ] = {
			name = {
				en = 'Emerald',
				es = 'Esmeralda',
				pt = 'Esmeralda',
			},
			icon = 'Item minecraft emerald.png',
			url = 'https://minecraft.wiki/w/Emerald',
		},
		[ 'minecraft:furnace' ] = {
			name = {
				en = 'Furnace',
				es = 'Horno',
				pt = 'Fornalha',
			},
			icon = 'Item minecraft furnace.png',
			url = 'https://minecraft.wiki/w/Furnace',
		},
		[ 'minecraft:glass_pane' ] = {
			name = {
				en = 'Glass Pane',
				es = 'Panel de cristal',
				pt = 'Vidraça',
			},
			icon = 'Item minecraft glass_pane.png',
			url = 'https://minecraft.wiki/w/Glass_Pane',
		},
		[ 'minecraft:glowstone_dust' ] = {
			name = {
				en = 'Glowstone Dust',
				es = 'Polvo de piedra luminosa',
				pt = 'Pó de Pedra Luminosa',
			},
			icon = 'Item minecraft glowstone_dust.png',
			url = 'https://minecraft.wiki/w/Glowstone_Dust',
		},
		[ 'minecraft:gold_ingot' ] = {
			name = {
				en = 'Gold Ingot',
				es = 'Lingote de oro',
				pt = 'Lingote de Ouro',
			},
			icon = 'Item minecraft gold_ingot.png',
			url = 'https://minecraft.wiki/w/Gold_Ingot',
		},
		[ 'minecraft:gold_nugget' ] = {
			name = {
				en = 'Gold Nugget',
				es = 'Pepita de oro',
				pt = 'Pepita de Ouro',
			},
			icon = 'Item minecraft gold_nugget.png',
			url = 'https://minecraft.wiki/w/Gold_Nugget',
		},
		[ 'minecraft:golden_apple' ] = {
			name = {
				en = 'Golden Apple',
				es = 'Manzana dorada',
				pt = 'Maçã Dourada',
			},
			icon = 'Item minecraft golden_apple.png',
			url = 'https://minecraft.wiki/w/Golden_Apple',
		},
		[ 'minecraft:gray_dye' ] = {
			name = {
				en = 'Gray Dye',
				es = 'Tinte gris',
				pt = 'Corante Cinza',
			},
			icon = 'Item minecraft gray_dye.png',
			url = 'https://minecraft.wiki/w/Gray_Dye',
		},
		[ 'minecraft:green_concrete' ] = {
			name = {
				en = 'Green Concrete',
				es = 'Hormigón verde',
				pt = 'Concreto Verde',
			},
			icon = 'Item minecraft green_concrete.png',
			url = 'https://minecraft.wiki/w/Green_Concrete',
		},
		[ 'minecraft:green_dye' ] = {
			name = {
				en = 'Green Dye',
				es = 'Tinte verde',
				pt = 'Corante Verde',
			},
			icon = 'Item minecraft green_dye.png',
			url = 'https://minecraft.wiki/w/Green_Dye',
		},
		[ 'minecraft:green_stained_glass_pane' ] = {
			name = {
				en = 'Green Stained Glass Pane',
				es = 'Panel de cristal tintado de verde',
				pt = 'Vidraça Verde',
			},
			icon = 'Item minecraft green_stained_glass_pane.png',
			url = 'https://minecraft.wiki/w/Green_Stained_Glass_Pane',
		},
		[ 'minecraft:gunpowder' ] = {
			name = {
				en = 'Gunpowder',
				es = 'Pólvora',
				pt = 'Pólvora',
			},
			icon = 'Item minecraft gunpowder.png',
			url = 'https://minecraft.wiki/w/Gunpowder',
		},
		[ 'minecraft:heavy_weighted_pressure_plate' ] = {
			name = {
				en = 'Heavy Weighted Pressure Plate',
				es = 'Placa de presión para peso elevado',
				pt = 'Placa de Pressão de Pesagem Pesada',
			},
			icon = 'Item minecraft heavy_weighted_pressure_plate.png',
			url = 'https://minecraft.wiki/w/Heavy_Weighted_Pressure_Plate',
		},
		[ 'minecraft:iron_block' ] = {
			name = {
				en = 'Block of Iron',
				es = 'Bloque de hierro',
				pt = 'Bloco de Ferro',
			},
			icon = 'Item minecraft iron_block.png',
			url = 'https://minecraft.wiki/w/Block_of_Iron',
		},
		[ 'minecraft:iron_boots' ] = {
			name = {
				en = 'Iron Boots',
				es = 'Botas de hierro',
				pt = 'Botas de Ferro',
			},
			icon = 'Item minecraft iron_boots.png',
			url = 'https://minecraft.wiki/w/Iron_Boots',
		},
		[ 'minecraft:iron_chestplate' ] = {
			name = {
				en = 'Iron Chestplate',
				es = 'Peto de hierro',
				pt = 'Peitoral de Ferro',
			},
			icon = 'Item minecraft iron_chestplate.png',
			url = 'https://minecraft.wiki/w/Iron_Chestplate',
		},
		[ 'minecraft:iron_helmet' ] = {
			name = {
				en = 'Iron Helmet',
				es = 'Casco de hierro',
				pt = 'Capacete de Ferro',
			},
			icon = 'Item minecraft iron_helmet.png',
			url = 'https://minecraft.wiki/w/Iron_Helmet',
		},
		[ 'minecraft:iron_ingot' ] = {
			name = {
				en = 'Iron Ingot',
				es = 'Lingote de hierro',
				pt = 'Lingote de Ferro',
			},
			icon = 'Item minecraft iron_ingot.png',
			url = 'https://minecraft.wiki/w/Iron_Ingot',
		},
		[ 'minecraft:iron_leggings' ] = {
			name = {
				en = 'Iron Leggings',
				es = 'Grebas de hierro',
				pt = 'Calças de Ferro',
			},
			icon = 'Item minecraft iron_leggings.png',
			url = 'https://minecraft.wiki/w/Iron_Leggings',
		},
		[ 'minecraft:lapis_lazuli' ] = {
			name = {
				en = 'Lapis Lazuli',
				es = 'Lapislázuli',
				pt = 'Lápis-Lazúli',
			},
			icon = 'Item minecraft lapis_lazuli.png',
			url = 'https://minecraft.wiki/w/Lapis_Lazuli',
		},
		[ 'minecraft:lava_bucket' ] = {
			name = {
				en = 'Lava Bucket',
				es = 'Cubo con lava',
				pt = 'Balde de Lava',
			},
			icon = 'Item minecraft lava_bucket.png',
			url = 'https://minecraft.wiki/w/Lava_Bucket',
		},
		[ 'minecraft:leather' ] = {
			name = {
				en = 'Leather',
				es = 'Cuero',
				pt = 'Couro',
			},
			icon = 'Item minecraft leather.png',
			url = 'https://minecraft.wiki/w/Leather',
		},
		[ 'minecraft:light_blue_dye' ] = {
			name = {
				en = 'Light Blue Dye',
				es = 'Tinte azul claro',
				pt = 'Corante Azul-Claro',
			},
			icon = 'Item minecraft light_blue_dye.png',
			url = 'https://minecraft.wiki/w/Light_Blue_Dye',
		},
		[ 'minecraft:light_gray_dye' ] = {
			name = {
				en = 'Light Gray Dye',
				es = 'Tinte gris claro',
				pt = 'Corante Cinza-Claro',
			},
			icon = 'Item minecraft light_gray_dye.png',
			url = 'https://minecraft.wiki/w/Light_Gray_Dye',
		},
		[ 'minecraft:lime_dye' ] = {
			name = {
				en = 'Lime Dye',
				es = 'Tinte verde lima',
				pt = 'Corante Verde-Limão',
			},
			icon = 'Item minecraft lime_dye.png',
			url = 'https://minecraft.wiki/w/Lime_Dye',
		},
		[ 'minecraft:magenta_dye' ] = {
			name = {
				en = 'Magenta Dye',
				es = 'Tinte magenta',
				pt = 'Corante Magenta',
			},
			icon = 'Item minecraft magenta_dye.png',
			url = 'https://minecraft.wiki/w/Magenta_Dye',
		},
		[ 'minecraft:melon_seeds' ] = {
			name = {
				en = 'Melon Seeds',
				es = 'Semillas de sandía',
				pt = 'Sementes de Melancia',
			},
			icon = 'Item minecraft melon_seeds.png',
			url = 'https://minecraft.wiki/w/Melon_Seeds',
		},
		[ 'minecraft:minecart' ] = {
			name = {
				en = 'Minecart',
				es = 'Vagoneta',
				pt = 'Carrinho de Mina',
			},
			icon = 'Item minecraft minecart.png',
			url = 'https://minecraft.wiki/w/Minecart',
		},
		[ 'minecraft:netherite_axe' ] = {
			name = {
				en = 'Netherite Axe',
				es = 'Hacha de netherita',
				pt = 'Machado de Netherita',
			},
			icon = 'Item minecraft netherite_axe.png',
			url = 'https://minecraft.wiki/w/Netherite_Axe',
		},
		[ 'minecraft:netherite_hoe' ] = {
			name = {
				en = 'Netherite Hoe',
				es = 'Azada de netherita',
				pt = 'Enxada de Netherita',
			},
			icon = 'Item minecraft netherite_hoe.png',
			url = 'https://minecraft.wiki/w/Netherite_Hoe',
		},
		[ 'minecraft:netherite_pickaxe' ] = {
			name = {
				en = 'Netherite Pickaxe',
				es = 'Pico de netherita',
				pt = 'Picareta de Netherita',
			},
			icon = 'Item minecraft netherite_pickaxe.png',
			url = 'https://minecraft.wiki/w/Netherite_Pickaxe',
		},
		[ 'minecraft:netherite_scrap' ] = {
			name = {
				en = 'Netherite Scrap',
				es = 'Fragmentos de netherita',
				pt = 'Fragmentos de Netherita',
			},
			icon = 'Item minecraft netherite_scrap.png',
			url = 'https://minecraft.wiki/w/Netherite_Scrap',
		},
		[ 'minecraft:netherite_shovel' ] = {
			name = {
				en = 'Netherite Shovel',
				es = 'Pala de netherita',
				pt = 'Pá de Netherita',
			},
			icon = 'Item minecraft netherite_shovel.png',
			url = 'https://minecraft.wiki/w/Netherite_Shovel',
		},
		[ 'minecraft:observer' ] = {
			name = {
				en = 'Observer',
				es = 'Observador',
				pt = 'Observador',
			},
			icon = 'Item minecraft observer.png',
			url = 'https://minecraft.wiki/w/Observer',
		},
		[ 'minecraft:orange_dye' ] = {
			name = {
				en = 'Orange Dye',
				es = 'Tinte naranja',
				pt = 'Corante Laranja',
			},
			icon = 'Item minecraft orange_dye.png',
			url = 'https://minecraft.wiki/w/Orange_Dye',
		},
		[ 'minecraft:paper' ] = {
			name = {
				en = 'Paper',
				es = 'Papel',
				pt = 'Papel',
			},
			icon = 'Item minecraft paper.png',
			url = 'https://minecraft.wiki/w/Paper',
		},
		[ 'minecraft:pink_dye' ] = {
			name = {
				en = 'Pink Dye',
				es = 'Tinte rosa',
				pt = 'Corante Rosa',
			},
			icon = 'Item minecraft pink_dye.png',
			url = 'https://minecraft.wiki/w/Pink_Dye',
		},
		[ 'minecraft:potion.curative' ] = {
			name = {
				en = 'Curative Flask',
				es = 'Curative Flask',
				pt = 'Curative Flask',
			},
			icon = 'Item minecraft potion.curative.png',
			page = 'Farming#Curative Flask',
		},
		[ 'minecraft:potion.regeneration' ] = {
			name = {
				en = 'Potion of Regeneration',
				es = 'Poción de regeneración',
				pt = 'Poção de Regeneração',
			},
			icon = 'Item minecraft potion.regeneration.png',
			url = 'https://minecraft.wiki/w/Potion_of_Regeneration',
		},
		[ 'minecraft:potion.water' ] = {
			name = {
				en = 'Water Bottle',
				es = 'Frasco con agua',
				pt = 'Frasco de Água',
			},
			icon = 'Item minecraft potion.water.png',
			url = 'https://minecraft.wiki/w/Water_Bottle',
		},
		[ 'minecraft:pumpkin_seeds' ] = {
			name = {
				en = 'Pumpkin Seeds',
				es = 'Semillas de calabaza',
				pt = 'Sementes de Abóbora',
			},
			icon = 'Item minecraft pumpkin_seeds.png',
			url = 'https://minecraft.wiki/w/Pumpkin_Seeds',
		},
		[ 'minecraft:purple_dye' ] = {
			name = {
				en = 'Purple Dye',
				es = 'Tinte morado',
				pt = 'Corante Roxo',
			},
			icon = 'Item minecraft purple_dye.png',
			url = 'https://minecraft.wiki/w/Purple_Dye',
		},
		[ 'minecraft:purple_stained_glass_pane' ] = {
			name = {
				en = 'Purple Stained Glass Pane',
				es = 'Panel de cristal tintado de morado',
				pt = 'Vidraça Roxa',
			},
			icon = 'Item minecraft purple_stained_glass_pane.png',
			url = 'https://minecraft.wiki/w/Purple_Stained_Glass_Pane',
		},
		[ 'minecraft:quartz_block' ] = {
			name = {
				en = 'Block of Quartz',
				es = 'Cuarzo',
				pt = 'Bloco de Quartzo',
			},
			icon = 'Item minecraft quartz_block.png',
			url = 'https://minecraft.wiki/w/Block_of_Quartz',
		},
		[ 'minecraft:quartz_slab' ] = {
			name = {
				en = 'Quartz Slab',
				es = 'Losa de cuarzo',
				pt = 'Laje de Quartzo',
			},
			icon = 'Item minecraft quartz_slab.png',
			url = 'https://minecraft.wiki/w/Quartz_Slab',
		},
		[ 'minecraft:red_dye' ] = {
			name = {
				en = 'Red Dye',
				es = 'Tinte rojo',
				pt = 'Corante Vermelho',
			},
			icon = 'Item minecraft red_dye.png',
			url = 'https://minecraft.wiki/w/Red_Dye',
		},
		[ 'minecraft:red_stained_glass_pane' ] = {
			name = {
				en = 'Red Stained Glass Pane',
				es = 'Panel de cristal tintado de rojo',
				pt = 'Vidraça Vermelha',
			},
			icon = 'Item minecraft red_stained_glass_pane.png',
			url = 'https://minecraft.wiki/w/Red_Stained_Glass_Pane',
		},
		[ 'minecraft:red_wool' ] = {
			name = {
				en = 'Red Wool',
				es = 'Lana roja',
				pt = 'Lã Vermelha',
			},
			icon = 'Item minecraft red_wool.png',
			url = 'https://minecraft.wiki/w/Red_Wool',
		},
		[ 'minecraft:redstone' ] = {
			name = {
				en = 'Redstone Dust',
				es = 'Polvo de redstone',
				pt = 'Pó de Redstone',
			},
			icon = 'Item minecraft redstone.png',
			url = 'https://minecraft.wiki/w/Redstone_Dust',
		},
		[ 'minecraft:redstone_torch' ] = {
			name = {
				en = 'Redstone Torch',
				es = 'Antorcha de redstone',
				pt = 'Tocha de Redstone',
			},
			icon = 'Item minecraft redstone_torch.png',
			url = 'https://minecraft.wiki/w/Redstone_Torch',
		},
		[ 'minecraft:repeater' ] = {
			name = {
				en = 'Redstone Repeater',
				es = 'Repetidor de redstone',
				pt = 'Repetidor de Redstone',
			},
			icon = 'Item minecraft repeater.png',
			url = 'https://minecraft.wiki/w/Redstone_Repeater',
		},
		[ 'minecraft:scute' ] = {
			name = {
				en = 'Scute',
				es = 'Escama',
				pt = 'Escama',
			},
			icon = 'Item minecraft scute.png',
			url = 'https://minecraft.wiki/w/Scute',
		},
		[ 'minecraft:shears' ] = {
			name = {
				en = 'Shears',
				es = 'Tijeras',
				pt = 'Tesoura',
			},
			icon = 'Item minecraft shears.png',
			url = 'https://minecraft.wiki/w/Shears',
		},
		[ 'minecraft:smithing_table' ] = {
			name = {
				en = 'Smithing Table',
				es = 'Mesa de herrería',
				pt = 'Bancada de Ferraria',
			},
			icon = 'Item minecraft smithing_table.png',
			url = 'https://minecraft.wiki/w/Smithing_Table',
		},
		[ 'minecraft:smoker' ] = {
			name = {
				en = 'Smoker',
				es = 'Ahumador',
				pt = 'Defumador',
			},
			icon = 'Item minecraft smoker.png',
			url = 'https://minecraft.wiki/w/Smoker',
		},
		[ 'minecraft:stick' ] = {
			name = {
				en = 'Stick',
				es = 'Palo',
				pt = 'Graveto',
			},
			icon = 'Item minecraft stick.png',
			url = 'https://minecraft.wiki/w/Stick',
		},
		[ 'minecraft:stone_button' ] = {
			name = {
				en = 'Stone Button',
				es = 'Botón de piedra',
				pt = 'Botão de Pedra',
			},
			icon = 'Item minecraft stone_button.png',
			url = 'https://minecraft.wiki/w/Stone_Button',
		},
		[ 'minecraft:string' ] = {
			name = {
				en = 'String',
				es = 'Hilo',
				pt = 'Linha',
			},
			icon = 'Item minecraft string.png',
			url = 'https://minecraft.wiki/w/String',
		},
		[ 'minecraft:wheat' ] = {
			name = {
				en = 'Wheat',
				es = 'Trigo',
				pt = 'Trigo',
			},
			icon = 'Item minecraft wheat.png',
			url = 'https://minecraft.wiki/w/Wheat',
		},
		[ 'minecraft:wheat_seeds' ] = {
			name = {
				en = 'Wheat Seeds',
				es = 'Semillas de trigo',
				pt = 'Sementes de Trigo',
			},
			icon = 'Item minecraft wheat_seeds.png',
			url = 'https://minecraft.wiki/w/Wheat_Seeds',
		},
		[ 'minecraft:white_dye' ] = {
			name = {
				en = 'White Dye',
				es = 'Tinte blanco',
				pt = 'Corante Branco',
			},
			icon = 'Item minecraft white_dye.png',
			url = 'https://minecraft.wiki/w/White_Dye',
		},
		[ 'minecraft:white_wool' ] = {
			name = {
				en = 'White Wool',
				es = 'Lana blanca',
				pt = 'Lã Branca',
			},
			icon = 'Item minecraft white_wool.png',
			url = 'https://minecraft.wiki/w/White_Wool',
		},
		[ 'minecraft:yellow_dye' ] = {
			name = {
				en = 'Yellow Dye',
				es = 'Tinte amarillo',
				pt = 'Corante Amarelo',
			},
			icon = 'Item minecraft yellow_dye.png',
			url = 'https://minecraft.wiki/w/Yellow_Dye',
		},
	},
	recipes = {
		[ 'blasting/dragonminez:gete_scrap' ] = {
			kind = 'blasting',
			slots = {
				input = {
					'dragonminez:gete_debris_ore',
				},
			},
			result = {
				'dragonminez:gete_scrap',
			},
			time = 100,
		},
		[ 'blasting/dragonminez:kikono_shard' ] = {
			kind = 'blasting',
			slots = {
				input = {
					'dragonminez:namek_kikono_ore',
				},
			},
			result = {
				'dragonminez:kikono_shard',
			},
			time = 100,
			alternate = true,
		},
		[ 'blasting/minecraft:coal' ] = {
			kind = 'blasting',
			slots = {
				input = {
					'dragonminez:namek_coal_ore',
					'dragonminez:namek_deepslate_coal_ore',
				},
			},
			result = {
				'minecraft:coal',
			},
			time = 100,
			alternate = true,
		},
		[ 'blasting/minecraft:copper_ingot' ] = {
			kind = 'blasting',
			slots = {
				input = {
					'dragonminez:namek_copper_ore',
					'dragonminez:namek_deepslate_copper_ore',
				},
			},
			result = {
				'minecraft:copper_ingot',
			},
			time = 100,
		},
		[ 'blasting/minecraft:diamond' ] = {
			kind = 'blasting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_diamond_ore',
					'dragonminez:namek_diamond_ore',
				},
			},
			result = {
				'minecraft:diamond',
			},
			time = 100,
			alternate = true,
		},
		[ 'blasting/minecraft:emerald' ] = {
			kind = 'blasting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_emerald_ore',
					'dragonminez:namek_emerald_ore',
				},
			},
			result = {
				'minecraft:emerald',
			},
			time = 100,
			alternate = true,
		},
		[ 'blasting/minecraft:gold_ingot' ] = {
			kind = 'blasting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_gold_ore',
					'dragonminez:namek_gold_ore',
				},
			},
			result = {
				'minecraft:gold_ingot',
			},
			time = 100,
		},
		[ 'blasting/minecraft:iron_ingot' ] = {
			kind = 'blasting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_iron_ore',
					'dragonminez:namek_iron_ore',
				},
			},
			result = {
				'minecraft:iron_ingot',
			},
			time = 100,
		},
		[ 'blasting/minecraft:lapis_lazuli' ] = {
			kind = 'blasting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_lapis_ore',
					'dragonminez:namek_lapis_ore',
				},
			},
			result = {
				'minecraft:lapis_lazuli',
			},
			time = 100,
			alternate = true,
		},
		[ 'blasting/minecraft:redstone' ] = {
			kind = 'blasting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_redstone_ore',
					'dragonminez:namek_redstone_ore',
				},
			},
			result = {
				'minecraft:redstone',
			},
			time = 100,
			alternate = true,
		},
		[ 'brewing/curative_flask' ] = {
			kind = 'brewing',
			slots = {
				ingredient = {
					'dragonminez:namek_moss',
				},
				bottle1 = {
					'minecraft:potion.water',
				},
				bottle2 = {
					'minecraft:potion.water',
				},
				bottle3 = {
					'minecraft:potion.water',
				},
			},
			result = {
				'minecraft:potion.curative',
			},
			count = 3,
		},
		[ 'brewing/heart_medicine' ] = {
			kind = 'brewing',
			slots = {
				ingredient = {
					'dragonminez:senzu_bean',
				},
				bottle1 = {
					'minecraft:potion.regeneration',
				},
				bottle2 = {
					'minecraft:potion.regeneration',
				},
				bottle3 = {
					'minecraft:potion.regeneration',
				},
			},
			result = {
				'dragonminez:heart_medicine',
			},
			count = 3,
		},
		[ 'campfire/dragonminez:cooked_baby_dino_meat' ] = {
			kind = 'campfire',
			slots = {
				input = {
					'dragonminez:raw_baby_dino_meat',
				},
			},
			result = {
				'dragonminez:cooked_baby_dino_meat',
			},
			time = 600,
		},
		[ 'campfire/dragonminez:cooked_dino_meat' ] = {
			kind = 'campfire',
			slots = {
				input = {
					'dragonminez:raw_dino_meat',
				},
			},
			result = {
				'dragonminez:cooked_dino_meat',
			},
			time = 600,
		},
		[ 'campfire/dragonminez:dino_tail_cooked' ] = {
			kind = 'campfire',
			slots = {
				input = {
					'dragonminez:dino_tail_raw',
				},
			},
			result = {
				'dragonminez:dino_tail_cooked',
			},
			time = 600,
		},
		[ 'campfire/dragonminez:frog_legs_cooked' ] = {
			kind = 'campfire',
			slots = {
				input = {
					'dragonminez:frog_legs_raw',
				},
			},
			result = {
				'dragonminez:frog_legs_cooked',
			},
			time = 600,
		},
		[ 'campfire/dragonminez:giant_fish_cooked' ] = {
			kind = 'campfire',
			slots = {
				input = {
					'dragonminez:giant_fish_raw',
				},
			},
			result = {
				'dragonminez:giant_fish_cooked',
			},
			time = 600,
		},
		[ 'campfire/dragonminez:giant_turtle_cooked' ] = {
			kind = 'campfire',
			slots = {
				input = {
					'dragonminez:giant_turtle_raw',
				},
			},
			result = {
				'dragonminez:giant_turtle_cooked',
			},
			time = 600,
		},
		[ 'dragonminez:adobe' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:makai_sand',
				},
				[ '2' ] = {
					'minecraft:clay_ball',
				},
				[ '3' ] = {
					'minecraft:clay_ball',
				},
				[ '4' ] = {
					'minecraft:wheat',
				},
			},
			result = {
				'dragonminez:adobe',
			},
			count = 2,
			shapeless = true,
		},
		[ 'dragonminez:adobe_bricks' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:adobe',
				},
				[ '2' ] = {
					'dragonminez:adobe',
				},
				[ '4' ] = {
					'dragonminez:adobe',
				},
				[ '5' ] = {
					'dragonminez:adobe',
				},
			},
			result = {
				'dragonminez:adobe_bricks',
			},
			count = 4,
		},
		[ 'dragonminez:adobe_slab' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:adobe',
				},
				[ '2' ] = {
					'dragonminez:adobe',
				},
				[ '3' ] = {
					'dragonminez:adobe',
				},
			},
			result = {
				'dragonminez:adobe_slab',
			},
			count = 6,
		},
		[ 'dragonminez:adobe_stairs' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:adobe',
				},
				[ '4' ] = {
					'dragonminez:adobe',
				},
				[ '5' ] = {
					'dragonminez:adobe',
				},
				[ '7' ] = {
					'dragonminez:adobe',
				},
				[ '8' ] = {
					'dragonminez:adobe',
				},
				[ '9' ] = {
					'dragonminez:adobe',
				},
			},
			result = {
				'dragonminez:adobe_stairs',
			},
			count = 4,
		},
		[ 'dragonminez:adobe_wall' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:adobe',
				},
				[ '2' ] = {
					'dragonminez:adobe',
				},
				[ '3' ] = {
					'dragonminez:adobe',
				},
				[ '4' ] = {
					'dragonminez:adobe',
				},
				[ '5' ] = {
					'dragonminez:adobe',
				},
				[ '6' ] = {
					'dragonminez:adobe',
				},
			},
			result = {
				'dragonminez:adobe_wall',
			},
			count = 6,
		},
		[ 'dragonminez:ajissa_button' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_ajissa_planks',
				},
			},
			result = {
				'dragonminez:namek_ajissa_button',
			},
			shapeless = true,
		},
		[ 'dragonminez:ajissa_door' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '2' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '4' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '5' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '7' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '8' ] = {
					'dragonminez:namek_ajissa_planks',
				},
			},
			result = {
				'dragonminez:namek_ajissa_door',
			},
			count = 3,
		},
		[ 'dragonminez:ajissa_fence' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '2' ] = {
					'minecraft:stick',
				},
				[ '3' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '4' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '5' ] = {
					'minecraft:stick',
				},
				[ '6' ] = {
					'dragonminez:namek_ajissa_planks',
				},
			},
			result = {
				'dragonminez:namek_ajissa_fence',
			},
			count = 3,
		},
		[ 'dragonminez:ajissa_fence_gate' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:stick',
				},
				[ '2' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '3' ] = {
					'minecraft:stick',
				},
				[ '4' ] = {
					'minecraft:stick',
				},
				[ '5' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '6' ] = {
					'minecraft:stick',
				},
			},
			result = {
				'dragonminez:namek_ajissa_fence_gate',
			},
		},
		[ 'dragonminez:ajissa_planks' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_ajissa_log',
					'dragonminez:namek_stripped_ajissa_log',
				},
			},
			result = {
				'dragonminez:namek_ajissa_planks',
			},
			count = 4,
			shapeless = true,
		},
		[ 'dragonminez:ajissa_slab' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '2' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '3' ] = {
					'dragonminez:namek_ajissa_planks',
				},
			},
			result = {
				'dragonminez:namek_ajissa_slab',
			},
			count = 6,
		},
		[ 'dragonminez:ajissa_stairs' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '4' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '5' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '7' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '8' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '9' ] = {
					'dragonminez:namek_ajissa_planks',
				},
			},
			result = {
				'dragonminez:namek_ajissa_stairs',
			},
			count = 4,
		},
		[ 'dragonminez:ajissa_trapdoor' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '2' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '3' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '4' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '5' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '6' ] = {
					'dragonminez:namek_ajissa_planks',
				},
			},
			result = {
				'dragonminez:namek_ajissa_trapdoor',
			},
			count = 2,
		},
		[ 'dragonminez:ajissa_wood' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_ajissa_log',
				},
				[ '2' ] = {
					'dragonminez:namek_ajissa_log',
				},
				[ '4' ] = {
					'dragonminez:namek_ajissa_log',
				},
				[ '5' ] = {
					'dragonminez:namek_ajissa_log',
				},
			},
			result = {
				'dragonminez:namek_ajissa_wood',
			},
			count = 3,
		},
		[ 'dragonminez:armor_crafting_kit' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:red_wool',
				},
				[ '2' ] = {
					'minecraft:shears',
				},
			},
			result = {
				'dragonminez:armor_crafting_kit',
			},
			shapeless = true,
		},
		[ 'dragonminez:aura_lily' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_moss',
				},
				[ '2' ] = {
					'dragonminez:namek_moss',
				},
				[ '3' ] = {
					'dragonminez:namek_moss',
				},
				[ '4' ] = {
					'dragonminez:namek_moss',
				},
				[ '5' ] = {
					'minecraft:glowstone_dust',
				},
				[ '6' ] = {
					'minecraft:glowstone_dust',
				},
			},
			result = {
				'dragonminez:aura_lily',
			},
			shapeless = true,
		},
		[ 'dragonminez:blank_pattern_super' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:cyan_wool',
				},
				[ '2' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '3' ] = {
					'minecraft:cyan_wool',
				},
				[ '4' ] = {
					'minecraft:paper',
				},
				[ '5' ] = {
					'minecraft:white_wool',
				},
				[ '6' ] = {
					'minecraft:paper',
				},
				[ '7' ] = {
					'minecraft:cyan_wool',
				},
				[ '8' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '9' ] = {
					'minecraft:cyan_wool',
				},
			},
			result = {
				'dragonminez:blank_pattern_super',
			},
		},
		[ 'dragonminez:blank_pattern_z' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:red_wool',
				},
				[ '2' ] = {
					'minecraft:red_wool',
				},
				[ '3' ] = {
					'minecraft:red_wool',
				},
				[ '4' ] = {
					'minecraft:paper',
				},
				[ '5' ] = {
					'minecraft:white_wool',
				},
				[ '6' ] = {
					'minecraft:paper',
				},
				[ '7' ] = {
					'minecraft:red_wool',
				},
				[ '8' ] = {
					'minecraft:red_wool',
				},
				[ '9' ] = {
					'minecraft:red_wool',
				},
			},
			result = {
				'dragonminez:blank_pattern_z',
			},
		},
		[ 'dragonminez:blue_scouter' ] = {
			kind = 'crafting',
			slots = {
				[ '3' ] = {
					'dragonminez:radar_piece',
				},
				[ '4' ] = {
					'minecraft:blue_stained_glass_pane',
				},
				[ '5' ] = {
					'minecraft:blue_stained_glass_pane',
				},
				[ '6' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '8' ] = {
					'minecraft:stone_button',
				},
			},
			result = {
				'dragonminez:blue_scouter',
			},
		},
		[ 'dragonminez:dball_radar' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:observer',
				},
				[ '2' ] = {
					'dragonminez:t1_radar_chip',
				},
				[ '3' ] = {
					'minecraft:observer',
				},
				[ '4' ] = {
					'dragonminez:radar_piece',
				},
				[ '5' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '6' ] = {
					'dragonminez:radar_piece',
				},
				[ '7' ] = {
					'dragonminez:t1_radar_chip',
				},
				[ '8' ] = {
					'dragonminez:radar_piece',
				},
				[ '9' ] = {
					'dragonminez:t1_radar_chip',
				},
			},
			result = {
				'dragonminez:dball_radar',
			},
		},
		[ 'dragonminez:demon_brick_slab' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:demon_bricks',
				},
				[ '2' ] = {
					'dragonminez:demon_bricks',
				},
				[ '3' ] = {
					'dragonminez:demon_bricks',
				},
			},
			result = {
				'dragonminez:demon_brick_slab',
			},
			count = 6,
		},
		[ 'dragonminez:demon_brick_stairs' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:demon_bricks',
				},
				[ '4' ] = {
					'dragonminez:demon_bricks',
				},
				[ '5' ] = {
					'dragonminez:demon_bricks',
				},
				[ '7' ] = {
					'dragonminez:demon_bricks',
				},
				[ '8' ] = {
					'dragonminez:demon_bricks',
				},
				[ '9' ] = {
					'dragonminez:demon_bricks',
				},
			},
			result = {
				'dragonminez:demon_brick_stairs',
			},
			count = 4,
		},
		[ 'dragonminez:demon_brick_wall' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:demon_bricks',
				},
				[ '2' ] = {
					'dragonminez:demon_bricks',
				},
				[ '3' ] = {
					'dragonminez:demon_bricks',
				},
				[ '4' ] = {
					'dragonminez:demon_bricks',
				},
				[ '5' ] = {
					'dragonminez:demon_bricks',
				},
				[ '6' ] = {
					'dragonminez:demon_bricks',
				},
			},
			result = {
				'dragonminez:demon_brick_wall',
			},
			count = 6,
		},
		[ 'dragonminez:demon_bricks' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:demon_rock',
				},
				[ '2' ] = {
					'dragonminez:demon_rock',
				},
				[ '4' ] = {
					'dragonminez:demon_rock',
				},
				[ '5' ] = {
					'dragonminez:demon_rock',
				},
			},
			result = {
				'dragonminez:demon_bricks',
			},
			count = 4,
		},
		[ 'dragonminez:empty_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:glass_pane',
				},
				[ '4' ] = {
					'minecraft:redstone',
				},
				[ '7' ] = {
					'minecraft:iron_ingot',
				},
			},
			result = {
				'dragonminez:empty_capsule',
			},
		},
		[ 'dragonminez:ene_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:potion.curative',
				},
				[ '2' ] = {
					'minecraft:golden_apple',
				},
				[ '3' ] = {
					'dragonminez:empty_capsule',
				},
				[ '4' ] = {
					'dragonminez:kaioshin_fruit',
				},
				[ '5' ] = {
					'dragonminez:kaioshin_fruit',
				},
			},
			result = {
				'dragonminez:blue_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:energy_cable' ] = {
			kind = 'crafting',
			slots = {
				[ '2' ] = {
					'minecraft:black_wool',
				},
				[ '4' ] = {
					'minecraft:black_wool',
				},
				[ '5' ] = {
					'dragonminez:t1_radar_chip',
				},
				[ '6' ] = {
					'minecraft:black_wool',
				},
				[ '8' ] = {
					'minecraft:black_wool',
				},
			},
			result = {
				'dragonminez:energy_cable',
			},
			count = 4,
		},
		[ 'dragonminez:fuel_generator' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:crying_obsidian',
				},
				[ '2' ] = {
					'minecraft:crying_obsidian',
				},
				[ '3' ] = {
					'minecraft:crying_obsidian',
				},
				[ '4' ] = {
					'minecraft:crying_obsidian',
				},
				[ '5' ] = {
					'dragonminez:t1_radar_chip',
				},
				[ '6' ] = {
					'minecraft:crying_obsidian',
				},
				[ '7' ] = {
					'minecraft:crying_obsidian',
				},
				[ '8' ] = {
					'minecraft:crying_obsidian',
				},
				[ '9' ] = {
					'minecraft:crying_obsidian',
				},
			},
			result = {
				'dragonminez:fuel_generator',
			},
		},
		[ 'dragonminez:gete_axe' ] = {
			kind = 'kikono',
			slots = {
				[ '1' ] = {
					'dragonminez:gete_ingot',
				},
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
				[ '4' ] = {
					'dragonminez:gete_ingot',
				},
				[ '5' ] = {
					'dragonminez:kikono_stick',
				},
				[ '8' ] = {
					'dragonminez:kikono_stick',
				},
				pattern = {
					'dragonminez:pattern_gete',
				},
				template = {
					'minecraft:netherite_axe',
				},
			},
			result = {
				'dragonminez:gete_axe',
			},
			time = 100,
			energy = 1000,
		},
		[ 'dragonminez:gete_block' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:gete_ingot',
				},
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
				[ '3' ] = {
					'dragonminez:gete_ingot',
				},
				[ '4' ] = {
					'dragonminez:gete_ingot',
				},
				[ '5' ] = {
					'dragonminez:gete_ingot',
				},
				[ '6' ] = {
					'dragonminez:gete_ingot',
				},
				[ '7' ] = {
					'dragonminez:gete_ingot',
				},
				[ '8' ] = {
					'dragonminez:gete_ingot',
				},
				[ '9' ] = {
					'dragonminez:gete_ingot',
				},
			},
			result = {
				'dragonminez:gete_block',
			},
		},
		[ 'dragonminez:gete_blue_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:blue_capsule',
				},
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
			},
			result = {
				'dragonminez:gete_blue_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:gete_green_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:green_capsule',
				},
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
			},
			result = {
				'dragonminez:gete_green_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:gete_hoe' ] = {
			kind = 'kikono',
			slots = {
				[ '1' ] = {
					'dragonminez:gete_ingot',
				},
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
				[ '5' ] = {
					'dragonminez:kikono_stick',
				},
				[ '8' ] = {
					'dragonminez:kikono_stick',
				},
				pattern = {
					'dragonminez:pattern_gete',
				},
				template = {
					'minecraft:netherite_hoe',
				},
			},
			result = {
				'dragonminez:gete_hoe',
			},
			time = 100,
			energy = 1000,
		},
		[ 'dragonminez:gete_ingot' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:netherite_scrap',
				},
				[ '2' ] = {
					'minecraft:netherite_scrap',
				},
				[ '3' ] = {
					'minecraft:netherite_scrap',
				},
				[ '4' ] = {
					'minecraft:netherite_scrap',
				},
				[ '5' ] = {
					'dragonminez:gete_scrap',
				},
				[ '6' ] = {
					'dragonminez:gete_scrap',
				},
				[ '7' ] = {
					'dragonminez:gete_scrap',
				},
				[ '8' ] = {
					'dragonminez:gete_scrap',
				},
			},
			result = {
				'dragonminez:gete_ingot',
			},
			shapeless = true,
		},
		[ 'dragonminez:gete_orange_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:orange_capsule',
				},
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
			},
			result = {
				'dragonminez:gete_orange_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:gete_pickaxe' ] = {
			kind = 'kikono',
			slots = {
				[ '1' ] = {
					'dragonminez:gete_ingot',
				},
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
				[ '3' ] = {
					'dragonminez:gete_ingot',
				},
				[ '5' ] = {
					'dragonminez:kikono_stick',
				},
				[ '8' ] = {
					'dragonminez:kikono_stick',
				},
				pattern = {
					'dragonminez:pattern_gete',
				},
				template = {
					'minecraft:netherite_pickaxe',
				},
			},
			result = {
				'dragonminez:gete_pickaxe',
			},
			time = 100,
			energy = 1000,
		},
		[ 'dragonminez:gete_purple_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:purple_capsule',
				},
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
			},
			result = {
				'dragonminez:gete_purple_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:gete_red_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:red_capsule',
				},
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
			},
			result = {
				'dragonminez:gete_red_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:gete_shovel' ] = {
			kind = 'kikono',
			slots = {
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
				[ '5' ] = {
					'dragonminez:kikono_stick',
				},
				[ '8' ] = {
					'dragonminez:kikono_stick',
				},
				pattern = {
					'dragonminez:pattern_gete',
				},
				template = {
					'minecraft:netherite_shovel',
				},
			},
			result = {
				'dragonminez:gete_shovel',
			},
			time = 100,
			energy = 1000,
		},
		[ 'dragonminez:gete_yellow_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:yellow_capsule',
				},
				[ '2' ] = {
					'dragonminez:gete_ingot',
				},
			},
			result = {
				'dragonminez:gete_yellow_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:gravity_device' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:repeater',
				},
				[ '2' ] = {
					'dragonminez:weight_turtle_shell',
					'dragonminez:workout_weights',
					'dragonminez:weight_piccolo_cape',
				},
				[ '3' ] = {
					'minecraft:repeater',
				},
				[ '4' ] = {
					'minecraft:iron_block',
				},
				[ '5' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '6' ] = {
					'minecraft:iron_block',
				},
				[ '7' ] = {
					'minecraft:repeater',
				},
				[ '8' ] = {
					'minecraft:anvil',
				},
				[ '9' ] = {
					'minecraft:repeater',
				},
			},
			result = {
				'dragonminez:gravity_device',
			},
		},
		[ 'dragonminez:green_scouter' ] = {
			kind = 'crafting',
			slots = {
				[ '3' ] = {
					'dragonminez:radar_piece',
				},
				[ '4' ] = {
					'minecraft:green_stained_glass_pane',
				},
				[ '5' ] = {
					'minecraft:green_stained_glass_pane',
				},
				[ '6' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '8' ] = {
					'minecraft:stone_button',
				},
			},
			result = {
				'dragonminez:green_scouter',
			},
		},
		[ 'dragonminez:hermit_fern' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_moss',
				},
				[ '2' ] = {
					'dragonminez:namek_moss',
				},
				[ '3' ] = {
					'dragonminez:namek_moss',
				},
				[ '4' ] = {
					'dragonminez:namek_moss',
				},
				[ '5' ] = {
					'dragonminez:senzu_bean',
				},
				[ '6' ] = {
					'dragonminez:senzu_bean',
				},
			},
			result = {
				'dragonminez:hermit_fern',
			},
			shapeless = true,
		},
		[ 'dragonminez:kaioshin_fruit' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_moss',
				},
				[ '2' ] = {
					'dragonminez:namek_moss',
				},
				[ '3' ] = {
					'dragonminez:namek_moss',
				},
				[ '4' ] = {
					'dragonminez:namek_moss',
				},
				[ '5' ] = {
					'minecraft:golden_apple',
				},
				[ '6' ] = {
					'minecraft:golden_apple',
				},
			},
			result = {
				'dragonminez:kaioshin_fruit',
			},
			shapeless = true,
		},
		[ 'dragonminez:katchin_sprout' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_moss',
				},
				[ '2' ] = {
					'dragonminez:namek_moss',
				},
				[ '3' ] = {
					'dragonminez:namek_moss',
				},
				[ '4' ] = {
					'dragonminez:namek_moss',
				},
				[ '5' ] = {
					'dragonminez:turtle_scale',
				},
				[ '6' ] = {
					'dragonminez:turtle_scale',
				},
			},
			result = {
				'dragonminez:katchin_sprout',
			},
			shapeless = true,
		},
		[ 'dragonminez:ki_battery' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:redstone',
				},
				[ '2' ] = {
					'minecraft:lapis_lazuli',
				},
				[ '3' ] = {
					'minecraft:redstone',
				},
				[ '4' ] = {
					'minecraft:lapis_lazuli',
				},
				[ '5' ] = {
					'dragonminez:gete_ingot',
				},
				[ '6' ] = {
					'minecraft:lapis_lazuli',
				},
				[ '7' ] = {
					'minecraft:redstone',
				},
				[ '8' ] = {
					'minecraft:lapis_lazuli',
				},
				[ '9' ] = {
					'minecraft:redstone',
				},
			},
			result = {
				'dragonminez:ki_battery',
			},
		},
		[ 'dragonminez:kikono_block' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:kikono_shard',
				},
				[ '2' ] = {
					'dragonminez:kikono_shard',
				},
				[ '3' ] = {
					'dragonminez:kikono_shard',
				},
				[ '4' ] = {
					'dragonminez:kikono_shard',
				},
				[ '5' ] = {
					'dragonminez:kikono_shard',
				},
				[ '6' ] = {
					'dragonminez:kikono_shard',
				},
				[ '7' ] = {
					'dragonminez:kikono_shard',
				},
				[ '8' ] = {
					'dragonminez:kikono_shard',
				},
				[ '9' ] = {
					'dragonminez:kikono_shard',
				},
			},
			result = {
				'dragonminez:kikono_block',
			},
		},
		[ 'dragonminez:kikono_cloth' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:kikono_string',
				},
				[ '2' ] = {
					'dragonminez:kikono_string',
				},
				[ '3' ] = {
					'dragonminez:kikono_string',
				},
				[ '4' ] = {
					'dragonminez:kikono_string',
				},
				[ '5' ] = {
					'dragonminez:armor_crafting_kit',
				},
			},
			result = {
				'dragonminez:kikono_cloth',
			},
			shapeless = true,
		},
		[ 'dragonminez:kikono_shard' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:kikono_block',
				},
			},
			result = {
				'dragonminez:kikono_shard',
			},
			count = 9,
			shapeless = true,
			unpack = true,
		},
		[ 'dragonminez:kikono_station' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:anvil',
				},
				[ '2' ] = {
					'minecraft:diamond_chestplate',
				},
				[ '3' ] = {
					'minecraft:anvil',
				},
				[ '4' ] = {
					'dragonminez:kikono_block',
				},
				[ '5' ] = {
					'dragonminez:t2_radar_cpu',
				},
				[ '6' ] = {
					'dragonminez:kikono_block',
				},
				[ '7' ] = {
					'minecraft:heavy_weighted_pressure_plate',
				},
				[ '8' ] = {
					'minecraft:smithing_table',
				},
				[ '9' ] = {
					'minecraft:heavy_weighted_pressure_plate',
				},
			},
			result = {
				'dragonminez:kikono_station',
			},
		},
		[ 'dragonminez:kikono_stick' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:kikono_shard',
				},
				[ '4' ] = {
					'dragonminez:kikono_shard',
				},
			},
			result = {
				'dragonminez:kikono_stick',
			},
			count = 2,
		},
		[ 'dragonminez:kikono_string' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:kikono_shard',
				},
				[ '2' ] = {
					'dragonminez:armor_crafting_kit',
				},
			},
			result = {
				'dragonminez:kikono_string',
			},
			count = 2,
			shapeless = true,
		},
		[ 'dragonminez:makai_stone_slab' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:makai_stone',
				},
				[ '2' ] = {
					'dragonminez:makai_stone',
				},
				[ '3' ] = {
					'dragonminez:makai_stone',
				},
			},
			result = {
				'dragonminez:makai_stone_slab',
			},
			count = 6,
		},
		[ 'dragonminez:makai_stone_stairs' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:makai_stone',
				},
				[ '4' ] = {
					'dragonminez:makai_stone',
				},
				[ '5' ] = {
					'dragonminez:makai_stone',
				},
				[ '7' ] = {
					'dragonminez:makai_stone',
				},
				[ '8' ] = {
					'dragonminez:makai_stone',
				},
				[ '9' ] = {
					'dragonminez:makai_stone',
				},
			},
			result = {
				'dragonminez:makai_stone_stairs',
			},
			count = 4,
		},
		[ 'dragonminez:makai_stone_wall' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:makai_stone',
				},
				[ '2' ] = {
					'dragonminez:makai_stone',
				},
				[ '3' ] = {
					'dragonminez:makai_stone',
				},
				[ '4' ] = {
					'dragonminez:makai_stone',
				},
				[ '5' ] = {
					'dragonminez:makai_stone',
				},
				[ '6' ] = {
					'dragonminez:makai_stone',
				},
			},
			result = {
				'dragonminez:makai_stone_wall',
			},
			count = 6,
		},
		[ 'dragonminez:mastery_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:potion.curative',
				},
				[ '2' ] = {
					'minecraft:amethyst_shard',
				},
				[ '3' ] = {
					'dragonminez:empty_capsule',
				},
				[ '4' ] = {
					'dragonminez:zenkai_lotus',
				},
				[ '5' ] = {
					'dragonminez:zenkai_lotus',
				},
			},
			result = {
				'dragonminez:mastery_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:meteor_flower' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_moss',
				},
				[ '2' ] = {
					'dragonminez:namek_moss',
				},
				[ '3' ] = {
					'dragonminez:namek_moss',
				},
				[ '4' ] = {
					'dragonminez:namek_moss',
				},
				[ '5' ] = {
					'minecraft:gunpowder',
				},
				[ '6' ] = {
					'minecraft:gunpowder',
				},
			},
			result = {
				'dragonminez:meteor_flower',
			},
			shapeless = true,
		},
		[ 'dragonminez:namek_ajissa_pressure_plate' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_ajissa_planks',
				},
				[ '2' ] = {
					'dragonminez:namek_ajissa_planks',
				},
			},
			result = {
				'dragonminez:namek_ajissa_pressure_plate',
			},
		},
		[ 'dragonminez:namek_cobblestone_slab' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '2' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '3' ] = {
					'dragonminez:namek_cobblestone',
				},
			},
			result = {
				'dragonminez:namek_cobblestone_slab',
			},
			count = 4,
		},
		[ 'dragonminez:namek_cobblestone_stairs' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '4' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '5' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '7' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '8' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '9' ] = {
					'dragonminez:namek_cobblestone',
				},
			},
			result = {
				'dragonminez:namek_cobblestone_stairs',
			},
			count = 4,
		},
		[ 'dragonminez:namek_cobblestone_wall' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '2' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '3' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '4' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '5' ] = {
					'dragonminez:namek_cobblestone',
				},
				[ '6' ] = {
					'dragonminez:namek_cobblestone',
				},
			},
			result = {
				'dragonminez:namek_cobblestone_wall',
			},
			count = 6,
		},
		[ 'dragonminez:namek_deepslate_slab' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '2' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '3' ] = {
					'dragonminez:namek_deepslate',
				},
			},
			result = {
				'dragonminez:namek_deepslate_slab',
			},
			count = 6,
		},
		[ 'dragonminez:namek_deepslate_stairs' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '4' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '5' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '7' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '8' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '9' ] = {
					'dragonminez:namek_deepslate',
				},
			},
			result = {
				'dragonminez:namek_deepslate_stairs',
			},
			count = 4,
		},
		[ 'dragonminez:namek_deepslate_wall' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '2' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '3' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '4' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '5' ] = {
					'dragonminez:namek_deepslate',
				},
				[ '6' ] = {
					'dragonminez:namek_deepslate',
				},
			},
			result = {
				'dragonminez:namek_deepslate_wall',
			},
			count = 6,
		},
		[ 'dragonminez:namek_moss' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:wheat_seeds',
				},
				[ '2' ] = {
					'dragonminez:healing_liquid_bucket',
				},
			},
			result = {
				'dragonminez:namek_moss',
			},
			shapeless = true,
		},
		[ 'dragonminez:namek_sacred_pressure_plate' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '2' ] = {
					'dragonminez:namek_sacred_planks',
				},
			},
			result = {
				'dragonminez:namek_sacred_pressure_plate',
			},
		},
		[ 'dragonminez:namek_stone_slab' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_stone',
				},
				[ '2' ] = {
					'dragonminez:namek_stone',
				},
				[ '3' ] = {
					'dragonminez:namek_stone',
				},
			},
			result = {
				'dragonminez:namek_stone_slab',
			},
			count = 6,
		},
		[ 'dragonminez:namek_stone_stairs' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_stone',
				},
				[ '4' ] = {
					'dragonminez:namek_stone',
				},
				[ '5' ] = {
					'dragonminez:namek_stone',
				},
				[ '7' ] = {
					'dragonminez:namek_stone',
				},
				[ '8' ] = {
					'dragonminez:namek_stone',
				},
				[ '9' ] = {
					'dragonminez:namek_stone',
				},
			},
			result = {
				'dragonminez:namek_stone_stairs',
			},
			count = 4,
		},
		[ 'dragonminez:namek_stone_wall' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_stone',
				},
				[ '2' ] = {
					'dragonminez:namek_stone',
				},
				[ '3' ] = {
					'dragonminez:namek_stone',
				},
				[ '4' ] = {
					'dragonminez:namek_stone',
				},
				[ '5' ] = {
					'dragonminez:namek_stone',
				},
				[ '6' ] = {
					'dragonminez:namek_stone',
				},
			},
			result = {
				'dragonminez:namek_stone_wall',
			},
			count = 6,
		},
		[ 'dragonminez:namekdball_radar' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:observer',
				},
				[ '2' ] = {
					'dragonminez:t2_radar_chip',
				},
				[ '3' ] = {
					'minecraft:observer',
				},
				[ '4' ] = {
					'dragonminez:radar_piece',
				},
				[ '5' ] = {
					'dragonminez:t2_radar_cpu',
				},
				[ '6' ] = {
					'dragonminez:radar_piece',
				},
				[ '7' ] = {
					'dragonminez:t2_radar_chip',
				},
				[ '8' ] = {
					'dragonminez:radar_piece',
				},
				[ '9' ] = {
					'dragonminez:t2_radar_chip',
				},
			},
			result = {
				'dragonminez:namekdball_radar',
			},
		},
		[ 'dragonminez:oozaru_root' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_moss',
				},
				[ '2' ] = {
					'dragonminez:namek_moss',
				},
				[ '3' ] = {
					'dragonminez:namek_moss',
				},
				[ '4' ] = {
					'dragonminez:namek_moss',
				},
				[ '5' ] = {
					'dragonminez:raw_dino_meat',
				},
				[ '6' ] = {
					'dragonminez:raw_dino_meat',
				},
			},
			result = {
				'dragonminez:oozaru_root',
			},
			shapeless = true,
		},
		[ 'dragonminez:pattern_a13' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:yellow_dye',
				},
				[ '2' ] = {
					'minecraft:yellow_dye',
				},
				[ '5' ] = {
					'minecraft:yellow_dye',
				},
				[ '6' ] = {
					'minecraft:yellow_dye',
				},
				[ '7' ] = {
					'minecraft:yellow_dye',
				},
				[ '8' ] = {
					'minecraft:yellow_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:yellow_dye',
				},
				[ '12' ] = {
					'minecraft:yellow_dye',
				},
				[ '13' ] = {
					'minecraft:yellow_dye',
				},
				[ '14' ] = {
					'minecraft:yellow_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:yellow_dye',
				},
				[ '18' ] = {
					'minecraft:red_dye',
				},
				[ '19' ] = {
					'minecraft:yellow_dye',
				},
				[ '20' ] = {
					'minecraft:yellow_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:yellow_dye',
				},
				[ '24' ] = {
					'minecraft:yellow_dye',
				},
				[ '25' ] = {
					'minecraft:orange_dye',
				},
				[ '30' ] = {
					'minecraft:orange_dye',
				},
				[ '31' ] = {
					'minecraft:orange_dye',
				},
				[ '32' ] = {
					'minecraft:brown_dye',
				},
				[ '35' ] = {
					'minecraft:brown_dye',
				},
				[ '36' ] = {
					'minecraft:orange_dye',
				},
			},
			result = {
				'dragonminez:pattern_a13',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_a14' ] = {
			kind = 'pattern',
			slots = {
				[ '5' ] = {
					'minecraft:brown_dye',
				},
				[ '6' ] = {
					'minecraft:brown_dye',
				},
				[ '10' ] = {
					'minecraft:brown_dye',
				},
				[ '11' ] = {
					'minecraft:brown_dye',
				},
				[ '15' ] = {
					'minecraft:brown_dye',
				},
				[ '16' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '20' ] = {
					'minecraft:yellow_dye',
				},
				[ '21' ] = {
					'minecraft:brown_dye',
				},
				[ '25' ] = {
					'minecraft:brown_dye',
				},
				[ '26' ] = {
					'minecraft:brown_dye',
				},
				[ '30' ] = {
					'minecraft:brown_dye',
				},
				[ '31' ] = {
					'minecraft:brown_dye',
				},
				[ '36' ] = {
					'minecraft:brown_dye',
				},
			},
			result = {
				'dragonminez:pattern_a14',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_a16' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:lime_dye',
				},
				[ '2' ] = {
					'minecraft:green_dye',
				},
				[ '5' ] = {
					'minecraft:green_dye',
				},
				[ '6' ] = {
					'minecraft:lime_dye',
				},
				[ '7' ] = {
					'minecraft:lime_dye',
				},
				[ '8' ] = {
					'minecraft:lime_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:lime_dye',
				},
				[ '12' ] = {
					'minecraft:lime_dye',
				},
				[ '13' ] = {
					'minecraft:green_dye',
				},
				[ '14' ] = {
					'minecraft:lime_dye',
				},
				[ '15' ] = {
					'minecraft:lime_dye',
				},
				[ '16' ] = {
					'minecraft:lime_dye',
				},
				[ '17' ] = {
					'minecraft:red_dye',
				},
				[ '18' ] = {
					'minecraft:green_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:lime_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:lime_dye',
				},
				[ '23' ] = {
					'minecraft:lime_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:green_dye',
				},
				[ '27' ] = {
					'minecraft:lime_dye',
				},
				[ '28' ] = {
					'minecraft:lime_dye',
				},
				[ '29' ] = {
					'minecraft:green_dye',
				},
				[ '31' ] = {
					'minecraft:lime_dye',
				},
				[ '32' ] = {
					'minecraft:green_dye',
				},
				[ '35' ] = {
					'minecraft:green_dye',
				},
				[ '36' ] = {
					'minecraft:lime_dye',
				},
			},
			result = {
				'dragonminez:pattern_a16',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_a17' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:black_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:black_dye',
				},
				[ '7' ] = {
					'minecraft:black_dye',
				},
				[ '8' ] = {
					'minecraft:red_dye',
				},
				[ '9' ] = {
					'minecraft:orange_dye',
				},
				[ '10' ] = {
					'minecraft:orange_dye',
				},
				[ '11' ] = {
					'minecraft:red_dye',
				},
				[ '12' ] = {
					'minecraft:black_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:red_dye',
				},
				[ '16' ] = {
					'minecraft:orange_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:light_gray_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:light_gray_dye',
				},
				[ '25' ] = {
					'minecraft:light_gray_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '30' ] = {
					'minecraft:light_gray_dye',
				},
				[ '31' ] = {
					'minecraft:white_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:white_dye',
				},
			},
			result = {
				'dragonminez:pattern_a17',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_a17_super' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:green_dye',
				},
				[ '2' ] = {
					'minecraft:green_dye',
				},
				[ '5' ] = {
					'minecraft:green_dye',
				},
				[ '6' ] = {
					'minecraft:green_dye',
				},
				[ '7' ] = {
					'minecraft:green_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:green_dye',
				},
				[ '13' ] = {
					'minecraft:green_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:green_dye',
				},
				[ '19' ] = {
					'minecraft:green_dye',
				},
				[ '20' ] = {
					'minecraft:light_gray_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:light_gray_dye',
				},
				[ '24' ] = {
					'minecraft:green_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:light_gray_dye',
				},
				[ '28' ] = {
					'minecraft:light_gray_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '31' ] = {
					'minecraft:green_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:green_dye',
				},
			},
			result = {
				'dragonminez:pattern_a17_super',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_a18' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:blue_dye',
				},
				[ '2' ] = {
					'minecraft:blue_dye',
				},
				[ '5' ] = {
					'minecraft:blue_dye',
				},
				[ '6' ] = {
					'minecraft:blue_dye',
				},
				[ '7' ] = {
					'minecraft:blue_dye',
				},
				[ '8' ] = {
					'minecraft:blue_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:blue_dye',
				},
				[ '12' ] = {
					'minecraft:blue_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:blue_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:blue_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:light_gray_dye',
				},
				[ '20' ] = {
					'minecraft:blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:blue_dye',
				},
				[ '23' ] = {
					'minecraft:blue_dye',
				},
				[ '24' ] = {
					'minecraft:light_gray_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '31' ] = {
					'minecraft:light_gray_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:light_gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_a18',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_a18_cell' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:light_gray_dye',
				},
				[ '2' ] = {
					'minecraft:black_dye',
				},
				[ '5' ] = {
					'minecraft:black_dye',
				},
				[ '6' ] = {
					'minecraft:light_gray_dye',
				},
				[ '7' ] = {
					'minecraft:light_gray_dye',
				},
				[ '8' ] = {
					'minecraft:white_dye',
				},
				[ '9' ] = {
					'minecraft:light_blue_dye',
				},
				[ '10' ] = {
					'minecraft:light_blue_dye',
				},
				[ '11' ] = {
					'minecraft:white_dye',
				},
				[ '12' ] = {
					'minecraft:light_gray_dye',
				},
				[ '13' ] = {
					'minecraft:light_gray_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:yellow_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:white_dye',
				},
				[ '28' ] = {
					'minecraft:white_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '32' ] = {
					'minecraft:light_gray_dye',
				},
				[ '33' ] = {
					'minecraft:white_dye',
				},
				[ '34' ] = {
					'minecraft:white_dye',
				},
				[ '35' ] = {
					'minecraft:light_gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_a18_cell',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_a18_kame' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:light_blue_dye',
				},
				[ '2' ] = {
					'minecraft:light_blue_dye',
				},
				[ '5' ] = {
					'minecraft:light_blue_dye',
				},
				[ '6' ] = {
					'minecraft:light_blue_dye',
				},
				[ '7' ] = {
					'minecraft:light_blue_dye',
				},
				[ '8' ] = {
					'minecraft:blue_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:blue_dye',
				},
				[ '12' ] = {
					'minecraft:light_blue_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:light_blue_dye',
				},
				[ '15' ] = {
					'minecraft:light_blue_dye',
				},
				[ '16' ] = {
					'minecraft:light_blue_dye',
				},
				[ '17' ] = {
					'minecraft:light_blue_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:light_blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:light_blue_dye',
				},
				[ '23' ] = {
					'minecraft:light_blue_dye',
				},
				[ '26' ] = {
					'minecraft:light_blue_dye',
				},
				[ '27' ] = {
					'minecraft:light_blue_dye',
				},
				[ '28' ] = {
					'minecraft:light_blue_dye',
				},
				[ '29' ] = {
					'minecraft:light_blue_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '33' ] = {
					'minecraft:light_blue_dye',
				},
				[ '34' ] = {
					'minecraft:light_blue_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_a18_kame',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_a18_tournament' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:black_dye',
				},
				[ '2' ] = {
					'minecraft:black_dye',
				},
				[ '5' ] = {
					'minecraft:black_dye',
				},
				[ '6' ] = {
					'minecraft:black_dye',
				},
				[ '7' ] = {
					'minecraft:black_dye',
				},
				[ '8' ] = {
					'minecraft:gray_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:gray_dye',
				},
				[ '12' ] = {
					'minecraft:black_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:light_gray_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:light_gray_dye',
				},
				[ '26' ] = {
					'minecraft:gray_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:gray_dye',
				},
				[ '31' ] = {
					'minecraft:light_gray_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:light_gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_a18_tournament',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_a20' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:orange_dye',
				},
				[ '2' ] = {
					'minecraft:orange_dye',
				},
				[ '5' ] = {
					'minecraft:orange_dye',
				},
				[ '6' ] = {
					'minecraft:orange_dye',
				},
				[ '7' ] = {
					'minecraft:orange_dye',
				},
				[ '8' ] = {
					'minecraft:light_gray_dye',
				},
				[ '9' ] = {
					'minecraft:orange_dye',
				},
				[ '10' ] = {
					'minecraft:orange_dye',
				},
				[ '11' ] = {
					'minecraft:light_gray_dye',
				},
				[ '12' ] = {
					'minecraft:orange_dye',
				},
				[ '13' ] = {
					'minecraft:orange_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:red_dye',
				},
				[ '16' ] = {
					'minecraft:red_dye',
				},
				[ '17' ] = {
					'minecraft:white_dye',
				},
				[ '18' ] = {
					'minecraft:orange_dye',
				},
				[ '19' ] = {
					'minecraft:orange_dye',
				},
				[ '20' ] = {
					'minecraft:light_gray_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:red_dye',
				},
				[ '23' ] = {
					'minecraft:light_gray_dye',
				},
				[ '24' ] = {
					'minecraft:orange_dye',
				},
				[ '25' ] = {
					'minecraft:yellow_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:white_dye',
				},
				[ '28' ] = {
					'minecraft:white_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '30' ] = {
					'minecraft:yellow_dye',
				},
				[ '31' ] = {
					'minecraft:yellow_dye',
				},
				[ '36' ] = {
					'minecraft:yellow_dye',
				},
			},
			result = {
				'dragonminez:pattern_a20',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_age1000' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:red_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:red_dye',
				},
				[ '7' ] = {
					'minecraft:red_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:lime_dye',
				},
				[ '10' ] = {
					'minecraft:lime_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:red_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:lime_dye',
				},
				[ '15' ] = {
					'minecraft:lime_dye',
				},
				[ '16' ] = {
					'minecraft:lime_dye',
				},
				[ '17' ] = {
					'minecraft:lime_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:lime_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:green_dye',
				},
				[ '23' ] = {
					'minecraft:lime_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:green_dye',
				},
				[ '27' ] = {
					'minecraft:lime_dye',
				},
				[ '28' ] = {
					'minecraft:lime_dye',
				},
				[ '29' ] = {
					'minecraft:green_dye',
				},
				[ '31' ] = {
					'minecraft:black_dye',
				},
				[ '32' ] = {
					'minecraft:green_dye',
				},
				[ '33' ] = {
					'minecraft:green_dye',
				},
				[ '34' ] = {
					'minecraft:green_dye',
				},
				[ '35' ] = {
					'minecraft:green_dye',
				},
				[ '36' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_age1000',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_bardock1' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:green_dye',
				},
				[ '2' ] = {
					'minecraft:green_dye',
				},
				[ '5' ] = {
					'minecraft:green_dye',
				},
				[ '6' ] = {
					'minecraft:green_dye',
				},
				[ '7' ] = {
					'minecraft:white_dye',
				},
				[ '8' ] = {
					'minecraft:blue_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:white_dye',
				},
				[ '11' ] = {
					'minecraft:blue_dye',
				},
				[ '12' ] = {
					'minecraft:white_dye',
				},
				[ '13' ] = {
					'minecraft:white_dye',
				},
				[ '14' ] = {
					'minecraft:blue_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:blue_dye',
				},
				[ '18' ] = {
					'minecraft:white_dye',
				},
				[ '20' ] = {
					'minecraft:blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:blue_dye',
				},
				[ '23' ] = {
					'minecraft:blue_dye',
				},
				[ '25' ] = {
					'minecraft:red_dye',
				},
				[ '26' ] = {
					'minecraft:green_dye',
				},
				[ '27' ] = {
					'minecraft:green_dye',
				},
				[ '28' ] = {
					'minecraft:green_dye',
				},
				[ '29' ] = {
					'minecraft:green_dye',
				},
				[ '30' ] = {
					'minecraft:red_dye',
				},
				[ '31' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:black_dye',
				},
				[ '34' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:red_dye',
				},
			},
			result = {
				'dragonminez:pattern_bardock1',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_bardock2' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:yellow_dye',
				},
				[ '2' ] = {
					'minecraft:yellow_dye',
				},
				[ '5' ] = {
					'minecraft:yellow_dye',
				},
				[ '6' ] = {
					'minecraft:yellow_dye',
				},
				[ '7' ] = {
					'minecraft:white_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:white_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:white_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '25' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:white_dye',
				},
				[ '28' ] = {
					'minecraft:white_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '30' ] = {
					'minecraft:blue_dye',
				},
				[ '31' ] = {
					'minecraft:light_blue_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:black_dye',
				},
				[ '34' ] = {
					'minecraft:black_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:light_blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_bardock2',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_beerus' ] = {
			kind = 'pattern',
			slots = {
				[ '2' ] = {
					'minecraft:white_dye',
				},
				[ '3' ] = {
					'minecraft:brown_dye',
				},
				[ '4' ] = {
					'minecraft:brown_dye',
				},
				[ '5' ] = {
					'minecraft:white_dye',
				},
				[ '7' ] = {
					'minecraft:white_dye',
				},
				[ '8' ] = {
					'minecraft:light_blue_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:white_dye',
				},
				[ '11' ] = {
					'minecraft:light_blue_dye',
				},
				[ '12' ] = {
					'minecraft:white_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:light_blue_dye',
				},
				[ '16' ] = {
					'minecraft:light_blue_dye',
				},
				[ '17' ] = {
					'minecraft:white_dye',
				},
				[ '20' ] = {
					'minecraft:light_gray_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:light_blue_dye',
				},
				[ '23' ] = {
					'minecraft:light_gray_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:light_gray_dye',
				},
				[ '28' ] = {
					'minecraft:light_gray_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '31' ] = {
					'minecraft:yellow_dye',
				},
				[ '36' ] = {
					'minecraft:yellow_dye',
				},
			},
			result = {
				'dragonminez:pattern_beerus',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_black' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:gray_dye',
				},
				[ '2' ] = {
					'minecraft:gray_dye',
				},
				[ '5' ] = {
					'minecraft:gray_dye',
				},
				[ '6' ] = {
					'minecraft:gray_dye',
				},
				[ '7' ] = {
					'minecraft:gray_dye',
				},
				[ '8' ] = {
					'minecraft:gray_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:gray_dye',
				},
				[ '12' ] = {
					'minecraft:gray_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:gray_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:gray_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:gray_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:gray_dye',
				},
				[ '23' ] = {
					'minecraft:gray_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:gray_dye',
				},
				[ '27' ] = {
					'minecraft:gray_dye',
				},
				[ '28' ] = {
					'minecraft:gray_dye',
				},
				[ '29' ] = {
					'minecraft:gray_dye',
				},
				[ '31' ] = {
					'minecraft:black_dye',
				},
				[ '32' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:red_dye',
				},
				[ '36' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_black',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_broly_super' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:lime_dye',
				},
				[ '2' ] = {
					'minecraft:green_dye',
				},
				[ '5' ] = {
					'minecraft:green_dye',
				},
				[ '6' ] = {
					'minecraft:lime_dye',
				},
				[ '7' ] = {
					'minecraft:white_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:white_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:white_dye',
				},
				[ '13' ] = {
					'minecraft:white_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:white_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:lime_dye',
				},
				[ '28' ] = {
					'minecraft:lime_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '32' ] = {
					'minecraft:white_dye',
				},
				[ '33' ] = {
					'minecraft:black_dye',
				},
				[ '34' ] = {
					'minecraft:black_dye',
				},
				[ '35' ] = {
					'minecraft:white_dye',
				},
			},
			result = {
				'dragonminez:pattern_broly_super',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_broly_z' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:brown_dye',
				},
				[ '6' ] = {
					'minecraft:brown_dye',
				},
				[ '7' ] = {
					'minecraft:brown_dye',
				},
				[ '8' ] = {
					'minecraft:gold_nugget',
				},
				[ '11' ] = {
					'minecraft:gold_nugget',
				},
				[ '12' ] = {
					'minecraft:brown_dye',
				},
				[ '14' ] = {
					'minecraft:gold_nugget',
				},
				[ '15' ] = {
					'minecraft:gold_nugget',
				},
				[ '16' ] = {
					'minecraft:gold_nugget',
				},
				[ '17' ] = {
					'minecraft:gold_nugget',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:light_blue_dye',
				},
				[ '25' ] = {
					'minecraft:gold_nugget',
				},
				[ '30' ] = {
					'minecraft:gold_nugget',
				},
				[ '31' ] = {
					'minecraft:gold_nugget',
				},
				[ '32' ] = {
					'minecraft:light_blue_dye',
				},
				[ '35' ] = {
					'minecraft:light_blue_dye',
				},
				[ '36' ] = {
					'minecraft:gold_nugget',
				},
			},
			result = {
				'dragonminez:pattern_broly_z',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_capsule_corp' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:blue_dye',
				},
				[ '2' ] = {
					'minecraft:blue_dye',
				},
				[ '5' ] = {
					'minecraft:blue_dye',
				},
				[ '6' ] = {
					'minecraft:blue_dye',
				},
				[ '7' ] = {
					'minecraft:blue_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:white_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:blue_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:light_gray_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:light_gray_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:light_gray_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '25' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:light_gray_dye',
				},
				[ '28' ] = {
					'minecraft:light_gray_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '30' ] = {
					'minecraft:blue_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_capsule_corp',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_caulifla' ] = {
			kind = 'pattern',
			slots = {
				[ '2' ] = {
					'minecraft:pink_dye',
				},
				[ '3' ] = {
					'minecraft:magenta_dye',
				},
				[ '4' ] = {
					'minecraft:magenta_dye',
				},
				[ '5' ] = {
					'minecraft:pink_dye',
				},
				[ '8' ] = {
					'minecraft:magenta_dye',
				},
				[ '9' ] = {
					'minecraft:pink_dye',
				},
				[ '10' ] = {
					'minecraft:pink_dye',
				},
				[ '11' ] = {
					'minecraft:magenta_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '25' ] = {
					'minecraft:black_dye',
				},
				[ '30' ] = {
					'minecraft:black_dye',
				},
				[ '31' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_caulifla',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_chaoz' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:green_dye',
				},
				[ '2' ] = {
					'minecraft:green_dye',
				},
				[ '5' ] = {
					'minecraft:green_dye',
				},
				[ '6' ] = {
					'minecraft:green_dye',
				},
				[ '7' ] = {
					'minecraft:green_dye',
				},
				[ '8' ] = {
					'minecraft:green_dye',
				},
				[ '9' ] = {
					'minecraft:red_dye',
				},
				[ '10' ] = {
					'minecraft:red_dye',
				},
				[ '11' ] = {
					'minecraft:green_dye',
				},
				[ '12' ] = {
					'minecraft:green_dye',
				},
				[ '13' ] = {
					'minecraft:yellow_dye',
				},
				[ '14' ] = {
					'minecraft:green_dye',
				},
				[ '15' ] = {
					'minecraft:green_dye',
				},
				[ '16' ] = {
					'minecraft:green_dye',
				},
				[ '17' ] = {
					'minecraft:green_dye',
				},
				[ '18' ] = {
					'minecraft:yellow_dye',
				},
				[ '19' ] = {
					'minecraft:yellow_dye',
				},
				[ '20' ] = {
					'minecraft:green_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:green_dye',
				},
				[ '24' ] = {
					'minecraft:yellow_dye',
				},
				[ '25' ] = {
					'minecraft:yellow_dye',
				},
				[ '26' ] = {
					'minecraft:green_dye',
				},
				[ '27' ] = {
					'minecraft:red_dye',
				},
				[ '28' ] = {
					'minecraft:red_dye',
				},
				[ '29' ] = {
					'minecraft:green_dye',
				},
				[ '30' ] = {
					'minecraft:yellow_dye',
				},
				[ '31' ] = {
					'minecraft:light_gray_dye',
				},
				[ '36' ] = {
					'minecraft:light_gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_chaoz',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_cooler_soldier' ] = {
			kind = 'pattern',
			slots = {
				[ '2' ] = {
					'minecraft:white_dye',
				},
				[ '5' ] = {
					'minecraft:white_dye',
				},
				[ '6' ] = {
					'minecraft:brown_dye',
				},
				[ '7' ] = {
					'minecraft:purple_dye',
				},
				[ '8' ] = {
					'minecraft:white_dye',
				},
				[ '9' ] = {
					'minecraft:lime_dye',
				},
				[ '10' ] = {
					'minecraft:lime_dye',
				},
				[ '11' ] = {
					'minecraft:white_dye',
				},
				[ '12' ] = {
					'minecraft:purple_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:lime_dye',
				},
				[ '15' ] = {
					'minecraft:lime_dye',
				},
				[ '16' ] = {
					'minecraft:lime_dye',
				},
				[ '17' ] = {
					'minecraft:lime_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:purple_dye',
				},
				[ '20' ] = {
					'minecraft:lime_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:lime_dye',
				},
				[ '23' ] = {
					'minecraft:lime_dye',
				},
				[ '24' ] = {
					'minecraft:purple_dye',
				},
				[ '25' ] = {
					'minecraft:purple_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:light_gray_dye',
				},
				[ '28' ] = {
					'minecraft:light_gray_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '30' ] = {
					'minecraft:purple_dye',
				},
				[ '31' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_cooler_soldier',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_dragon_clan' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:magenta_dye',
				},
				[ '2' ] = {
					'minecraft:black_dye',
				},
				[ '5' ] = {
					'minecraft:black_dye',
				},
				[ '6' ] = {
					'minecraft:magenta_dye',
				},
				[ '7' ] = {
					'minecraft:magenta_dye',
				},
				[ '8' ] = {
					'minecraft:purple_dye',
				},
				[ '9' ] = {
					'minecraft:purple_dye',
				},
				[ '10' ] = {
					'minecraft:purple_dye',
				},
				[ '11' ] = {
					'minecraft:purple_dye',
				},
				[ '12' ] = {
					'minecraft:magenta_dye',
				},
				[ '13' ] = {
					'minecraft:magenta_dye',
				},
				[ '14' ] = {
					'minecraft:purple_dye',
				},
				[ '15' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '16' ] = {
					'minecraft:purple_dye',
				},
				[ '17' ] = {
					'minecraft:purple_dye',
				},
				[ '18' ] = {
					'minecraft:magenta_dye',
				},
				[ '19' ] = {
					'minecraft:magenta_dye',
				},
				[ '20' ] = {
					'minecraft:purple_dye',
				},
				[ '21' ] = {
					'minecraft:purple_dye',
				},
				[ '22' ] = {
					'minecraft:purple_dye',
				},
				[ '23' ] = {
					'minecraft:purple_dye',
				},
				[ '24' ] = {
					'minecraft:magenta_dye',
				},
				[ '26' ] = {
					'minecraft:purple_dye',
				},
				[ '27' ] = {
					'minecraft:purple_dye',
				},
				[ '28' ] = {
					'minecraft:purple_dye',
				},
				[ '29' ] = {
					'minecraft:purple_dye',
				},
				[ '32' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:red_dye',
				},
			},
			result = {
				'dragonminez:pattern_dragon_clan',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_evil_buu' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:blue_dye',
				},
				[ '2' ] = {
					'minecraft:yellow_dye',
				},
				[ '5' ] = {
					'minecraft:yellow_dye',
				},
				[ '6' ] = {
					'minecraft:blue_dye',
				},
				[ '7' ] = {
					'minecraft:black_dye',
				},
				[ '8' ] = {
					'minecraft:blue_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:blue_dye',
				},
				[ '12' ] = {
					'minecraft:black_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:yellow_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:yellow_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:blue_dye',
				},
				[ '23' ] = {
					'minecraft:blue_dye',
				},
				[ '25' ] = {
					'minecraft:yellow_dye',
				},
				[ '26' ] = {
					'minecraft:blue_dye',
				},
				[ '27' ] = {
					'minecraft:blue_dye',
				},
				[ '28' ] = {
					'minecraft:blue_dye',
				},
				[ '29' ] = {
					'minecraft:blue_dye',
				},
				[ '30' ] = {
					'minecraft:yellow_dye',
				},
				[ '31' ] = {
					'minecraft:yellow_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
				[ '36' ] = {
					'minecraft:yellow_dye',
				},
			},
			result = {
				'dragonminez:pattern_evil_buu',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_fighter' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:green_dye',
				},
				[ '2' ] = {
					'minecraft:green_dye',
				},
				[ '5' ] = {
					'minecraft:green_dye',
				},
				[ '6' ] = {
					'minecraft:green_dye',
				},
				[ '7' ] = {
					'minecraft:green_dye',
				},
				[ '8' ] = {
					'minecraft:green_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:green_dye',
				},
				[ '12' ] = {
					'minecraft:green_dye',
				},
				[ '13' ] = {
					'minecraft:green_dye',
				},
				[ '14' ] = {
					'minecraft:green_dye',
				},
				[ '15' ] = {
					'minecraft:green_dye',
				},
				[ '16' ] = {
					'minecraft:green_dye',
				},
				[ '17' ] = {
					'minecraft:green_dye',
				},
				[ '18' ] = {
					'minecraft:green_dye',
				},
				[ '19' ] = {
					'minecraft:orange_dye',
				},
				[ '20' ] = {
					'minecraft:green_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:green_dye',
				},
				[ '23' ] = {
					'minecraft:green_dye',
				},
				[ '24' ] = {
					'minecraft:orange_dye',
				},
				[ '26' ] = {
					'minecraft:green_dye',
				},
				[ '27' ] = {
					'minecraft:green_dye',
				},
				[ '28' ] = {
					'minecraft:green_dye',
				},
				[ '29' ] = {
					'minecraft:green_dye',
				},
				[ '32' ] = {
					'minecraft:light_gray_dye',
				},
				[ '33' ] = {
					'minecraft:light_gray_dye',
				},
				[ '34' ] = {
					'minecraft:light_gray_dye',
				},
				[ '35' ] = {
					'minecraft:light_gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_fighter',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_fusionzamasu' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:red_dye',
				},
				[ '2' ] = {
					'minecraft:gray_dye',
				},
				[ '5' ] = {
					'minecraft:gray_dye',
				},
				[ '6' ] = {
					'minecraft:red_dye',
				},
				[ '7' ] = {
					'minecraft:gray_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:red_dye',
				},
				[ '10' ] = {
					'minecraft:red_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:gray_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:gray_dye',
				},
				[ '15' ] = {
					'minecraft:red_dye',
				},
				[ '16' ] = {
					'minecraft:gray_dye',
				},
				[ '17' ] = {
					'minecraft:gray_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:gray_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:gray_dye',
				},
				[ '23' ] = {
					'minecraft:gray_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:red_dye',
				},
				[ '28' ] = {
					'minecraft:red_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '31' ] = {
					'minecraft:white_dye',
				},
				[ '32' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:red_dye',
				},
				[ '36' ] = {
					'minecraft:white_dye',
				},
			},
			result = {
				'dragonminez:pattern_fusionzamasu',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_future_gohan' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:orange_dye',
				},
				[ '2' ] = {
					'minecraft:orange_dye',
				},
				[ '5' ] = {
					'minecraft:orange_dye',
				},
				[ '6' ] = {
					'minecraft:orange_dye',
				},
				[ '7' ] = {
					'minecraft:orange_dye',
				},
				[ '8' ] = {
					'minecraft:orange_dye',
				},
				[ '9' ] = {
					'minecraft:blue_dye',
				},
				[ '10' ] = {
					'minecraft:blue_dye',
				},
				[ '11' ] = {
					'minecraft:orange_dye',
				},
				[ '12' ] = {
					'minecraft:orange_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:orange_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:orange_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:orange_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:orange_dye',
				},
				[ '23' ] = {
					'minecraft:orange_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:orange_dye',
				},
				[ '27' ] = {
					'minecraft:blue_dye',
				},
				[ '28' ] = {
					'minecraft:blue_dye',
				},
				[ '29' ] = {
					'minecraft:orange_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '33' ] = {
					'minecraft:orange_dye',
				},
				[ '34' ] = {
					'minecraft:orange_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_future_gohan',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_gamma1' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:red_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:red_dye',
				},
				[ '7' ] = {
					'minecraft:orange_dye',
				},
				[ '8' ] = {
					'minecraft:orange_dye',
				},
				[ '9' ] = {
					'minecraft:orange_dye',
				},
				[ '10' ] = {
					'minecraft:orange_dye',
				},
				[ '11' ] = {
					'minecraft:orange_dye',
				},
				[ '12' ] = {
					'minecraft:orange_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:light_gray_dye',
				},
				[ '15' ] = {
					'minecraft:orange_dye',
				},
				[ '16' ] = {
					'minecraft:orange_dye',
				},
				[ '17' ] = {
					'minecraft:light_gray_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:orange_dye',
				},
				[ '20' ] = {
					'minecraft:orange_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:red_dye',
				},
				[ '23' ] = {
					'minecraft:orange_dye',
				},
				[ '24' ] = {
					'minecraft:orange_dye',
				},
				[ '25' ] = {
					'minecraft:orange_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:orange_dye',
				},
				[ '28' ] = {
					'minecraft:orange_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '30' ] = {
					'minecraft:orange_dye',
				},
				[ '31' ] = {
					'minecraft:brown_dye',
				},
				[ '32' ] = {
					'minecraft:brown_dye',
				},
				[ '33' ] = {
					'minecraft:brown_dye',
				},
				[ '34' ] = {
					'minecraft:brown_dye',
				},
				[ '35' ] = {
					'minecraft:brown_dye',
				},
				[ '36' ] = {
					'minecraft:brown_dye',
				},
			},
			result = {
				'dragonminez:pattern_gamma1',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_gamma2' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:light_blue_dye',
				},
				[ '2' ] = {
					'minecraft:light_blue_dye',
				},
				[ '5' ] = {
					'minecraft:light_blue_dye',
				},
				[ '6' ] = {
					'minecraft:light_blue_dye',
				},
				[ '7' ] = {
					'minecraft:orange_dye',
				},
				[ '8' ] = {
					'minecraft:orange_dye',
				},
				[ '9' ] = {
					'minecraft:orange_dye',
				},
				[ '10' ] = {
					'minecraft:orange_dye',
				},
				[ '11' ] = {
					'minecraft:orange_dye',
				},
				[ '12' ] = {
					'minecraft:orange_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:light_gray_dye',
				},
				[ '15' ] = {
					'minecraft:orange_dye',
				},
				[ '16' ] = {
					'minecraft:orange_dye',
				},
				[ '17' ] = {
					'minecraft:light_gray_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:orange_dye',
				},
				[ '20' ] = {
					'minecraft:orange_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:blue_dye',
				},
				[ '23' ] = {
					'minecraft:orange_dye',
				},
				[ '24' ] = {
					'minecraft:orange_dye',
				},
				[ '25' ] = {
					'minecraft:orange_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:orange_dye',
				},
				[ '28' ] = {
					'minecraft:orange_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '30' ] = {
					'minecraft:orange_dye',
				},
				[ '31' ] = {
					'minecraft:brown_dye',
				},
				[ '32' ] = {
					'minecraft:brown_dye',
				},
				[ '33' ] = {
					'minecraft:brown_dye',
				},
				[ '34' ] = {
					'minecraft:brown_dye',
				},
				[ '35' ] = {
					'minecraft:brown_dye',
				},
				[ '36' ] = {
					'minecraft:brown_dye',
				},
			},
			result = {
				'dragonminez:pattern_gamma2',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_gas' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:red_dye',
				},
				[ '2' ] = {
					'minecraft:yellow_dye',
				},
				[ '5' ] = {
					'minecraft:yellow_dye',
				},
				[ '6' ] = {
					'minecraft:red_dye',
				},
				[ '7' ] = {
					'minecraft:yellow_dye',
				},
				[ '8' ] = {
					'minecraft:red_dye',
				},
				[ '9' ] = {
					'minecraft:yellow_dye',
				},
				[ '10' ] = {
					'minecraft:yellow_dye',
				},
				[ '11' ] = {
					'minecraft:red_dye',
				},
				[ '12' ] = {
					'minecraft:yellow_dye',
				},
				[ '13' ] = {
					'minecraft:light_gray_dye',
				},
				[ '14' ] = {
					'minecraft:red_dye',
				},
				[ '15' ] = {
					'minecraft:yellow_dye',
				},
				[ '16' ] = {
					'minecraft:yellow_dye',
				},
				[ '17' ] = {
					'minecraft:red_dye',
				},
				[ '18' ] = {
					'minecraft:light_gray_dye',
				},
				[ '19' ] = {
					'minecraft:light_gray_dye',
				},
				[ '20' ] = {
					'minecraft:red_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:red_dye',
				},
				[ '23' ] = {
					'minecraft:red_dye',
				},
				[ '24' ] = {
					'minecraft:light_gray_dye',
				},
				[ '26' ] = {
					'minecraft:red_dye',
				},
				[ '27' ] = {
					'minecraft:yellow_dye',
				},
				[ '28' ] = {
					'minecraft:yellow_dye',
				},
				[ '29' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:yellow_dye',
				},
				[ '34' ] = {
					'minecraft:yellow_dye',
				},
			},
			result = {
				'dragonminez:pattern_gas',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_gero' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:brown_dye',
				},
				[ '2' ] = {
					'minecraft:white_dye',
				},
				[ '5' ] = {
					'minecraft:white_dye',
				},
				[ '6' ] = {
					'minecraft:brown_dye',
				},
				[ '7' ] = {
					'minecraft:orange_dye',
				},
				[ '8' ] = {
					'minecraft:orange_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:white_dye',
				},
				[ '11' ] = {
					'minecraft:orange_dye',
				},
				[ '12' ] = {
					'minecraft:orange_dye',
				},
				[ '13' ] = {
					'minecraft:orange_dye',
				},
				[ '14' ] = {
					'minecraft:orange_dye',
				},
				[ '15' ] = {
					'minecraft:orange_dye',
				},
				[ '16' ] = {
					'minecraft:orange_dye',
				},
				[ '17' ] = {
					'minecraft:orange_dye',
				},
				[ '18' ] = {
					'minecraft:orange_dye',
				},
				[ '19' ] = {
					'minecraft:light_gray_dye',
				},
				[ '20' ] = {
					'minecraft:orange_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:orange_dye',
				},
				[ '23' ] = {
					'minecraft:orange_dye',
				},
				[ '24' ] = {
					'minecraft:light_gray_dye',
				},
				[ '25' ] = {
					'minecraft:white_dye',
				},
				[ '26' ] = {
					'minecraft:orange_dye',
				},
				[ '27' ] = {
					'minecraft:orange_dye',
				},
				[ '28' ] = {
					'minecraft:orange_dye',
				},
				[ '29' ] = {
					'minecraft:orange_dye',
				},
				[ '30' ] = {
					'minecraft:white_dye',
				},
				[ '31' ] = {
					'minecraft:white_dye',
				},
				[ '33' ] = {
					'minecraft:orange_dye',
				},
				[ '34' ] = {
					'minecraft:orange_dye',
				},
				[ '36' ] = {
					'minecraft:white_dye',
				},
			},
			result = {
				'dragonminez:pattern_gero',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_gete' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:iron_ingot',
				},
				[ '2' ] = {
					'dragonminez:gete_scrap',
				},
				[ '3' ] = {
					'minecraft:iron_ingot',
				},
				[ '4' ] = {
					'dragonminez:gete_scrap',
				},
				[ '5' ] = {
					'dragonminez:pattern_gete',
				},
				[ '6' ] = {
					'dragonminez:gete_scrap',
				},
				[ '7' ] = {
					'minecraft:iron_ingot',
				},
				[ '8' ] = {
					'dragonminez:gete_scrap',
				},
				[ '9' ] = {
					'minecraft:iron_ingot',
				},
			},
			result = {
				'dragonminez:pattern_gete',
			},
			count = 2,
		},
		[ 'dragonminez:pattern_gine' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:yellow_dye',
				},
				[ '2' ] = {
					'minecraft:yellow_dye',
				},
				[ '5' ] = {
					'minecraft:yellow_dye',
				},
				[ '6' ] = {
					'minecraft:yellow_dye',
				},
				[ '8' ] = {
					'minecraft:white_dye',
				},
				[ '9' ] = {
					'minecraft:yellow_dye',
				},
				[ '10' ] = {
					'minecraft:yellow_dye',
				},
				[ '11' ] = {
					'minecraft:white_dye',
				},
				[ '13' ] = {
					'minecraft:cyan_dye',
				},
				[ '14' ] = {
					'minecraft:cyan_dye',
				},
				[ '15' ] = {
					'minecraft:cyan_dye',
				},
				[ '16' ] = {
					'minecraft:cyan_dye',
				},
				[ '17' ] = {
					'minecraft:cyan_dye',
				},
				[ '18' ] = {
					'minecraft:cyan_dye',
				},
				[ '20' ] = {
					'minecraft:light_gray_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:light_gray_dye',
				},
				[ '23' ] = {
					'minecraft:light_gray_dye',
				},
				[ '25' ] = {
					'minecraft:magenta_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:yellow_dye',
				},
				[ '28' ] = {
					'minecraft:yellow_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '30' ] = {
					'minecraft:magenta_dye',
				},
				[ '31' ] = {
					'minecraft:magenta_dye',
				},
				[ '36' ] = {
					'minecraft:magenta_dye',
				},
			},
			result = {
				'dragonminez:pattern_gine',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_gogeta' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:green_dye',
				},
				[ '2' ] = {
					'minecraft:yellow_dye',
				},
				[ '5' ] = {
					'minecraft:yellow_dye',
				},
				[ '6' ] = {
					'minecraft:green_dye',
				},
				[ '7' ] = {
					'minecraft:yellow_dye',
				},
				[ '8' ] = {
					'minecraft:green_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:green_dye',
				},
				[ '12' ] = {
					'minecraft:yellow_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:yellow_dye',
				},
				[ '16' ] = {
					'minecraft:yellow_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:gray_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:gray_dye',
				},
				[ '32' ] = {
					'minecraft:gray_dye',
				},
				[ '35' ] = {
					'minecraft:gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_gogeta',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_gohan1' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:purple_dye',
				},
				[ '2' ] = {
					'minecraft:purple_dye',
				},
				[ '5' ] = {
					'minecraft:purple_dye',
				},
				[ '6' ] = {
					'minecraft:purple_dye',
				},
				[ '7' ] = {
					'minecraft:purple_dye',
				},
				[ '8' ] = {
					'minecraft:purple_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:purple_dye',
				},
				[ '12' ] = {
					'minecraft:purple_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:purple_dye',
				},
				[ '15' ] = {
					'minecraft:purple_dye',
				},
				[ '16' ] = {
					'minecraft:purple_dye',
				},
				[ '17' ] = {
					'minecraft:purple_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:purple_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:purple_dye',
				},
				[ '23' ] = {
					'minecraft:purple_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:purple_dye',
				},
				[ '27' ] = {
					'minecraft:purple_dye',
				},
				[ '28' ] = {
					'minecraft:purple_dye',
				},
				[ '29' ] = {
					'minecraft:purple_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '33' ] = {
					'minecraft:purple_dye',
				},
				[ '34' ] = {
					'minecraft:purple_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_gohan1',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_gohan_super' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:purple_dye',
				},
				[ '2' ] = {
					'minecraft:purple_dye',
				},
				[ '5' ] = {
					'minecraft:purple_dye',
				},
				[ '6' ] = {
					'minecraft:purple_dye',
				},
				[ '7' ] = {
					'minecraft:purple_dye',
				},
				[ '8' ] = {
					'minecraft:purple_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:purple_dye',
				},
				[ '12' ] = {
					'minecraft:purple_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:purple_dye',
				},
				[ '15' ] = {
					'minecraft:purple_dye',
				},
				[ '16' ] = {
					'minecraft:purple_dye',
				},
				[ '17' ] = {
					'minecraft:purple_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:purple_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:purple_dye',
				},
				[ '23' ] = {
					'minecraft:purple_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:purple_dye',
				},
				[ '27' ] = {
					'minecraft:purple_dye',
				},
				[ '28' ] = {
					'minecraft:purple_dye',
				},
				[ '29' ] = {
					'minecraft:purple_dye',
				},
				[ '31' ] = {
					'minecraft:gray_dye',
				},
				[ '32' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:red_dye',
				},
				[ '36' ] = {
					'minecraft:gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_gohan_super',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_goku1' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:orange_dye',
				},
				[ '2' ] = {
					'minecraft:orange_dye',
				},
				[ '5' ] = {
					'minecraft:orange_dye',
				},
				[ '6' ] = {
					'minecraft:orange_dye',
				},
				[ '7' ] = {
					'minecraft:orange_dye',
				},
				[ '8' ] = {
					'minecraft:orange_dye',
				},
				[ '9' ] = {
					'minecraft:blue_dye',
				},
				[ '10' ] = {
					'minecraft:blue_dye',
				},
				[ '11' ] = {
					'minecraft:orange_dye',
				},
				[ '12' ] = {
					'minecraft:orange_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:orange_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:orange_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:orange_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:orange_dye',
				},
				[ '23' ] = {
					'minecraft:orange_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:orange_dye',
				},
				[ '27' ] = {
					'minecraft:orange_dye',
				},
				[ '28' ] = {
					'minecraft:orange_dye',
				},
				[ '29' ] = {
					'minecraft:orange_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '33' ] = {
					'minecraft:blue_dye',
				},
				[ '34' ] = {
					'minecraft:blue_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_goku1',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_goku_gt' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:blue_dye',
				},
				[ '2' ] = {
					'minecraft:blue_dye',
				},
				[ '5' ] = {
					'minecraft:blue_dye',
				},
				[ '6' ] = {
					'minecraft:blue_dye',
				},
				[ '7' ] = {
					'minecraft:blue_dye',
				},
				[ '8' ] = {
					'minecraft:blue_dye',
				},
				[ '9' ] = {
					'minecraft:light_blue_dye',
				},
				[ '10' ] = {
					'minecraft:light_blue_dye',
				},
				[ '11' ] = {
					'minecraft:blue_dye',
				},
				[ '12' ] = {
					'minecraft:blue_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:light_blue_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:light_blue_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:blue_dye',
				},
				[ '23' ] = {
					'minecraft:blue_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:blue_dye',
				},
				[ '27' ] = {
					'minecraft:blue_dye',
				},
				[ '28' ] = {
					'minecraft:blue_dye',
				},
				[ '29' ] = {
					'minecraft:blue_dye',
				},
				[ '31' ] = {
					'minecraft:magenta_dye',
				},
				[ '32' ] = {
					'minecraft:light_gray_dye',
				},
				[ '33' ] = {
					'minecraft:light_gray_dye',
				},
				[ '34' ] = {
					'minecraft:light_gray_dye',
				},
				[ '35' ] = {
					'minecraft:light_gray_dye',
				},
				[ '36' ] = {
					'minecraft:magenta_dye',
				},
			},
			result = {
				'dragonminez:pattern_goku_gt',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_goku_kid' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:red_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:red_dye',
				},
				[ '7' ] = {
					'minecraft:red_dye',
				},
				[ '8' ] = {
					'minecraft:red_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:red_dye',
				},
				[ '12' ] = {
					'minecraft:red_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:red_dye',
				},
				[ '15' ] = {
					'minecraft:red_dye',
				},
				[ '16' ] = {
					'minecraft:red_dye',
				},
				[ '17' ] = {
					'minecraft:yellow_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:red_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:red_dye',
				},
				[ '23' ] = {
					'minecraft:red_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:red_dye',
				},
				[ '27' ] = {
					'minecraft:red_dye',
				},
				[ '28' ] = {
					'minecraft:red_dye',
				},
				[ '29' ] = {
					'minecraft:red_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_goku_kid',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_goku_super' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:orange_dye',
				},
				[ '2' ] = {
					'minecraft:orange_dye',
				},
				[ '5' ] = {
					'minecraft:orange_dye',
				},
				[ '6' ] = {
					'minecraft:orange_dye',
				},
				[ '7' ] = {
					'minecraft:orange_dye',
				},
				[ '8' ] = {
					'minecraft:orange_dye',
				},
				[ '9' ] = {
					'minecraft:light_blue_dye',
				},
				[ '10' ] = {
					'minecraft:light_blue_dye',
				},
				[ '11' ] = {
					'minecraft:orange_dye',
				},
				[ '12' ] = {
					'minecraft:orange_dye',
				},
				[ '13' ] = {
					'minecraft:light_blue_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:light_blue_dye',
				},
				[ '16' ] = {
					'minecraft:light_blue_dye',
				},
				[ '17' ] = {
					'minecraft:orange_dye',
				},
				[ '18' ] = {
					'minecraft:light_blue_dye',
				},
				[ '19' ] = {
					'minecraft:light_blue_dye',
				},
				[ '20' ] = {
					'minecraft:orange_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:orange_dye',
				},
				[ '23' ] = {
					'minecraft:orange_dye',
				},
				[ '24' ] = {
					'minecraft:light_blue_dye',
				},
				[ '26' ] = {
					'minecraft:orange_dye',
				},
				[ '27' ] = {
					'minecraft:orange_dye',
				},
				[ '28' ] = {
					'minecraft:orange_dye',
				},
				[ '29' ] = {
					'minecraft:orange_dye',
				},
				[ '31' ] = {
					'minecraft:light_blue_dye',
				},
				[ '32' ] = {
					'minecraft:light_blue_dye',
				},
				[ '33' ] = {
					'minecraft:light_blue_dye',
				},
				[ '34' ] = {
					'minecraft:light_blue_dye',
				},
				[ '35' ] = {
					'minecraft:light_blue_dye',
				},
				[ '36' ] = {
					'minecraft:light_blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_goku_super',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_goku_whis' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:orange_dye',
				},
				[ '2' ] = {
					'minecraft:orange_dye',
				},
				[ '5' ] = {
					'minecraft:orange_dye',
				},
				[ '6' ] = {
					'minecraft:orange_dye',
				},
				[ '7' ] = {
					'minecraft:orange_dye',
				},
				[ '8' ] = {
					'minecraft:orange_dye',
				},
				[ '9' ] = {
					'minecraft:blue_dye',
				},
				[ '10' ] = {
					'minecraft:blue_dye',
				},
				[ '11' ] = {
					'minecraft:orange_dye',
				},
				[ '12' ] = {
					'minecraft:orange_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:orange_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:orange_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:orange_dye',
				},
				[ '23' ] = {
					'minecraft:orange_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:orange_dye',
				},
				[ '27' ] = {
					'minecraft:orange_dye',
				},
				[ '28' ] = {
					'minecraft:orange_dye',
				},
				[ '29' ] = {
					'minecraft:orange_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '33' ] = {
					'minecraft:blue_dye',
				},
				[ '34' ] = {
					'minecraft:blue_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_goku_whis',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_goten' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:orange_dye',
				},
				[ '2' ] = {
					'minecraft:orange_dye',
				},
				[ '5' ] = {
					'minecraft:orange_dye',
				},
				[ '6' ] = {
					'minecraft:orange_dye',
				},
				[ '7' ] = {
					'minecraft:orange_dye',
				},
				[ '8' ] = {
					'minecraft:orange_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:orange_dye',
				},
				[ '12' ] = {
					'minecraft:orange_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:orange_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:orange_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:orange_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:orange_dye',
				},
				[ '23' ] = {
					'minecraft:orange_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:orange_dye',
				},
				[ '27' ] = {
					'minecraft:orange_dye',
				},
				[ '28' ] = {
					'minecraft:orange_dye',
				},
				[ '29' ] = {
					'minecraft:orange_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '33' ] = {
					'minecraft:black_dye',
				},
				[ '34' ] = {
					'minecraft:black_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_goten',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_goten_super' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:lime_dye',
				},
				[ '2' ] = {
					'minecraft:lime_dye',
				},
				[ '5' ] = {
					'minecraft:lime_dye',
				},
				[ '6' ] = {
					'minecraft:lime_dye',
				},
				[ '7' ] = {
					'minecraft:lime_dye',
				},
				[ '8' ] = {
					'minecraft:green_dye',
				},
				[ '9' ] = {
					'minecraft:green_dye',
				},
				[ '10' ] = {
					'minecraft:green_dye',
				},
				[ '11' ] = {
					'minecraft:green_dye',
				},
				[ '12' ] = {
					'minecraft:lime_dye',
				},
				[ '13' ] = {
					'minecraft:green_dye',
				},
				[ '14' ] = {
					'minecraft:lime_dye',
				},
				[ '15' ] = {
					'minecraft:lime_dye',
				},
				[ '16' ] = {
					'minecraft:lime_dye',
				},
				[ '17' ] = {
					'minecraft:lime_dye',
				},
				[ '18' ] = {
					'minecraft:green_dye',
				},
				[ '19' ] = {
					'minecraft:green_dye',
				},
				[ '20' ] = {
					'minecraft:lime_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:lime_dye',
				},
				[ '23' ] = {
					'minecraft:lime_dye',
				},
				[ '24' ] = {
					'minecraft:green_dye',
				},
				[ '26' ] = {
					'minecraft:lime_dye',
				},
				[ '27' ] = {
					'minecraft:green_dye',
				},
				[ '28' ] = {
					'minecraft:green_dye',
				},
				[ '29' ] = {
					'minecraft:lime_dye',
				},
				[ '31' ] = {
					'minecraft:light_gray_dye',
				},
				[ '32' ] = {
					'minecraft:light_gray_dye',
				},
				[ '33' ] = {
					'minecraft:green_dye',
				},
				[ '34' ] = {
					'minecraft:green_dye',
				},
				[ '35' ] = {
					'minecraft:light_gray_dye',
				},
				[ '36' ] = {
					'minecraft:light_gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_goten_super',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_granola' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:black_dye',
				},
				[ '2' ] = {
					'minecraft:white_dye',
				},
				[ '5' ] = {
					'minecraft:white_dye',
				},
				[ '6' ] = {
					'minecraft:black_dye',
				},
				[ '7' ] = {
					'minecraft:green_dye',
				},
				[ '8' ] = {
					'minecraft:light_gray_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:white_dye',
				},
				[ '11' ] = {
					'minecraft:light_gray_dye',
				},
				[ '12' ] = {
					'minecraft:green_dye',
				},
				[ '14' ] = {
					'minecraft:light_gray_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:light_gray_dye',
				},
				[ '20' ] = {
					'minecraft:light_gray_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:yellow_dye',
				},
				[ '23' ] = {
					'minecraft:light_gray_dye',
				},
				[ '25' ] = {
					'minecraft:brown_dye',
				},
				[ '26' ] = {
					'minecraft:brown_dye',
				},
				[ '27' ] = {
					'minecraft:brown_dye',
				},
				[ '28' ] = {
					'minecraft:brown_dye',
				},
				[ '29' ] = {
					'minecraft:brown_dye',
				},
				[ '30' ] = {
					'minecraft:brown_dye',
				},
				[ '33' ] = {
					'minecraft:gray_dye',
				},
				[ '34' ] = {
					'minecraft:gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_granola',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_great_saiyaman' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:green_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:green_dye',
				},
				[ '7' ] = {
					'minecraft:green_dye',
				},
				[ '8' ] = {
					'minecraft:green_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:green_dye',
				},
				[ '12' ] = {
					'minecraft:green_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:green_dye',
				},
				[ '15' ] = {
					'minecraft:lime_dye',
				},
				[ '16' ] = {
					'minecraft:lime_dye',
				},
				[ '17' ] = {
					'minecraft:green_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:green_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:lime_dye',
				},
				[ '23' ] = {
					'minecraft:green_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '25' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:green_dye',
				},
				[ '27' ] = {
					'minecraft:green_dye',
				},
				[ '28' ] = {
					'minecraft:green_dye',
				},
				[ '29' ] = {
					'minecraft:green_dye',
				},
				[ '30' ] = {
					'minecraft:black_dye',
				},
				[ '31' ] = {
					'minecraft:red_dye',
				},
				[ '32' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:red_dye',
				},
				[ '36' ] = {
					'minecraft:red_dye',
				},
			},
			result = {
				'dragonminez:pattern_great_saiyaman',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_great_saiyaman_2' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:green_dye',
				},
				[ '2' ] = {
					'minecraft:cyan_dye',
				},
				[ '5' ] = {
					'minecraft:cyan_dye',
				},
				[ '6' ] = {
					'minecraft:green_dye',
				},
				[ '7' ] = {
					'minecraft:cyan_dye',
				},
				[ '8' ] = {
					'minecraft:cyan_dye',
				},
				[ '9' ] = {
					'minecraft:purple_dye',
				},
				[ '10' ] = {
					'minecraft:purple_dye',
				},
				[ '11' ] = {
					'minecraft:cyan_dye',
				},
				[ '12' ] = {
					'minecraft:cyan_dye',
				},
				[ '13' ] = {
					'minecraft:purple_dye',
				},
				[ '14' ] = {
					'minecraft:cyan_dye',
				},
				[ '15' ] = {
					'minecraft:cyan_dye',
				},
				[ '16' ] = {
					'minecraft:cyan_dye',
				},
				[ '17' ] = {
					'minecraft:cyan_dye',
				},
				[ '18' ] = {
					'minecraft:purple_dye',
				},
				[ '19' ] = {
					'minecraft:purple_dye',
				},
				[ '20' ] = {
					'minecraft:cyan_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:cyan_dye',
				},
				[ '23' ] = {
					'minecraft:cyan_dye',
				},
				[ '24' ] = {
					'minecraft:purple_dye',
				},
				[ '26' ] = {
					'minecraft:white_dye',
				},
				[ '27' ] = {
					'minecraft:white_dye',
				},
				[ '28' ] = {
					'minecraft:orange_dye',
				},
				[ '29' ] = {
					'minecraft:white_dye',
				},
				[ '32' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:red_dye',
				},
			},
			result = {
				'dragonminez:pattern_great_saiyaman_2',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_hit' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:black_dye',
				},
				[ '2' ] = {
					'minecraft:purple_dye',
				},
				[ '5' ] = {
					'minecraft:purple_dye',
				},
				[ '6' ] = {
					'minecraft:black_dye',
				},
				[ '7' ] = {
					'minecraft:purple_dye',
				},
				[ '8' ] = {
					'minecraft:purple_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:purple_dye',
				},
				[ '12' ] = {
					'minecraft:purple_dye',
				},
				[ '13' ] = {
					'minecraft:cyan_dye',
				},
				[ '14' ] = {
					'minecraft:purple_dye',
				},
				[ '15' ] = {
					'minecraft:purple_dye',
				},
				[ '16' ] = {
					'minecraft:purple_dye',
				},
				[ '17' ] = {
					'minecraft:purple_dye',
				},
				[ '18' ] = {
					'minecraft:cyan_dye',
				},
				[ '19' ] = {
					'minecraft:cyan_dye',
				},
				[ '20' ] = {
					'minecraft:purple_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:purple_dye',
				},
				[ '23' ] = {
					'minecraft:purple_dye',
				},
				[ '24' ] = {
					'minecraft:cyan_dye',
				},
				[ '26' ] = {
					'minecraft:purple_dye',
				},
				[ '27' ] = {
					'minecraft:purple_dye',
				},
				[ '28' ] = {
					'minecraft:purple_dye',
				},
				[ '29' ] = {
					'minecraft:purple_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:yellow_dye',
				},
				[ '34' ] = {
					'minecraft:yellow_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_hit',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_kale' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:red_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:red_dye',
				},
				[ '7' ] = {
					'minecraft:red_dye',
				},
				[ '8' ] = {
					'minecraft:red_dye',
				},
				[ '9' ] = {
					'minecraft:red_dye',
				},
				[ '10' ] = {
					'minecraft:red_dye',
				},
				[ '11' ] = {
					'minecraft:red_dye',
				},
				[ '12' ] = {
					'minecraft:red_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:red_dye',
				},
				[ '15' ] = {
					'minecraft:red_dye',
				},
				[ '16' ] = {
					'minecraft:red_dye',
				},
				[ '17' ] = {
					'minecraft:red_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:red_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:red_dye',
				},
				[ '23' ] = {
					'minecraft:red_dye',
				},
				[ '26' ] = {
					'minecraft:red_dye',
				},
				[ '27' ] = {
					'minecraft:red_dye',
				},
				[ '28' ] = {
					'minecraft:red_dye',
				},
				[ '29' ] = {
					'minecraft:red_dye',
				},
				[ '31' ] = {
					'minecraft:yellow_dye',
				},
				[ '36' ] = {
					'minecraft:yellow_dye',
				},
			},
			result = {
				'dragonminez:pattern_kale',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_kefla' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:magenta_dye',
				},
				[ '2' ] = {
					'minecraft:magenta_dye',
				},
				[ '5' ] = {
					'minecraft:magenta_dye',
				},
				[ '6' ] = {
					'minecraft:magenta_dye',
				},
				[ '8' ] = {
					'minecraft:magenta_dye',
				},
				[ '9' ] = {
					'minecraft:magenta_dye',
				},
				[ '10' ] = {
					'minecraft:magenta_dye',
				},
				[ '11' ] = {
					'minecraft:magenta_dye',
				},
				[ '13' ] = {
					'minecraft:yellow_dye',
				},
				[ '14' ] = {
					'minecraft:magenta_dye',
				},
				[ '15' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '16' ] = {
					'minecraft:magenta_dye',
				},
				[ '17' ] = {
					'minecraft:magenta_dye',
				},
				[ '18' ] = {
					'minecraft:yellow_dye',
				},
				[ '19' ] = {
					'minecraft:yellow_dye',
				},
				[ '20' ] = {
					'minecraft:magenta_dye',
				},
				[ '21' ] = {
					'minecraft:magenta_dye',
				},
				[ '22' ] = {
					'minecraft:magenta_dye',
				},
				[ '23' ] = {
					'minecraft:magenta_dye',
				},
				[ '24' ] = {
					'minecraft:yellow_dye',
				},
				[ '26' ] = {
					'minecraft:magenta_dye',
				},
				[ '27' ] = {
					'minecraft:magenta_dye',
				},
				[ '28' ] = {
					'minecraft:magenta_dye',
				},
				[ '29' ] = {
					'minecraft:magenta_dye',
				},
				[ '33' ] = {
					'minecraft:magenta_dye',
				},
				[ '34' ] = {
					'minecraft:magenta_dye',
				},
			},
			result = {
				'dragonminez:pattern_kefla',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_kibito' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:red_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:red_dye',
				},
				[ '7' ] = {
					'minecraft:red_dye',
				},
				[ '8' ] = {
					'minecraft:red_dye',
				},
				[ '9' ] = {
					'minecraft:cyan_dye',
				},
				[ '10' ] = {
					'minecraft:cyan_dye',
				},
				[ '11' ] = {
					'minecraft:red_dye',
				},
				[ '12' ] = {
					'minecraft:red_dye',
				},
				[ '13' ] = {
					'minecraft:light_blue_dye',
				},
				[ '14' ] = {
					'minecraft:red_dye',
				},
				[ '15' ] = {
					'minecraft:red_dye',
				},
				[ '16' ] = {
					'minecraft:red_dye',
				},
				[ '17' ] = {
					'minecraft:red_dye',
				},
				[ '18' ] = {
					'minecraft:light_blue_dye',
				},
				[ '19' ] = {
					'minecraft:light_blue_dye',
				},
				[ '20' ] = {
					'minecraft:red_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:red_dye',
				},
				[ '23' ] = {
					'minecraft:red_dye',
				},
				[ '24' ] = {
					'minecraft:light_blue_dye',
				},
				[ '26' ] = {
					'minecraft:brown_dye',
				},
				[ '27' ] = {
					'minecraft:red_dye',
				},
				[ '28' ] = {
					'minecraft:red_dye',
				},
				[ '29' ] = {
					'minecraft:brown_dye',
				},
				[ '31' ] = {
					'minecraft:cyan_dye',
				},
				[ '32' ] = {
					'minecraft:orange_dye',
				},
				[ '33' ] = {
					'minecraft:orange_dye',
				},
				[ '34' ] = {
					'minecraft:orange_dye',
				},
				[ '35' ] = {
					'minecraft:orange_dye',
				},
				[ '36' ] = {
					'minecraft:cyan_dye',
				},
			},
			result = {
				'dragonminez:pattern_kibito',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_king_vegeta' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:pink_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:pink_dye',
				},
				[ '7' ] = {
					'minecraft:white_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:blue_dye',
				},
				[ '10' ] = {
					'minecraft:blue_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:white_dye',
				},
				[ '13' ] = {
					'minecraft:white_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:white_dye',
				},
				[ '18' ] = {
					'minecraft:white_dye',
				},
				[ '19' ] = {
					'minecraft:light_gray_dye',
				},
				[ '20' ] = {
					'minecraft:white_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:white_dye',
				},
				[ '24' ] = {
					'minecraft:light_gray_dye',
				},
				[ '25' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:pink_dye',
				},
				[ '28' ] = {
					'minecraft:pink_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '30' ] = {
					'minecraft:black_dye',
				},
				[ '31' ] = {
					'minecraft:black_dye',
				},
				[ '32' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:red_dye',
				},
				[ '36' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_king_vegeta',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_majin21' ] = {
			kind = 'pattern',
			slots = {
				[ '3' ] = {
					'minecraft:brown_dye',
				},
				[ '4' ] = {
					'minecraft:brown_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:white_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '25' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '30' ] = {
					'minecraft:black_dye',
				},
				[ '31' ] = {
					'minecraft:yellow_dye',
				},
				[ '36' ] = {
					'minecraft:yellow_dye',
				},
			},
			result = {
				'dragonminez:pattern_majin21',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_majin_buu' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:purple_dye',
				},
				[ '2' ] = {
					'minecraft:purple_dye',
				},
				[ '5' ] = {
					'minecraft:purple_dye',
				},
				[ '6' ] = {
					'minecraft:purple_dye',
				},
				[ '7' ] = {
					'minecraft:black_dye',
				},
				[ '8' ] = {
					'minecraft:purple_dye',
				},
				[ '9' ] = {
					'minecraft:purple_dye',
				},
				[ '10' ] = {
					'minecraft:purple_dye',
				},
				[ '11' ] = {
					'minecraft:purple_dye',
				},
				[ '12' ] = {
					'minecraft:black_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:yellow_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:yellow_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:yellow_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:yellow_dye',
				},
				[ '25' ] = {
					'minecraft:yellow_dye',
				},
				[ '26' ] = {
					'minecraft:purple_dye',
				},
				[ '27' ] = {
					'minecraft:purple_dye',
				},
				[ '28' ] = {
					'minecraft:purple_dye',
				},
				[ '29' ] = {
					'minecraft:purple_dye',
				},
				[ '30' ] = {
					'minecraft:yellow_dye',
				},
				[ '31' ] = {
					'minecraft:yellow_dye',
				},
				[ '32' ] = {
					'minecraft:purple_dye',
				},
				[ '33' ] = {
					'minecraft:purple_dye',
				},
				[ '34' ] = {
					'minecraft:purple_dye',
				},
				[ '35' ] = {
					'minecraft:purple_dye',
				},
				[ '36' ] = {
					'minecraft:yellow_dye',
				},
			},
			result = {
				'dragonminez:pattern_majin_buu',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_mighty_majin' ] = {
			kind = 'pattern',
			slots = {
				[ '2' ] = {
					'minecraft:brown_dye',
				},
				[ '3' ] = {
					'minecraft:brown_dye',
				},
				[ '4' ] = {
					'minecraft:brown_dye',
				},
				[ '5' ] = {
					'minecraft:brown_dye',
				},
				[ '7' ] = {
					'minecraft:yellow_dye',
				},
				[ '8' ] = {
					'minecraft:yellow_dye',
				},
				[ '9' ] = {
					'minecraft:yellow_dye',
				},
				[ '10' ] = {
					'minecraft:yellow_dye',
				},
				[ '11' ] = {
					'minecraft:yellow_dye',
				},
				[ '12' ] = {
					'minecraft:yellow_dye',
				},
				[ '13' ] = {
					'minecraft:yellow_dye',
				},
				[ '14' ] = {
					'minecraft:green_dye',
				},
				[ '15' ] = {
					'minecraft:yellow_dye',
				},
				[ '16' ] = {
					'minecraft:yellow_dye',
				},
				[ '17' ] = {
					'minecraft:green_dye',
				},
				[ '18' ] = {
					'minecraft:yellow_dye',
				},
				[ '19' ] = {
					'minecraft:yellow_dye',
				},
				[ '20' ] = {
					'minecraft:yellow_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:yellow_dye',
				},
				[ '23' ] = {
					'minecraft:yellow_dye',
				},
				[ '24' ] = {
					'minecraft:yellow_dye',
				},
				[ '25' ] = {
					'minecraft:purple_dye',
				},
				[ '26' ] = {
					'minecraft:purple_dye',
				},
				[ '27' ] = {
					'minecraft:purple_dye',
				},
				[ '28' ] = {
					'minecraft:purple_dye',
				},
				[ '29' ] = {
					'minecraft:purple_dye',
				},
				[ '30' ] = {
					'minecraft:purple_dye',
				},
				[ '32' ] = {
					'minecraft:purple_dye',
				},
				[ '33' ] = {
					'minecraft:purple_dye',
				},
				[ '34' ] = {
					'minecraft:purple_dye',
				},
				[ '35' ] = {
					'minecraft:purple_dye',
				},
			},
			result = {
				'dragonminez:pattern_mighty_majin',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_mystic' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:white_dye',
				},
				[ '2' ] = {
					'minecraft:white_dye',
				},
				[ '5' ] = {
					'minecraft:white_dye',
				},
				[ '6' ] = {
					'minecraft:white_dye',
				},
				[ '7' ] = {
					'minecraft:white_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:cyan_dye',
				},
				[ '10' ] = {
					'minecraft:cyan_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:white_dye',
				},
				[ '13' ] = {
					'minecraft:white_dye',
				},
				[ '14' ] = {
					'minecraft:cyan_dye',
				},
				[ '15' ] = {
					'minecraft:cyan_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:cyan_dye',
				},
				[ '18' ] = {
					'minecraft:white_dye',
				},
				[ '20' ] = {
					'minecraft:cyan_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:cyan_dye',
				},
				[ '26' ] = {
					'minecraft:cyan_dye',
				},
				[ '27' ] = {
					'minecraft:cyan_dye',
				},
				[ '28' ] = {
					'minecraft:cyan_dye',
				},
				[ '29' ] = {
					'minecraft:cyan_dye',
				},
				[ '32' ] = {
					'minecraft:light_gray_dye',
				},
				[ '33' ] = {
					'minecraft:light_gray_dye',
				},
				[ '34' ] = {
					'minecraft:light_gray_dye',
				},
				[ '35' ] = {
					'minecraft:light_gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_mystic',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_orange_high' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:light_gray_dye',
				},
				[ '2' ] = {
					'minecraft:black_dye',
				},
				[ '5' ] = {
					'minecraft:black_dye',
				},
				[ '6' ] = {
					'minecraft:light_gray_dye',
				},
				[ '7' ] = {
					'minecraft:light_gray_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:white_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:light_gray_dye',
				},
				[ '13' ] = {
					'minecraft:light_gray_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:green_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:light_gray_dye',
				},
				[ '19' ] = {
					'minecraft:light_gray_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:light_gray_dye',
				},
				[ '26' ] = {
					'minecraft:white_dye',
				},
				[ '27' ] = {
					'minecraft:white_dye',
				},
				[ '28' ] = {
					'minecraft:white_dye',
				},
				[ '29' ] = {
					'minecraft:white_dye',
				},
				[ '32' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:orange_dye',
				},
				[ '34' ] = {
					'minecraft:orange_dye',
				},
				[ '35' ] = {
					'minecraft:red_dye',
				},
			},
			result = {
				'dragonminez:pattern_orange_high',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_piccolo' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:purple_dye',
				},
				[ '2' ] = {
					'minecraft:purple_dye',
				},
				[ '5' ] = {
					'minecraft:purple_dye',
				},
				[ '6' ] = {
					'minecraft:purple_dye',
				},
				[ '7' ] = {
					'minecraft:purple_dye',
				},
				[ '8' ] = {
					'minecraft:purple_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:purple_dye',
				},
				[ '12' ] = {
					'minecraft:purple_dye',
				},
				[ '13' ] = {
					'minecraft:purple_dye',
				},
				[ '14' ] = {
					'minecraft:purple_dye',
				},
				[ '15' ] = {
					'minecraft:purple_dye',
				},
				[ '16' ] = {
					'minecraft:purple_dye',
				},
				[ '17' ] = {
					'minecraft:purple_dye',
				},
				[ '18' ] = {
					'minecraft:purple_dye',
				},
				[ '20' ] = {
					'minecraft:purple_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:purple_dye',
				},
				[ '23' ] = {
					'minecraft:purple_dye',
				},
				[ '26' ] = {
					'minecraft:purple_dye',
				},
				[ '27' ] = {
					'minecraft:purple_dye',
				},
				[ '28' ] = {
					'minecraft:purple_dye',
				},
				[ '29' ] = {
					'minecraft:purple_dye',
				},
				[ '31' ] = {
					'minecraft:red_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '33' ] = {
					'minecraft:blue_dye',
				},
				[ '34' ] = {
					'minecraft:blue_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
				[ '36' ] = {
					'minecraft:red_dye',
				},
			},
			result = {
				'dragonminez:pattern_piccolo',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_pride_troops' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:black_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:black_dye',
				},
				[ '7' ] = {
					'minecraft:red_dye',
				},
				[ '8' ] = {
					'minecraft:red_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:red_dye',
				},
				[ '12' ] = {
					'minecraft:red_dye',
				},
				[ '13' ] = {
					'minecraft:red_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:red_dye',
				},
				[ '16' ] = {
					'minecraft:red_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:red_dye',
				},
				[ '19' ] = {
					'minecraft:red_dye',
				},
				[ '20' ] = {
					'minecraft:red_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:red_dye',
				},
				[ '23' ] = {
					'minecraft:red_dye',
				},
				[ '24' ] = {
					'minecraft:red_dye',
				},
				[ '25' ] = {
					'minecraft:white_dye',
				},
				[ '26' ] = {
					'minecraft:red_dye',
				},
				[ '27' ] = {
					'minecraft:red_dye',
				},
				[ '28' ] = {
					'minecraft:red_dye',
				},
				[ '29' ] = {
					'minecraft:red_dye',
				},
				[ '30' ] = {
					'minecraft:white_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_pride_troops',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_raditz' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:brown_dye',
				},
				[ '2' ] = {
					'minecraft:brown_dye',
				},
				[ '5' ] = {
					'minecraft:brown_dye',
				},
				[ '6' ] = {
					'minecraft:brown_dye',
				},
				[ '7' ] = {
					'minecraft:brown_dye',
				},
				[ '8' ] = {
					'minecraft:white_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:white_dye',
				},
				[ '12' ] = {
					'minecraft:brown_dye',
				},
				[ '13' ] = {
					'minecraft:white_dye',
				},
				[ '14' ] = {
					'minecraft:blue_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:blue_dye',
				},
				[ '18' ] = {
					'minecraft:white_dye',
				},
				[ '20' ] = {
					'minecraft:blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:blue_dye',
				},
				[ '23' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:blue_dye',
				},
				[ '27' ] = {
					'minecraft:brown_dye',
				},
				[ '28' ] = {
					'minecraft:brown_dye',
				},
				[ '29' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:white_dye',
				},
				[ '35' ] = {
					'minecraft:white_dye',
				},
			},
			result = {
				'dragonminez:pattern_raditz',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_shin' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:red_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:red_dye',
				},
				[ '7' ] = {
					'minecraft:cyan_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:red_dye',
				},
				[ '10' ] = {
					'minecraft:red_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:cyan_dye',
				},
				[ '13' ] = {
					'minecraft:cyan_dye',
				},
				[ '14' ] = {
					'minecraft:cyan_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:cyan_dye',
				},
				[ '18' ] = {
					'minecraft:cyan_dye',
				},
				[ '19' ] = {
					'minecraft:light_blue_dye',
				},
				[ '20' ] = {
					'minecraft:cyan_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:cyan_dye',
				},
				[ '24' ] = {
					'minecraft:light_blue_dye',
				},
				[ '25' ] = {
					'minecraft:light_blue_dye',
				},
				[ '26' ] = {
					'minecraft:cyan_dye',
				},
				[ '27' ] = {
					'minecraft:cyan_dye',
				},
				[ '28' ] = {
					'minecraft:cyan_dye',
				},
				[ '29' ] = {
					'minecraft:cyan_dye',
				},
				[ '30' ] = {
					'minecraft:light_blue_dye',
				},
				[ '31' ] = {
					'minecraft:white_dye',
				},
				[ '32' ] = {
					'minecraft:orange_dye',
				},
				[ '33' ] = {
					'minecraft:orange_dye',
				},
				[ '34' ] = {
					'minecraft:orange_dye',
				},
				[ '35' ] = {
					'minecraft:orange_dye',
				},
				[ '36' ] = {
					'minecraft:white_dye',
				},
			},
			result = {
				'dragonminez:pattern_shin',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_slug' ] = {
			kind = 'pattern',
			slots = {
				[ '2' ] = {
					'minecraft:orange_dye',
				},
				[ '3' ] = {
					'minecraft:orange_dye',
				},
				[ '4' ] = {
					'minecraft:orange_dye',
				},
				[ '5' ] = {
					'minecraft:orange_dye',
				},
				[ '7' ] = {
					'minecraft:yellow_dye',
				},
				[ '8' ] = {
					'minecraft:orange_dye',
				},
				[ '9' ] = {
					'minecraft:orange_dye',
				},
				[ '10' ] = {
					'minecraft:orange_dye',
				},
				[ '11' ] = {
					'minecraft:orange_dye',
				},
				[ '12' ] = {
					'minecraft:yellow_dye',
				},
				[ '13' ] = {
					'minecraft:purple_dye',
				},
				[ '14' ] = {
					'minecraft:yellow_dye',
				},
				[ '15' ] = {
					'minecraft:red_dye',
				},
				[ '16' ] = {
					'minecraft:red_dye',
				},
				[ '17' ] = {
					'minecraft:yellow_dye',
				},
				[ '18' ] = {
					'minecraft:purple_dye',
				},
				[ '19' ] = {
					'minecraft:orange_dye',
				},
				[ '20' ] = {
					'minecraft:yellow_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:purple_dye',
				},
				[ '23' ] = {
					'minecraft:yellow_dye',
				},
				[ '24' ] = {
					'minecraft:orange_dye',
				},
				[ '25' ] = {
					'minecraft:orange_dye',
				},
				[ '26' ] = {
					'minecraft:yellow_dye',
				},
				[ '27' ] = {
					'minecraft:yellow_dye',
				},
				[ '28' ] = {
					'minecraft:yellow_dye',
				},
				[ '29' ] = {
					'minecraft:yellow_dye',
				},
				[ '30' ] = {
					'minecraft:orange_dye',
				},
				[ '32' ] = {
					'minecraft:yellow_dye',
				},
				[ '33' ] = {
					'minecraft:purple_dye',
				},
				[ '34' ] = {
					'minecraft:purple_dye',
				},
				[ '35' ] = {
					'minecraft:yellow_dye',
				},
			},
			result = {
				'dragonminez:pattern_slug',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_station' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:crafting_table',
				},
				[ '2' ] = {
					'minecraft:quartz_slab',
				},
				[ '3' ] = {
					'minecraft:crafting_table',
				},
				[ '4' ] = {
					'minecraft:quartz_block',
				},
				[ '5' ] = {
					'dragonminez:armor_crafting_kit',
				},
				[ '6' ] = {
					'minecraft:quartz_block',
				},
				[ '7' ] = {
					'minecraft:crafting_table',
				},
				[ '8' ] = {
					'minecraft:quartz_slab',
				},
				[ '9' ] = {
					'minecraft:crafting_table',
				},
			},
			result = {
				'dragonminez:pattern_station',
			},
		},
		[ 'dragonminez:pattern_super_buu' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:yellow_dye',
				},
				[ '6' ] = {
					'minecraft:yellow_dye',
				},
				[ '7' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:black_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '25' ] = {
					'minecraft:black_dye',
				},
				[ '30' ] = {
					'minecraft:black_dye',
				},
				[ '31' ] = {
					'minecraft:yellow_dye',
				},
				[ '36' ] = {
					'minecraft:yellow_dye',
				},
			},
			result = {
				'dragonminez:pattern_super_buu',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_tien' ] = {
			kind = 'pattern',
			slots = {
				[ '5' ] = {
					'minecraft:green_dye',
				},
				[ '6' ] = {
					'minecraft:green_dye',
				},
				[ '10' ] = {
					'minecraft:green_dye',
				},
				[ '11' ] = {
					'minecraft:green_dye',
				},
				[ '15' ] = {
					'minecraft:green_dye',
				},
				[ '16' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '17' ] = {
					'minecraft:green_dye',
				},
				[ '19' ] = {
					'minecraft:red_dye',
				},
				[ '20' ] = {
					'minecraft:green_dye',
				},
				[ '21' ] = {
					'minecraft:green_dye',
				},
				[ '22' ] = {
					'minecraft:green_dye',
				},
				[ '23' ] = {
					'minecraft:green_dye',
				},
				[ '24' ] = {
					'minecraft:red_dye',
				},
				[ '25' ] = {
					'minecraft:red_dye',
				},
				[ '26' ] = {
					'minecraft:red_dye',
				},
				[ '27' ] = {
					'minecraft:red_dye',
				},
				[ '28' ] = {
					'minecraft:red_dye',
				},
				[ '29' ] = {
					'minecraft:red_dye',
				},
				[ '30' ] = {
					'minecraft:red_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
			},
			result = {
				'dragonminez:pattern_tien',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_trunks_kid' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:cyan_dye',
				},
				[ '2' ] = {
					'minecraft:cyan_dye',
				},
				[ '5' ] = {
					'minecraft:cyan_dye',
				},
				[ '6' ] = {
					'minecraft:cyan_dye',
				},
				[ '7' ] = {
					'minecraft:cyan_dye',
				},
				[ '8' ] = {
					'minecraft:cyan_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:cyan_dye',
				},
				[ '12' ] = {
					'minecraft:cyan_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:cyan_dye',
				},
				[ '15' ] = {
					'minecraft:cyan_dye',
				},
				[ '16' ] = {
					'minecraft:cyan_dye',
				},
				[ '17' ] = {
					'minecraft:cyan_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:cyan_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:cyan_dye',
				},
				[ '23' ] = {
					'minecraft:cyan_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:cyan_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:cyan_dye',
				},
				[ '31' ] = {
					'minecraft:orange_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:cyan_dye',
				},
				[ '34' ] = {
					'minecraft:cyan_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:orange_dye',
				},
			},
			result = {
				'dragonminez:pattern_trunks_kid',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_trunks_super' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:light_blue_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:light_blue_dye',
				},
				[ '7' ] = {
					'minecraft:blue_dye',
				},
				[ '8' ] = {
					'minecraft:light_blue_dye',
				},
				[ '9' ] = {
					'minecraft:red_dye',
				},
				[ '10' ] = {
					'minecraft:red_dye',
				},
				[ '11' ] = {
					'minecraft:light_blue_dye',
				},
				[ '12' ] = {
					'minecraft:blue_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:light_blue_dye',
				},
				[ '15' ] = {
					'minecraft:yellow_dye',
				},
				[ '16' ] = {
					'minecraft:yellow_dye',
				},
				[ '17' ] = {
					'minecraft:light_blue_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:light_blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:light_blue_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '25' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:blue_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:blue_dye',
				},
				[ '30' ] = {
					'minecraft:blue_dye',
				},
				[ '31' ] = {
					'minecraft:light_blue_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
				[ '36' ] = {
					'minecraft:light_blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_trunks_super',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_trunks_z' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:purple_dye',
				},
				[ '2' ] = {
					'minecraft:purple_dye',
				},
				[ '5' ] = {
					'minecraft:purple_dye',
				},
				[ '6' ] = {
					'minecraft:purple_dye',
				},
				[ '7' ] = {
					'minecraft:purple_dye',
				},
				[ '8' ] = {
					'minecraft:purple_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:purple_dye',
				},
				[ '12' ] = {
					'minecraft:purple_dye',
				},
				[ '13' ] = {
					'minecraft:purple_dye',
				},
				[ '14' ] = {
					'minecraft:purple_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:purple_dye',
				},
				[ '18' ] = {
					'minecraft:purple_dye',
				},
				[ '19' ] = {
					'minecraft:purple_dye',
				},
				[ '20' ] = {
					'minecraft:purple_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:purple_dye',
				},
				[ '24' ] = {
					'minecraft:purple_dye',
				},
				[ '25' ] = {
					'minecraft:purple_dye',
				},
				[ '26' ] = {
					'minecraft:purple_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:purple_dye',
				},
				[ '30' ] = {
					'minecraft:purple_dye',
				},
				[ '31' ] = {
					'minecraft:purple_dye',
				},
				[ '32' ] = {
					'minecraft:purple_dye',
				},
				[ '35' ] = {
					'minecraft:purple_dye',
				},
				[ '36' ] = {
					'minecraft:purple_dye',
				},
			},
			result = {
				'dragonminez:pattern_trunks_z',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_turles' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:light_gray_dye',
				},
				[ '2' ] = {
					'minecraft:light_gray_dye',
				},
				[ '5' ] = {
					'minecraft:light_gray_dye',
				},
				[ '6' ] = {
					'minecraft:light_gray_dye',
				},
				[ '7' ] = {
					'minecraft:purple_dye',
				},
				[ '8' ] = {
					'minecraft:blue_dye',
				},
				[ '9' ] = {
					'minecraft:white_dye',
				},
				[ '10' ] = {
					'minecraft:white_dye',
				},
				[ '11' ] = {
					'minecraft:blue_dye',
				},
				[ '12' ] = {
					'minecraft:purple_dye',
				},
				[ '13' ] = {
					'minecraft:white_dye',
				},
				[ '14' ] = {
					'minecraft:blue_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:blue_dye',
				},
				[ '18' ] = {
					'minecraft:white_dye',
				},
				[ '20' ] = {
					'minecraft:blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:blue_dye',
				},
				[ '23' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:blue_dye',
				},
				[ '27' ] = {
					'minecraft:light_gray_dye',
				},
				[ '28' ] = {
					'minecraft:light_gray_dye',
				},
				[ '29' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:white_dye',
				},
				[ '34' ] = {
					'minecraft:white_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_turles',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_vegeta1' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:yellow_dye',
				},
				[ '2' ] = {
					'minecraft:yellow_dye',
				},
				[ '5' ] = {
					'minecraft:yellow_dye',
				},
				[ '6' ] = {
					'minecraft:yellow_dye',
				},
				[ '7' ] = {
					'minecraft:orange_dye',
				},
				[ '8' ] = {
					'minecraft:white_dye',
				},
				[ '9' ] = {
					'minecraft:blue_dye',
				},
				[ '10' ] = {
					'minecraft:blue_dye',
				},
				[ '11' ] = {
					'minecraft:white_dye',
				},
				[ '12' ] = {
					'minecraft:orange_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:white_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:white_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:white_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '25' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:brown_dye',
				},
				[ '28' ] = {
					'minecraft:yellow_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '30' ] = {
					'minecraft:blue_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:orange_dye',
				},
				[ '33' ] = {
					'minecraft:brown_dye',
				},
				[ '34' ] = {
					'minecraft:brown_dye',
				},
				[ '35' ] = {
					'minecraft:orange_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_vegeta1',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_vegeta2' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:white_dye',
				},
				[ '2' ] = {
					'minecraft:light_gray_dye',
				},
				[ '5' ] = {
					'minecraft:light_gray_dye',
				},
				[ '6' ] = {
					'minecraft:white_dye',
				},
				[ '7' ] = {
					'minecraft:blue_dye',
				},
				[ '8' ] = {
					'minecraft:white_dye',
				},
				[ '9' ] = {
					'minecraft:blue_dye',
				},
				[ '10' ] = {
					'minecraft:blue_dye',
				},
				[ '11' ] = {
					'minecraft:white_dye',
				},
				[ '12' ] = {
					'minecraft:blue_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:white_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:white_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:white_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '25' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:brown_dye',
				},
				[ '28' ] = {
					'minecraft:yellow_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '30' ] = {
					'minecraft:blue_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:brown_dye',
				},
				[ '34' ] = {
					'minecraft:brown_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_vegeta2',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_vegeta_buu' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:blue_dye',
				},
				[ '2' ] = {
					'minecraft:blue_dye',
				},
				[ '5' ] = {
					'minecraft:blue_dye',
				},
				[ '6' ] = {
					'minecraft:blue_dye',
				},
				[ '7' ] = {
					'minecraft:blue_dye',
				},
				[ '8' ] = {
					'minecraft:blue_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:blue_dye',
				},
				[ '12' ] = {
					'minecraft:blue_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:blue_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:blue_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:blue_dye',
				},
				[ '23' ] = {
					'minecraft:blue_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:blue_dye',
				},
				[ '27' ] = {
					'minecraft:blue_dye',
				},
				[ '28' ] = {
					'minecraft:blue_dye',
				},
				[ '29' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:blue_dye',
				},
				[ '34' ] = {
					'minecraft:blue_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_vegeta_buu',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_vegeta_gt' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:red_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:red_dye',
				},
				[ '7' ] = {
					'minecraft:red_dye',
				},
				[ '8' ] = {
					'minecraft:red_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:red_dye',
				},
				[ '12' ] = {
					'minecraft:red_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:red_dye',
				},
				[ '15' ] = {
					'minecraft:red_dye',
				},
				[ '16' ] = {
					'minecraft:red_dye',
				},
				[ '17' ] = {
					'minecraft:red_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:red_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:red_dye',
				},
				[ '23' ] = {
					'minecraft:red_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:red_dye',
				},
				[ '27' ] = {
					'minecraft:red_dye',
				},
				[ '28' ] = {
					'minecraft:red_dye',
				},
				[ '29' ] = {
					'minecraft:red_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:red_dye',
				},
				[ '34' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_vegeta_gt',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_vegeta_super' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:yellow_dye',
				},
				[ '2' ] = {
					'minecraft:light_gray_dye',
				},
				[ '5' ] = {
					'minecraft:light_gray_dye',
				},
				[ '6' ] = {
					'minecraft:yellow_dye',
				},
				[ '7' ] = {
					'minecraft:cyan_dye',
				},
				[ '8' ] = {
					'minecraft:white_dye',
				},
				[ '9' ] = {
					'minecraft:blue_dye',
				},
				[ '10' ] = {
					'minecraft:blue_dye',
				},
				[ '11' ] = {
					'minecraft:white_dye',
				},
				[ '12' ] = {
					'minecraft:cyan_dye',
				},
				[ '13' ] = {
					'minecraft:cyan_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:white_dye',
				},
				[ '18' ] = {
					'minecraft:cyan_dye',
				},
				[ '19' ] = {
					'minecraft:cyan_dye',
				},
				[ '20' ] = {
					'minecraft:white_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:white_dye',
				},
				[ '24' ] = {
					'minecraft:cyan_dye',
				},
				[ '25' ] = {
					'minecraft:cyan_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:brown_dye',
				},
				[ '28' ] = {
					'minecraft:yellow_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '30' ] = {
					'minecraft:cyan_dye',
				},
				[ '31' ] = {
					'minecraft:black_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:brown_dye',
				},
				[ '34' ] = {
					'minecraft:brown_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_vegeta_super',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_vegeta_whis' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:yellow_dye',
				},
				[ '2' ] = {
					'minecraft:black_dye',
				},
				[ '5' ] = {
					'minecraft:black_dye',
				},
				[ '6' ] = {
					'minecraft:yellow_dye',
				},
				[ '7' ] = {
					'minecraft:black_dye',
				},
				[ '8' ] = {
					'minecraft:white_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:white_dye',
				},
				[ '12' ] = {
					'minecraft:black_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:white_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '19' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:white_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:white_dye',
				},
				[ '24' ] = {
					'minecraft:black_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:yellow_dye',
				},
				[ '28' ] = {
					'minecraft:yellow_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '32' ] = {
					'minecraft:yellow_dye',
				},
				[ '33' ] = {
					'minecraft:yellow_dye',
				},
				[ '34' ] = {
					'minecraft:yellow_dye',
				},
				[ '35' ] = {
					'minecraft:yellow_dye',
				},
			},
			result = {
				'dragonminez:pattern_vegeta_whis',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_vegeta_z' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:brown_dye',
				},
				[ '2' ] = {
					'minecraft:orange_dye',
				},
				[ '5' ] = {
					'minecraft:orange_dye',
				},
				[ '6' ] = {
					'minecraft:brown_dye',
				},
				[ '7' ] = {
					'minecraft:blue_dye',
				},
				[ '8' ] = {
					'minecraft:white_dye',
				},
				[ '9' ] = {
					'minecraft:blue_dye',
				},
				[ '10' ] = {
					'minecraft:blue_dye',
				},
				[ '11' ] = {
					'minecraft:white_dye',
				},
				[ '12' ] = {
					'minecraft:blue_dye',
				},
				[ '13' ] = {
					'minecraft:light_blue_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:white_dye',
				},
				[ '18' ] = {
					'minecraft:light_blue_dye',
				},
				[ '19' ] = {
					'minecraft:light_blue_dye',
				},
				[ '20' ] = {
					'minecraft:white_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:white_dye',
				},
				[ '24' ] = {
					'minecraft:light_blue_dye',
				},
				[ '25' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:brown_dye',
				},
				[ '28' ] = {
					'minecraft:yellow_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '30' ] = {
					'minecraft:blue_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:brown_dye',
				},
				[ '34' ] = {
					'minecraft:brown_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_vegeta_z',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_vegetto' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:blue_dye',
				},
				[ '2' ] = {
					'minecraft:light_blue_dye',
				},
				[ '5' ] = {
					'minecraft:light_blue_dye',
				},
				[ '6' ] = {
					'minecraft:blue_dye',
				},
				[ '7' ] = {
					'minecraft:blue_dye',
				},
				[ '8' ] = {
					'minecraft:blue_dye',
				},
				[ '9' ] = {
					'minecraft:orange_dye',
				},
				[ '10' ] = {
					'minecraft:orange_dye',
				},
				[ '11' ] = {
					'minecraft:blue_dye',
				},
				[ '12' ] = {
					'minecraft:blue_dye',
				},
				[ '13' ] = {
					'minecraft:orange_dye',
				},
				[ '14' ] = {
					'minecraft:blue_dye',
				},
				[ '15' ] = {
					'minecraft:orange_dye',
				},
				[ '16' ] = {
					'minecraft:orange_dye',
				},
				[ '17' ] = {
					'minecraft:blue_dye',
				},
				[ '18' ] = {
					'minecraft:orange_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:blue_dye',
				},
				[ '21' ] = {
					'minecraft:orange_dye',
				},
				[ '22' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '23' ] = {
					'minecraft:blue_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:blue_dye',
				},
				[ '27' ] = {
					'minecraft:blue_dye',
				},
				[ '28' ] = {
					'minecraft:blue_dye',
				},
				[ '29' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '33' ] = {
					'minecraft:blue_dye',
				},
				[ '34' ] = {
					'minecraft:blue_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_vegetto',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_vergil' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:blue_dye',
				},
				[ '2' ] = {
					'minecraft:blue_dye',
				},
				[ '5' ] = {
					'minecraft:blue_dye',
				},
				[ '6' ] = {
					'minecraft:blue_dye',
				},
				[ '7' ] = {
					'minecraft:blue_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:blue_dye',
				},
				[ '10' ] = {
					'minecraft:blue_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:blue_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:blue_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:blue_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:blue_dye',
				},
				[ '20' ] = {
					'minecraft:blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:blue_dye',
				},
				[ '24' ] = {
					'minecraft:blue_dye',
				},
				[ '25' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:blue_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:blue_dye',
				},
				[ '30' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:blue_dye',
				},
				[ '33' ] = {
					'minecraft:blue_dye',
				},
				[ '34' ] = {
					'minecraft:blue_dye',
				},
				[ '35' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_vergil',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_videl' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:white_dye',
				},
				[ '2' ] = {
					'minecraft:white_dye',
				},
				[ '5' ] = {
					'minecraft:white_dye',
				},
				[ '6' ] = {
					'minecraft:white_dye',
				},
				[ '7' ] = {
					'minecraft:white_dye',
				},
				[ '8' ] = {
					'minecraft:white_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:white_dye',
				},
				[ '12' ] = {
					'minecraft:white_dye',
				},
				[ '13' ] = {
					'minecraft:black_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:white_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:white_dye',
				},
				[ '18' ] = {
					'minecraft:black_dye',
				},
				[ '20' ] = {
					'minecraft:white_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:white_dye',
				},
				[ '23' ] = {
					'minecraft:white_dye',
				},
				[ '25' ] = {
					'minecraft:brown_dye',
				},
				[ '26' ] = {
					'minecraft:brown_dye',
				},
				[ '27' ] = {
					'minecraft:white_dye',
				},
				[ '28' ] = {
					'minecraft:green_dye',
				},
				[ '29' ] = {
					'minecraft:brown_dye',
				},
				[ '30' ] = {
					'minecraft:brown_dye',
				},
				[ '31' ] = {
					'minecraft:brown_dye',
				},
				[ '32' ] = {
					'minecraft:brown_dye',
				},
				[ '35' ] = {
					'minecraft:brown_dye',
				},
				[ '36' ] = {
					'minecraft:brown_dye',
				},
			},
			result = {
				'dragonminez:pattern_videl',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_warrior_clan' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:purple_dye',
				},
				[ '2' ] = {
					'minecraft:purple_dye',
				},
				[ '5' ] = {
					'minecraft:purple_dye',
				},
				[ '6' ] = {
					'minecraft:purple_dye',
				},
				[ '8' ] = {
					'minecraft:purple_dye',
				},
				[ '9' ] = {
					'minecraft:purple_dye',
				},
				[ '10' ] = {
					'minecraft:purple_dye',
				},
				[ '11' ] = {
					'minecraft:purple_dye',
				},
				[ '14' ] = {
					'minecraft:purple_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:purple_dye',
				},
				[ '20' ] = {
					'minecraft:purple_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:purple_dye',
				},
				[ '23' ] = {
					'minecraft:purple_dye',
				},
				[ '26' ] = {
					'minecraft:purple_dye',
				},
				[ '27' ] = {
					'minecraft:purple_dye',
				},
				[ '28' ] = {
					'minecraft:purple_dye',
				},
				[ '29' ] = {
					'minecraft:purple_dye',
				},
				[ '32' ] = {
					'minecraft:light_gray_dye',
				},
				[ '33' ] = {
					'minecraft:light_gray_dye',
				},
				[ '34' ] = {
					'minecraft:light_gray_dye',
				},
				[ '35' ] = {
					'minecraft:light_gray_dye',
				},
			},
			result = {
				'dragonminez:pattern_warrior_clan',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_whis' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:black_dye',
				},
				[ '2' ] = {
					'minecraft:white_dye',
				},
				[ '3' ] = {
					'minecraft:black_dye',
				},
				[ '4' ] = {
					'minecraft:black_dye',
				},
				[ '5' ] = {
					'minecraft:white_dye',
				},
				[ '6' ] = {
					'minecraft:black_dye',
				},
				[ '7' ] = {
					'minecraft:magenta_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:yellow_dye',
				},
				[ '10' ] = {
					'minecraft:yellow_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:magenta_dye',
				},
				[ '13' ] = {
					'minecraft:magenta_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:yellow_dye',
				},
				[ '16' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:magenta_dye',
				},
				[ '19' ] = {
					'minecraft:magenta_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'minecraft:yellow_dye',
				},
				[ '22' ] = {
					'minecraft:yellow_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:magenta_dye',
				},
				[ '25' ] = {
					'minecraft:magenta_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:yellow_dye',
				},
				[ '28' ] = {
					'minecraft:yellow_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '30' ] = {
					'minecraft:magenta_dye',
				},
				[ '32' ] = {
					'minecraft:black_dye',
				},
				[ '33' ] = {
					'minecraft:yellow_dye',
				},
				[ '34' ] = {
					'minecraft:yellow_dye',
				},
				[ '35' ] = {
					'minecraft:black_dye',
				},
			},
			result = {
				'dragonminez:pattern_whis',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_wonder_majin' ] = {
			kind = 'pattern',
			slots = {
				[ '2' ] = {
					'minecraft:yellow_dye',
				},
				[ '3' ] = {
					'minecraft:yellow_dye',
				},
				[ '4' ] = {
					'minecraft:yellow_dye',
				},
				[ '5' ] = {
					'minecraft:yellow_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:yellow_dye',
				},
				[ '10' ] = {
					'minecraft:yellow_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:purple_dye',
				},
				[ '16' ] = {
					'minecraft:purple_dye',
				},
				[ '19' ] = {
					'minecraft:white_dye',
				},
				[ '20' ] = {
					'minecraft:purple_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:purple_dye',
				},
				[ '23' ] = {
					'minecraft:purple_dye',
				},
				[ '24' ] = {
					'minecraft:white_dye',
				},
				[ '26' ] = {
					'minecraft:purple_dye',
				},
				[ '27' ] = {
					'minecraft:purple_dye',
				},
				[ '28' ] = {
					'minecraft:purple_dye',
				},
				[ '29' ] = {
					'minecraft:purple_dye',
				},
				[ '32' ] = {
					'minecraft:purple_dye',
				},
				[ '33' ] = {
					'minecraft:purple_dye',
				},
				[ '34' ] = {
					'minecraft:purple_dye',
				},
				[ '35' ] = {
					'minecraft:purple_dye',
				},
			},
			result = {
				'dragonminez:pattern_wonder_majin',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_xeno_goku' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:red_dye',
				},
				[ '2' ] = {
					'minecraft:red_dye',
				},
				[ '5' ] = {
					'minecraft:red_dye',
				},
				[ '6' ] = {
					'minecraft:red_dye',
				},
				[ '7' ] = {
					'minecraft:red_dye',
				},
				[ '8' ] = {
					'minecraft:red_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:red_dye',
				},
				[ '12' ] = {
					'minecraft:red_dye',
				},
				[ '13' ] = {
					'minecraft:brown_dye',
				},
				[ '14' ] = {
					'minecraft:red_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:red_dye',
				},
				[ '18' ] = {
					'minecraft:brown_dye',
				},
				[ '19' ] = {
					'minecraft:brown_dye',
				},
				[ '20' ] = {
					'minecraft:red_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:red_dye',
				},
				[ '24' ] = {
					'minecraft:brown_dye',
				},
				[ '25' ] = {
					'minecraft:blue_dye',
				},
				[ '26' ] = {
					'minecraft:red_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:red_dye',
				},
				[ '30' ] = {
					'minecraft:blue_dye',
				},
				[ '31' ] = {
					'minecraft:blue_dye',
				},
				[ '32' ] = {
					'minecraft:red_dye',
				},
				[ '35' ] = {
					'minecraft:red_dye',
				},
				[ '36' ] = {
					'minecraft:blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_xeno_goku',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_xeno_goku_patreon' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:light_gray_dye',
				},
				[ '2' ] = {
					'minecraft:light_gray_dye',
				},
				[ '5' ] = {
					'minecraft:light_gray_dye',
				},
				[ '6' ] = {
					'minecraft:light_gray_dye',
				},
				[ '7' ] = {
					'minecraft:light_gray_dye',
				},
				[ '8' ] = {
					'minecraft:light_gray_dye',
				},
				[ '9' ] = {
					'minecraft:black_dye',
				},
				[ '10' ] = {
					'minecraft:black_dye',
				},
				[ '11' ] = {
					'minecraft:light_gray_dye',
				},
				[ '12' ] = {
					'minecraft:light_gray_dye',
				},
				[ '13' ] = {
					'minecraft:gray_dye',
				},
				[ '14' ] = {
					'minecraft:light_gray_dye',
				},
				[ '15' ] = {
					'minecraft:black_dye',
				},
				[ '16' ] = {
					'minecraft:black_dye',
				},
				[ '17' ] = {
					'minecraft:light_gray_dye',
				},
				[ '18' ] = {
					'minecraft:gray_dye',
				},
				[ '19' ] = {
					'minecraft:gray_dye',
				},
				[ '20' ] = {
					'minecraft:light_gray_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:black_dye',
				},
				[ '23' ] = {
					'minecraft:light_gray_dye',
				},
				[ '24' ] = {
					'minecraft:gray_dye',
				},
				[ '25' ] = {
					'minecraft:white_dye',
				},
				[ '26' ] = {
					'minecraft:light_gray_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:light_gray_dye',
				},
				[ '30' ] = {
					'minecraft:white_dye',
				},
				[ '31' ] = {
					'minecraft:white_dye',
				},
				[ '32' ] = {
					'minecraft:light_gray_dye',
				},
				[ '35' ] = {
					'minecraft:light_gray_dye',
				},
				[ '36' ] = {
					'minecraft:white_dye',
				},
			},
			result = {
				'dragonminez:pattern_xeno_goku_patreon',
			},
			set = 'super',
		},
		[ 'dragonminez:pattern_yardrat' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:white_dye',
				},
				[ '2' ] = {
					'minecraft:yellow_dye',
				},
				[ '5' ] = {
					'minecraft:yellow_dye',
				},
				[ '6' ] = {
					'minecraft:white_dye',
				},
				[ '7' ] = {
					'minecraft:white_dye',
				},
				[ '8' ] = {
					'minecraft:blue_dye',
				},
				[ '9' ] = {
					'minecraft:yellow_dye',
				},
				[ '10' ] = {
					'minecraft:yellow_dye',
				},
				[ '11' ] = {
					'minecraft:blue_dye',
				},
				[ '12' ] = {
					'minecraft:white_dye',
				},
				[ '13' ] = {
					'minecraft:blue_dye',
				},
				[ '14' ] = {
					'minecraft:white_dye',
				},
				[ '15' ] = {
					'minecraft:blue_dye',
				},
				[ '16' ] = {
					'minecraft:blue_dye',
				},
				[ '17' ] = {
					'minecraft:white_dye',
				},
				[ '18' ] = {
					'minecraft:blue_dye',
				},
				[ '19' ] = {
					'minecraft:yellow_dye',
				},
				[ '20' ] = {
					'minecraft:blue_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_z',
				},
				[ '22' ] = {
					'minecraft:blue_dye',
				},
				[ '23' ] = {
					'minecraft:blue_dye',
				},
				[ '24' ] = {
					'minecraft:yellow_dye',
				},
				[ '26' ] = {
					'minecraft:blue_dye',
				},
				[ '27' ] = {
					'minecraft:white_dye',
				},
				[ '28' ] = {
					'minecraft:white_dye',
				},
				[ '29' ] = {
					'minecraft:blue_dye',
				},
				[ '31' ] = {
					'minecraft:brown_dye',
				},
				[ '32' ] = {
					'minecraft:yellow_dye',
				},
				[ '33' ] = {
					'minecraft:blue_dye',
				},
				[ '34' ] = {
					'minecraft:blue_dye',
				},
				[ '35' ] = {
					'minecraft:yellow_dye',
				},
				[ '36' ] = {
					'minecraft:brown_dye',
				},
			},
			result = {
				'dragonminez:pattern_yardrat',
			},
			set = 'z',
		},
		[ 'dragonminez:pattern_zamasu' ] = {
			kind = 'pattern',
			slots = {
				[ '1' ] = {
					'minecraft:yellow_dye',
				},
				[ '2' ] = {
					'minecraft:gray_dye',
				},
				[ '5' ] = {
					'minecraft:gray_dye',
				},
				[ '6' ] = {
					'minecraft:yellow_dye',
				},
				[ '7' ] = {
					'minecraft:gray_dye',
				},
				[ '8' ] = {
					'minecraft:black_dye',
				},
				[ '9' ] = {
					'minecraft:yellow_dye',
				},
				[ '10' ] = {
					'minecraft:yellow_dye',
				},
				[ '11' ] = {
					'minecraft:black_dye',
				},
				[ '12' ] = {
					'minecraft:gray_dye',
				},
				[ '13' ] = {
					'minecraft:purple_dye',
				},
				[ '14' ] = {
					'minecraft:black_dye',
				},
				[ '15' ] = {
					'minecraft:gray_dye',
				},
				[ '16' ] = {
					'minecraft:white_dye',
				},
				[ '17' ] = {
					'minecraft:black_dye',
				},
				[ '18' ] = {
					'minecraft:purple_dye',
				},
				[ '19' ] = {
					'minecraft:purple_dye',
				},
				[ '20' ] = {
					'minecraft:black_dye',
				},
				[ '21' ] = {
					'dragonminez:blank_pattern_super',
				},
				[ '22' ] = {
					'minecraft:gray_dye',
				},
				[ '23' ] = {
					'minecraft:black_dye',
				},
				[ '24' ] = {
					'minecraft:purple_dye',
				},
				[ '25' ] = {
					'minecraft:purple_dye',
				},
				[ '26' ] = {
					'minecraft:black_dye',
				},
				[ '27' ] = {
					'minecraft:black_dye',
				},
				[ '28' ] = {
					'minecraft:black_dye',
				},
				[ '29' ] = {
					'minecraft:black_dye',
				},
				[ '30' ] = {
					'minecraft:purple_dye',
				},
				[ '32' ] = {
					'minecraft:light_blue_dye',
				},
				[ '33' ] = {
					'minecraft:light_blue_dye',
				},
				[ '34' ] = {
					'minecraft:light_blue_dye',
				},
				[ '35' ] = {
					'minecraft:light_blue_dye',
				},
			},
			result = {
				'dragonminez:pattern_zamasu',
			},
			set = 'super',
		},
		[ 'dragonminez:purple_scouter' ] = {
			kind = 'crafting',
			slots = {
				[ '3' ] = {
					'dragonminez:radar_piece',
				},
				[ '4' ] = {
					'minecraft:purple_stained_glass_pane',
				},
				[ '5' ] = {
					'minecraft:purple_stained_glass_pane',
				},
				[ '6' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '8' ] = {
					'minecraft:stone_button',
				},
			},
			result = {
				'dragonminez:purple_scouter',
			},
		},
		[ 'dragonminez:pwr_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:potion.curative',
				},
				[ '2' ] = {
					'minecraft:glowstone_dust',
				},
				[ '3' ] = {
					'dragonminez:empty_capsule',
				},
				[ '4' ] = {
					'dragonminez:aura_lily',
				},
				[ '5' ] = {
					'dragonminez:aura_lily',
				},
			},
			result = {
				'dragonminez:orange_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:radar_piece' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:string',
				},
				[ '2' ] = {
					'minecraft:iron_ingot',
				},
				[ '3' ] = {
					'minecraft:string',
				},
				[ '4' ] = {
					'minecraft:iron_ingot',
				},
				[ '5' ] = {
					'minecraft:redstone',
				},
				[ '6' ] = {
					'minecraft:iron_ingot',
				},
				[ '7' ] = {
					'minecraft:string',
				},
				[ '8' ] = {
					'minecraft:iron_ingot',
				},
				[ '9' ] = {
					'minecraft:string',
				},
			},
			result = {
				'dragonminez:radar_piece',
			},
		},
		[ 'dragonminez:red_scouter' ] = {
			kind = 'crafting',
			slots = {
				[ '3' ] = {
					'dragonminez:radar_piece',
				},
				[ '4' ] = {
					'minecraft:red_stained_glass_pane',
				},
				[ '5' ] = {
					'minecraft:red_stained_glass_pane',
				},
				[ '6' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '8' ] = {
					'minecraft:stone_button',
				},
			},
			result = {
				'dragonminez:red_scouter',
			},
		},
		[ 'dragonminez:res_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:potion.curative',
				},
				[ '2' ] = {
					'dragonminez:turtle_scale',
				},
				[ '3' ] = {
					'dragonminez:empty_capsule',
				},
				[ '4' ] = {
					'dragonminez:katchin_sprout',
				},
				[ '5' ] = {
					'dragonminez:katchin_sprout',
				},
			},
			result = {
				'dragonminez:yellow_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:rocky_cobblestone_slab' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '2' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '3' ] = {
					'dragonminez:rocky_cobblestone',
				},
			},
			result = {
				'dragonminez:rocky_cobblestone_slab',
			},
			count = 6,
		},
		[ 'dragonminez:rocky_cobblestone_stairs' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '4' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '5' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '7' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '8' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '9' ] = {
					'dragonminez:rocky_cobblestone',
				},
			},
			result = {
				'dragonminez:rocky_cobblestone_stairs',
			},
			count = 4,
		},
		[ 'dragonminez:rocky_cobblestone_wall' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '2' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '3' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '4' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '5' ] = {
					'dragonminez:rocky_cobblestone',
				},
				[ '6' ] = {
					'dragonminez:rocky_cobblestone',
				},
			},
			result = {
				'dragonminez:rocky_cobblestone_wall',
			},
			count = 6,
		},
		[ 'dragonminez:rocky_stone_slab' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:rocky_stone',
				},
				[ '2' ] = {
					'dragonminez:rocky_stone',
				},
				[ '3' ] = {
					'dragonminez:rocky_stone',
				},
			},
			result = {
				'dragonminez:rocky_stone_slab',
			},
			count = 6,
		},
		[ 'dragonminez:rocky_stone_stairs' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:rocky_stone',
				},
				[ '4' ] = {
					'dragonminez:rocky_stone',
				},
				[ '5' ] = {
					'dragonminez:rocky_stone',
				},
				[ '7' ] = {
					'dragonminez:rocky_stone',
				},
				[ '8' ] = {
					'dragonminez:rocky_stone',
				},
				[ '9' ] = {
					'dragonminez:rocky_stone',
				},
			},
			result = {
				'dragonminez:rocky_stone_stairs',
			},
			count = 4,
		},
		[ 'dragonminez:rocky_stone_wall' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:rocky_stone',
				},
				[ '2' ] = {
					'dragonminez:rocky_stone',
				},
				[ '3' ] = {
					'dragonminez:rocky_stone',
				},
				[ '4' ] = {
					'dragonminez:rocky_stone',
				},
				[ '5' ] = {
					'dragonminez:rocky_stone',
				},
				[ '6' ] = {
					'dragonminez:rocky_stone',
				},
			},
			result = {
				'dragonminez:rocky_stone_wall',
			},
			count = 6,
		},
		[ 'dragonminez:sacred_button' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_sacred_planks',
				},
			},
			result = {
				'dragonminez:namek_sacred_button',
			},
			shapeless = true,
		},
		[ 'dragonminez:sacred_door' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '2' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '4' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '5' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '7' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '8' ] = {
					'dragonminez:namek_sacred_planks',
				},
			},
			result = {
				'dragonminez:namek_sacred_door',
			},
			count = 3,
		},
		[ 'dragonminez:sacred_fence' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '2' ] = {
					'minecraft:stick',
				},
				[ '3' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '4' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '5' ] = {
					'minecraft:stick',
				},
				[ '6' ] = {
					'dragonminez:namek_sacred_planks',
				},
			},
			result = {
				'dragonminez:namek_sacred_fence',
			},
			count = 3,
		},
		[ 'dragonminez:sacred_fence_gate' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:stick',
				},
				[ '2' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '3' ] = {
					'minecraft:stick',
				},
				[ '4' ] = {
					'minecraft:stick',
				},
				[ '5' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '6' ] = {
					'minecraft:stick',
				},
			},
			result = {
				'dragonminez:namek_sacred_fence_gate',
			},
		},
		[ 'dragonminez:sacred_planks' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_sacred_log',
					'dragonminez:namek_stripped_sacred_log',
				},
			},
			result = {
				'dragonminez:namek_sacred_planks',
			},
			count = 4,
			shapeless = true,
		},
		[ 'dragonminez:sacred_slab' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '2' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '3' ] = {
					'dragonminez:namek_sacred_planks',
				},
			},
			result = {
				'dragonminez:namek_sacred_slab',
			},
			count = 6,
		},
		[ 'dragonminez:sacred_stairs' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '4' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '5' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '7' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '8' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '9' ] = {
					'dragonminez:namek_sacred_planks',
				},
			},
			result = {
				'dragonminez:namek_sacred_stairs',
			},
			count = 4,
		},
		[ 'dragonminez:sacred_trapdoor' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '2' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '3' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '4' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '5' ] = {
					'dragonminez:namek_sacred_planks',
				},
				[ '6' ] = {
					'dragonminez:namek_sacred_planks',
				},
			},
			result = {
				'dragonminez:namek_sacred_trapdoor',
			},
			count = 2,
		},
		[ 'dragonminez:sacred_wood' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_sacred_log',
				},
				[ '2' ] = {
					'dragonminez:namek_sacred_log',
				},
				[ '4' ] = {
					'dragonminez:namek_sacred_log',
				},
				[ '5' ] = {
					'dragonminez:namek_sacred_log',
				},
			},
			result = {
				'dragonminez:namek_sacred_wood',
			},
			count = 3,
		},
		[ 'dragonminez:saiyan_ship' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:quartz_block',
				},
				[ '2' ] = {
					'dragonminez:t2_radar_chip',
				},
				[ '3' ] = {
					'minecraft:quartz_block',
				},
				[ '4' ] = {
					'dragonminez:t2_radar_chip',
				},
				[ '5' ] = {
					'dragonminez:t2_radar_cpu',
				},
				[ '6' ] = {
					'dragonminez:t2_radar_chip',
				},
				[ '7' ] = {
					'minecraft:repeater',
				},
				[ '8' ] = {
					'minecraft:minecart',
				},
				[ '9' ] = {
					'minecraft:red_wool',
				},
			},
			result = {
				'dragonminez:saiyan_ship',
			},
		},
		[ 'dragonminez:senzu_bean_bag' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:leather',
				},
				[ '2' ] = {
					'minecraft:wheat_seeds',
					'minecraft:melon_seeds',
					'minecraft:pumpkin_seeds',
					'minecraft:beetroot_seeds',
					'dragonminez:senzu_bean_seeds_blue',
					'dragonminez:senzu_bean_seeds_red',
					'dragonminez:senzu_bean_seeds_yellow',
				},
				[ '3' ] = {
					'minecraft:leather',
				},
				[ '5' ] = {
					'minecraft:leather',
				},
			},
			result = {
				'dragonminez:senzu_bean_bag',
			},
		},
		[ 'dragonminez:senzu_bean_from_colors' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:senzu_bean_red',
				},
				[ '2' ] = {
					'dragonminez:senzu_bean_blue',
				},
				[ '3' ] = {
					'dragonminez:senzu_bean_yellow',
				},
				[ '4' ] = {
					'dragonminez:namek_moss',
				},
			},
			result = {
				'dragonminez:senzu_bean',
			},
			count = 3,
			shapeless = true,
		},
		[ 'dragonminez:senzu_bean_seeds_blue' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:senzu_bean_blue',
				},
			},
			result = {
				'dragonminez:senzu_bean_seeds_blue',
			},
			shapeless = true,
		},
		[ 'dragonminez:senzu_bean_seeds_blue_from_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_moss',
				},
				[ '2' ] = {
					'dragonminez:blue_capsule',
				},
			},
			result = {
				'dragonminez:senzu_bean_seeds_blue',
			},
			shapeless = true,
		},
		[ 'dragonminez:senzu_bean_seeds_red' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:senzu_bean_red',
				},
			},
			result = {
				'dragonminez:senzu_bean_seeds_red',
			},
			shapeless = true,
		},
		[ 'dragonminez:senzu_bean_seeds_red_from_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_moss',
				},
				[ '2' ] = {
					'dragonminez:green_capsule',
				},
			},
			result = {
				'dragonminez:senzu_bean_seeds_red',
			},
			shapeless = true,
		},
		[ 'dragonminez:senzu_bean_seeds_yellow' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:senzu_bean_yellow',
				},
			},
			result = {
				'dragonminez:senzu_bean_seeds_yellow',
			},
			shapeless = true,
		},
		[ 'dragonminez:senzu_bean_seeds_yellow_from_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_moss',
				},
				[ '2' ] = {
					'dragonminez:yellow_capsule',
				},
			},
			result = {
				'dragonminez:senzu_bean_seeds_yellow',
			},
			shapeless = true,
		},
		[ 'dragonminez:skp_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:potion.curative',
				},
				[ '2' ] = {
					'minecraft:gunpowder',
				},
				[ '3' ] = {
					'dragonminez:empty_capsule',
				},
				[ '4' ] = {
					'dragonminez:meteor_flower',
				},
				[ '5' ] = {
					'dragonminez:meteor_flower',
				},
			},
			result = {
				'dragonminez:purple_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:str_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:potion.curative',
				},
				[ '2' ] = {
					'dragonminez:raw_dino_meat',
				},
				[ '3' ] = {
					'dragonminez:empty_capsule',
				},
				[ '4' ] = {
					'dragonminez:oozaru_root',
				},
				[ '5' ] = {
					'dragonminez:oozaru_root',
				},
			},
			result = {
				'dragonminez:red_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:t1_radar_chip' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:redstone',
				},
				[ '2' ] = {
					'minecraft:repeater',
				},
				[ '3' ] = {
					'minecraft:redstone',
				},
				[ '4' ] = {
					'minecraft:green_concrete',
				},
				[ '5' ] = {
					'dragonminez:radar_piece',
				},
				[ '6' ] = {
					'minecraft:green_concrete',
				},
				[ '7' ] = {
					'minecraft:redstone',
				},
				[ '8' ] = {
					'minecraft:repeater',
				},
				[ '9' ] = {
					'minecraft:redstone',
				},
			},
			result = {
				'dragonminez:t1_radar_chip',
			},
		},
		[ 'dragonminez:t1_radar_cpu' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:comparator',
				},
				[ '2' ] = {
					'minecraft:repeater',
				},
				[ '3' ] = {
					'minecraft:comparator',
				},
				[ '4' ] = {
					'dragonminez:t1_radar_chip',
				},
				[ '5' ] = {
					'dragonminez:radar_piece',
				},
				[ '6' ] = {
					'dragonminez:t1_radar_chip',
				},
				[ '7' ] = {
					'minecraft:comparator',
				},
				[ '8' ] = {
					'minecraft:observer',
				},
				[ '9' ] = {
					'minecraft:comparator',
				},
			},
			result = {
				'dragonminez:t1_radar_cpu',
			},
		},
		[ 'dragonminez:t2_radar_chip' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:redstone_torch',
				},
				[ '2' ] = {
					'minecraft:observer',
				},
				[ '3' ] = {
					'minecraft:redstone_torch',
				},
				[ '4' ] = {
					'minecraft:blue_concrete',
				},
				[ '5' ] = {
					'dragonminez:radar_piece',
				},
				[ '6' ] = {
					'minecraft:blue_concrete',
				},
				[ '7' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '8' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '9' ] = {
					'dragonminez:t1_radar_cpu',
				},
			},
			result = {
				'dragonminez:t2_radar_chip',
			},
		},
		[ 'dragonminez:t2_radar_cpu' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:comparator',
				},
				[ '2' ] = {
					'dragonminez:t2_radar_chip',
				},
				[ '3' ] = {
					'minecraft:comparator',
				},
				[ '4' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '5' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '6' ] = {
					'dragonminez:t1_radar_cpu',
				},
				[ '7' ] = {
					'minecraft:observer',
				},
				[ '8' ] = {
					'dragonminez:t2_radar_chip',
				},
				[ '9' ] = {
					'minecraft:observer',
				},
			},
			result = {
				'dragonminez:t2_radar_cpu',
			},
		},
		[ 'dragonminez:turtle_scale' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:scute',
				},
			},
			result = {
				'dragonminez:turtle_scale',
			},
			shapeless = true,
		},
		[ 'dragonminez:vit_capsule' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'minecraft:potion.curative',
				},
				[ '2' ] = {
					'dragonminez:senzu_bean_red',
				},
				[ '3' ] = {
					'dragonminez:empty_capsule',
				},
				[ '4' ] = {
					'dragonminez:hermit_fern',
				},
				[ '5' ] = {
					'dragonminez:hermit_fern',
				},
			},
			result = {
				'dragonminez:green_capsule',
			},
			shapeless = true,
		},
		[ 'dragonminez:yajirobe_katana' ] = {
			kind = 'crafting',
			slots = {
				[ '3' ] = {
					'minecraft:iron_ingot',
				},
				[ '4' ] = {
					'minecraft:gold_ingot',
				},
				[ '5' ] = {
					'minecraft:iron_ingot',
				},
				[ '7' ] = {
					'minecraft:stick',
				},
				[ '8' ] = {
					'minecraft:gold_ingot',
				},
			},
			result = {
				'dragonminez:yajirobe_katana',
			},
		},
		[ 'dragonminez:zenkai_lotus' ] = {
			kind = 'crafting',
			slots = {
				[ '1' ] = {
					'dragonminez:namek_moss',
				},
				[ '2' ] = {
					'dragonminez:namek_moss',
				},
				[ '3' ] = {
					'dragonminez:namek_moss',
				},
				[ '4' ] = {
					'dragonminez:namek_moss',
				},
				[ '5' ] = {
					'minecraft:amethyst_shard',
				},
				[ '6' ] = {
					'minecraft:amethyst_shard',
				},
			},
			result = {
				'dragonminez:zenkai_lotus',
			},
			shapeless = true,
		},
		[ 'kikono/boots' ] = {
			kind = 'kikono',
			slots = {
				[ '4' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '6' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '7' ] = {
					'dragonminez:kikono_string',
				},
				[ '9' ] = {
					'dragonminez:kikono_string',
				},
				pattern = {
					'dragonminez:pattern_goku1',
					'dragonminez:pattern_vegeta_z',
					'dragonminez:pattern_piccolo',
					'dragonminez:pattern_bardock1',
					'dragonminez:pattern_trunks_z',
					'dragonminez:pattern_gohan_super',
					'dragonminez:pattern_broly_z',
					'dragonminez:pattern_goku_super',
				},
				template = {
					'minecraft:iron_boots',
				},
			},
			result = {
				'dragonminez:goku_armor_boots',
				'dragonminez:vegeta_z_armor_boots',
				'dragonminez:piccolo_armor_boots',
				'dragonminez:bardock_dbz_armor_boots',
				'dragonminez:trunks_z_armor_boots',
				'dragonminez:gohan_super_armor_boots',
				'dragonminez:broly_z_armor_boots',
				'dragonminez:goku_super_armor_boots',
			},
			time = 200,
			energy = 1000,
		},
		[ 'kikono/chestplate' ] = {
			kind = 'kikono',
			slots = {
				[ '1' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '3' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '4' ] = {
					'dragonminez:kikono_string',
				},
				[ '5' ] = {
					'dragonminez:kikono_string',
				},
				[ '6' ] = {
					'dragonminez:kikono_string',
				},
				[ '7' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '8' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '9' ] = {
					'dragonminez:kikono_cloth',
				},
				pattern = {
					'dragonminez:pattern_goku1',
					'dragonminez:pattern_vegeta_z',
					'dragonminez:pattern_piccolo',
					'dragonminez:pattern_bardock1',
					'dragonminez:pattern_trunks_z',
					'dragonminez:pattern_gohan_super',
					'dragonminez:pattern_broly_z',
					'dragonminez:pattern_goku_super',
				},
				template = {
					'minecraft:iron_chestplate',
				},
			},
			result = {
				'dragonminez:goku_armor_chestplate',
				'dragonminez:vegeta_z_armor_chestplate',
				'dragonminez:piccolo_armor_chestplate',
				'dragonminez:bardock_dbz_armor_chestplate',
				'dragonminez:trunks_z_armor_chestplate',
				'dragonminez:gohan_super_armor_chestplate',
				'dragonminez:broly_z_armor_chestplate',
				'dragonminez:goku_super_armor_chestplate',
			},
			time = 200,
			energy = 1000,
		},
		[ 'kikono/helmet' ] = {
			kind = 'kikono',
			slots = {
				[ '1' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '2' ] = {
					'dragonminez:kikono_string',
				},
				[ '3' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '4' ] = {
					'dragonminez:kikono_string',
				},
				[ '6' ] = {
					'dragonminez:kikono_string',
				},
				pattern = {
					'dragonminez:pattern_piccolo',
					'dragonminez:pattern_a20',
					'dragonminez:pattern_chaoz',
					'dragonminez:pattern_great_saiyaman',
					'dragonminez:pattern_great_saiyaman_2',
					'dragonminez:pattern_slug',
				},
				template = {
					'minecraft:iron_helmet',
				},
			},
			result = {
				'dragonminez:piccolo_armor_helmet',
				'dragonminez:a20_armor_helmet',
				'dragonminez:chaoz_armor_helmet',
				'dragonminez:great_saiyaman_armor_helmet',
				'dragonminez:great_saiyaman_2_armor_helmet',
				'dragonminez:slug_armor_helmet',
			},
			time = 200,
			energy = 1000,
		},
		[ 'kikono/leggings' ] = {
			kind = 'kikono',
			slots = {
				[ '1' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '2' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '3' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '4' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '6' ] = {
					'dragonminez:kikono_cloth',
				},
				[ '7' ] = {
					'dragonminez:kikono_string',
				},
				[ '9' ] = {
					'dragonminez:kikono_string',
				},
				pattern = {
					'dragonminez:pattern_goku1',
					'dragonminez:pattern_vegeta_z',
					'dragonminez:pattern_piccolo',
					'dragonminez:pattern_bardock1',
					'dragonminez:pattern_trunks_z',
					'dragonminez:pattern_gohan_super',
					'dragonminez:pattern_broly_z',
					'dragonminez:pattern_goku_super',
				},
				template = {
					'minecraft:iron_leggings',
				},
			},
			result = {
				'dragonminez:goku_armor_leggings',
				'dragonminez:vegeta_z_armor_leggings',
				'dragonminez:piccolo_armor_leggings',
				'dragonminez:bardock_dbz_armor_leggings',
				'dragonminez:trunks_z_armor_leggings',
				'dragonminez:gohan_super_armor_leggings',
				'dragonminez:broly_z_armor_leggings',
				'dragonminez:goku_super_armor_leggings',
			},
			time = 200,
			energy = 1000,
		},
		[ 'smelting/dragonminez:cooked_baby_dino_meat' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:raw_baby_dino_meat',
				},
			},
			result = {
				'dragonminez:cooked_baby_dino_meat',
			},
			time = 200,
		},
		[ 'smelting/dragonminez:cooked_dino_meat' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:raw_dino_meat',
				},
			},
			result = {
				'dragonminez:cooked_dino_meat',
			},
			time = 200,
		},
		[ 'smelting/dragonminez:dino_tail_cooked' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:dino_tail_raw',
				},
			},
			result = {
				'dragonminez:dino_tail_cooked',
			},
			time = 200,
		},
		[ 'smelting/dragonminez:frog_legs_cooked' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:frog_legs_raw',
				},
			},
			result = {
				'dragonminez:frog_legs_cooked',
			},
			time = 200,
		},
		[ 'smelting/dragonminez:gete_scrap' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:gete_debris_ore',
				},
			},
			result = {
				'dragonminez:gete_scrap',
			},
			time = 200,
		},
		[ 'smelting/dragonminez:giant_fish_cooked' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:giant_fish_raw',
				},
			},
			result = {
				'dragonminez:giant_fish_cooked',
			},
			time = 200,
		},
		[ 'smelting/dragonminez:giant_turtle_cooked' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:giant_turtle_raw',
				},
			},
			result = {
				'dragonminez:giant_turtle_cooked',
			},
			time = 200,
		},
		[ 'smelting/dragonminez:kikono_shard' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:namek_kikono_ore',
				},
			},
			result = {
				'dragonminez:kikono_shard',
			},
			time = 200,
			alternate = true,
		},
		[ 'smelting/minecraft:coal' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:namek_coal_ore',
					'dragonminez:namek_deepslate_coal_ore',
				},
			},
			result = {
				'minecraft:coal',
			},
			time = 200,
			alternate = true,
		},
		[ 'smelting/minecraft:copper_ingot' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:namek_copper_ore',
					'dragonminez:namek_deepslate_copper_ore',
				},
			},
			result = {
				'minecraft:copper_ingot',
			},
			time = 200,
		},
		[ 'smelting/minecraft:diamond' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_diamond_ore',
					'dragonminez:namek_diamond_ore',
				},
			},
			result = {
				'minecraft:diamond',
			},
			time = 200,
			alternate = true,
		},
		[ 'smelting/minecraft:emerald' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_emerald_ore',
					'dragonminez:namek_emerald_ore',
				},
			},
			result = {
				'minecraft:emerald',
			},
			time = 200,
			alternate = true,
		},
		[ 'smelting/minecraft:gold_ingot' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_gold_ore',
					'dragonminez:namek_gold_ore',
				},
			},
			result = {
				'minecraft:gold_ingot',
			},
			time = 200,
		},
		[ 'smelting/minecraft:iron_ingot' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_iron_ore',
					'dragonminez:namek_iron_ore',
				},
			},
			result = {
				'minecraft:iron_ingot',
			},
			time = 200,
		},
		[ 'smelting/minecraft:lapis_lazuli' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_lapis_ore',
					'dragonminez:namek_lapis_ore',
				},
			},
			result = {
				'minecraft:lapis_lazuli',
			},
			time = 200,
			alternate = true,
		},
		[ 'smelting/minecraft:redstone' ] = {
			kind = 'smelting',
			slots = {
				input = {
					'dragonminez:namek_deepslate_redstone_ore',
					'dragonminez:namek_redstone_ore',
				},
			},
			result = {
				'minecraft:redstone',
			},
			time = 200,
			alternate = true,
		},
		[ 'smoking/dragonminez:cooked_baby_dino_meat' ] = {
			kind = 'smoking',
			slots = {
				input = {
					'dragonminez:raw_baby_dino_meat',
				},
			},
			result = {
				'dragonminez:cooked_baby_dino_meat',
			},
			time = 100,
		},
		[ 'smoking/dragonminez:cooked_dino_meat' ] = {
			kind = 'smoking',
			slots = {
				input = {
					'dragonminez:raw_dino_meat',
				},
			},
			result = {
				'dragonminez:cooked_dino_meat',
			},
			time = 100,
		},
		[ 'smoking/dragonminez:dino_tail_cooked' ] = {
			kind = 'smoking',
			slots = {
				input = {
					'dragonminez:dino_tail_raw',
				},
			},
			result = {
				'dragonminez:dino_tail_cooked',
			},
			time = 100,
		},
		[ 'smoking/dragonminez:frog_legs_cooked' ] = {
			kind = 'smoking',
			slots = {
				input = {
					'dragonminez:frog_legs_raw',
				},
			},
			result = {
				'dragonminez:frog_legs_cooked',
			},
			time = 100,
		},
		[ 'smoking/dragonminez:giant_fish_cooked' ] = {
			kind = 'smoking',
			slots = {
				input = {
					'dragonminez:giant_fish_raw',
				},
			},
			result = {
				'dragonminez:giant_fish_cooked',
			},
			time = 100,
		},
		[ 'smoking/dragonminez:giant_turtle_cooked' ] = {
			kind = 'smoking',
			slots = {
				input = {
					'dragonminez:giant_turtle_raw',
				},
			},
			result = {
				'dragonminez:giant_turtle_cooked',
			},
			time = 100,
		},
	},
	byResult = {
		[ 'dragonminez:adobe' ] = {
			'dragonminez:adobe',
		},
		[ 'dragonminez:adobe_bricks' ] = {
			'dragonminez:adobe_bricks',
		},
		[ 'dragonminez:adobe_slab' ] = {
			'dragonminez:adobe_slab',
		},
		[ 'dragonminez:adobe_stairs' ] = {
			'dragonminez:adobe_stairs',
		},
		[ 'dragonminez:adobe_wall' ] = {
			'dragonminez:adobe_wall',
		},
		[ 'dragonminez:armor_crafting_kit' ] = {
			'dragonminez:armor_crafting_kit',
		},
		[ 'dragonminez:aura_lily' ] = {
			'dragonminez:aura_lily',
		},
		[ 'dragonminez:blank_pattern_super' ] = {
			'dragonminez:blank_pattern_super',
		},
		[ 'dragonminez:blank_pattern_z' ] = {
			'dragonminez:blank_pattern_z',
		},
		[ 'dragonminez:blue_capsule' ] = {
			'dragonminez:ene_capsule',
		},
		[ 'dragonminez:blue_scouter' ] = {
			'dragonminez:blue_scouter',
		},
		[ 'dragonminez:cooked_baby_dino_meat' ] = {
			'campfire/dragonminez:cooked_baby_dino_meat',
			'smelting/dragonminez:cooked_baby_dino_meat',
			'smoking/dragonminez:cooked_baby_dino_meat',
		},
		[ 'dragonminez:cooked_dino_meat' ] = {
			'campfire/dragonminez:cooked_dino_meat',
			'smelting/dragonminez:cooked_dino_meat',
			'smoking/dragonminez:cooked_dino_meat',
		},
		[ 'dragonminez:dball_radar' ] = {
			'dragonminez:dball_radar',
		},
		[ 'dragonminez:demon_brick_slab' ] = {
			'dragonminez:demon_brick_slab',
		},
		[ 'dragonminez:demon_brick_stairs' ] = {
			'dragonminez:demon_brick_stairs',
		},
		[ 'dragonminez:demon_brick_wall' ] = {
			'dragonminez:demon_brick_wall',
		},
		[ 'dragonminez:demon_bricks' ] = {
			'dragonminez:demon_bricks',
		},
		[ 'dragonminez:dino_tail_cooked' ] = {
			'campfire/dragonminez:dino_tail_cooked',
			'smelting/dragonminez:dino_tail_cooked',
			'smoking/dragonminez:dino_tail_cooked',
		},
		[ 'dragonminez:empty_capsule' ] = {
			'dragonminez:empty_capsule',
		},
		[ 'dragonminez:energy_cable' ] = {
			'dragonminez:energy_cable',
		},
		[ 'dragonminez:frog_legs_cooked' ] = {
			'campfire/dragonminez:frog_legs_cooked',
			'smelting/dragonminez:frog_legs_cooked',
			'smoking/dragonminez:frog_legs_cooked',
		},
		[ 'dragonminez:fuel_generator' ] = {
			'dragonminez:fuel_generator',
		},
		[ 'dragonminez:gete_axe' ] = {
			'dragonminez:gete_axe',
		},
		[ 'dragonminez:gete_block' ] = {
			'dragonminez:gete_block',
		},
		[ 'dragonminez:gete_blue_capsule' ] = {
			'dragonminez:gete_blue_capsule',
		},
		[ 'dragonminez:gete_green_capsule' ] = {
			'dragonminez:gete_green_capsule',
		},
		[ 'dragonminez:gete_hoe' ] = {
			'dragonminez:gete_hoe',
		},
		[ 'dragonminez:gete_ingot' ] = {
			'dragonminez:gete_ingot',
		},
		[ 'dragonminez:gete_orange_capsule' ] = {
			'dragonminez:gete_orange_capsule',
		},
		[ 'dragonminez:gete_pickaxe' ] = {
			'dragonminez:gete_pickaxe',
		},
		[ 'dragonminez:gete_purple_capsule' ] = {
			'dragonminez:gete_purple_capsule',
		},
		[ 'dragonminez:gete_red_capsule' ] = {
			'dragonminez:gete_red_capsule',
		},
		[ 'dragonminez:gete_scrap' ] = {
			'blasting/dragonminez:gete_scrap',
			'smelting/dragonminez:gete_scrap',
		},
		[ 'dragonminez:gete_shovel' ] = {
			'dragonminez:gete_shovel',
		},
		[ 'dragonminez:gete_yellow_capsule' ] = {
			'dragonminez:gete_yellow_capsule',
		},
		[ 'dragonminez:giant_fish_cooked' ] = {
			'campfire/dragonminez:giant_fish_cooked',
			'smelting/dragonminez:giant_fish_cooked',
			'smoking/dragonminez:giant_fish_cooked',
		},
		[ 'dragonminez:giant_turtle_cooked' ] = {
			'campfire/dragonminez:giant_turtle_cooked',
			'smelting/dragonminez:giant_turtle_cooked',
			'smoking/dragonminez:giant_turtle_cooked',
		},
		[ 'dragonminez:gravity_device' ] = {
			'dragonminez:gravity_device',
		},
		[ 'dragonminez:green_capsule' ] = {
			'dragonminez:vit_capsule',
		},
		[ 'dragonminez:green_scouter' ] = {
			'dragonminez:green_scouter',
		},
		[ 'dragonminez:heart_medicine' ] = {
			'brewing/heart_medicine',
		},
		[ 'dragonminez:hermit_fern' ] = {
			'dragonminez:hermit_fern',
		},
		[ 'dragonminez:kaioshin_fruit' ] = {
			'dragonminez:kaioshin_fruit',
		},
		[ 'dragonminez:katchin_sprout' ] = {
			'dragonminez:katchin_sprout',
		},
		[ 'dragonminez:ki_battery' ] = {
			'dragonminez:ki_battery',
		},
		[ 'dragonminez:kikono_block' ] = {
			'dragonminez:kikono_block',
		},
		[ 'dragonminez:kikono_cloth' ] = {
			'dragonminez:kikono_cloth',
		},
		[ 'dragonminez:kikono_shard' ] = {
			'dragonminez:kikono_shard',
			'blasting/dragonminez:kikono_shard',
			'smelting/dragonminez:kikono_shard',
		},
		[ 'dragonminez:kikono_station' ] = {
			'dragonminez:kikono_station',
		},
		[ 'dragonminez:kikono_stick' ] = {
			'dragonminez:kikono_stick',
		},
		[ 'dragonminez:kikono_string' ] = {
			'dragonminez:kikono_string',
		},
		[ 'dragonminez:makai_stone_slab' ] = {
			'dragonminez:makai_stone_slab',
		},
		[ 'dragonminez:makai_stone_stairs' ] = {
			'dragonminez:makai_stone_stairs',
		},
		[ 'dragonminez:makai_stone_wall' ] = {
			'dragonminez:makai_stone_wall',
		},
		[ 'dragonminez:mastery_capsule' ] = {
			'dragonminez:mastery_capsule',
		},
		[ 'dragonminez:meteor_flower' ] = {
			'dragonminez:meteor_flower',
		},
		[ 'dragonminez:namek_ajissa_button' ] = {
			'dragonminez:ajissa_button',
		},
		[ 'dragonminez:namek_ajissa_door' ] = {
			'dragonminez:ajissa_door',
		},
		[ 'dragonminez:namek_ajissa_fence' ] = {
			'dragonminez:ajissa_fence',
		},
		[ 'dragonminez:namek_ajissa_fence_gate' ] = {
			'dragonminez:ajissa_fence_gate',
		},
		[ 'dragonminez:namek_ajissa_planks' ] = {
			'dragonminez:ajissa_planks',
		},
		[ 'dragonminez:namek_ajissa_pressure_plate' ] = {
			'dragonminez:namek_ajissa_pressure_plate',
		},
		[ 'dragonminez:namek_ajissa_slab' ] = {
			'dragonminez:ajissa_slab',
		},
		[ 'dragonminez:namek_ajissa_stairs' ] = {
			'dragonminez:ajissa_stairs',
		},
		[ 'dragonminez:namek_ajissa_trapdoor' ] = {
			'dragonminez:ajissa_trapdoor',
		},
		[ 'dragonminez:namek_ajissa_wood' ] = {
			'dragonminez:ajissa_wood',
		},
		[ 'dragonminez:namek_cobblestone_slab' ] = {
			'dragonminez:namek_cobblestone_slab',
		},
		[ 'dragonminez:namek_cobblestone_stairs' ] = {
			'dragonminez:namek_cobblestone_stairs',
		},
		[ 'dragonminez:namek_cobblestone_wall' ] = {
			'dragonminez:namek_cobblestone_wall',
		},
		[ 'dragonminez:namek_deepslate_slab' ] = {
			'dragonminez:namek_deepslate_slab',
		},
		[ 'dragonminez:namek_deepslate_stairs' ] = {
			'dragonminez:namek_deepslate_stairs',
		},
		[ 'dragonminez:namek_deepslate_wall' ] = {
			'dragonminez:namek_deepslate_wall',
		},
		[ 'dragonminez:namek_moss' ] = {
			'dragonminez:namek_moss',
		},
		[ 'dragonminez:namek_sacred_button' ] = {
			'dragonminez:sacred_button',
		},
		[ 'dragonminez:namek_sacred_door' ] = {
			'dragonminez:sacred_door',
		},
		[ 'dragonminez:namek_sacred_fence' ] = {
			'dragonminez:sacred_fence',
		},
		[ 'dragonminez:namek_sacred_fence_gate' ] = {
			'dragonminez:sacred_fence_gate',
		},
		[ 'dragonminez:namek_sacred_planks' ] = {
			'dragonminez:sacred_planks',
		},
		[ 'dragonminez:namek_sacred_pressure_plate' ] = {
			'dragonminez:namek_sacred_pressure_plate',
		},
		[ 'dragonminez:namek_sacred_slab' ] = {
			'dragonminez:sacred_slab',
		},
		[ 'dragonminez:namek_sacred_stairs' ] = {
			'dragonminez:sacred_stairs',
		},
		[ 'dragonminez:namek_sacred_trapdoor' ] = {
			'dragonminez:sacred_trapdoor',
		},
		[ 'dragonminez:namek_sacred_wood' ] = {
			'dragonminez:sacred_wood',
		},
		[ 'dragonminez:namek_stone_slab' ] = {
			'dragonminez:namek_stone_slab',
		},
		[ 'dragonminez:namek_stone_stairs' ] = {
			'dragonminez:namek_stone_stairs',
		},
		[ 'dragonminez:namek_stone_wall' ] = {
			'dragonminez:namek_stone_wall',
		},
		[ 'dragonminez:namekdball_radar' ] = {
			'dragonminez:namekdball_radar',
		},
		[ 'dragonminez:oozaru_root' ] = {
			'dragonminez:oozaru_root',
		},
		[ 'dragonminez:orange_capsule' ] = {
			'dragonminez:pwr_capsule',
		},
		[ 'dragonminez:pattern_a13' ] = {
			'dragonminez:pattern_a13',
		},
		[ 'dragonminez:pattern_a14' ] = {
			'dragonminez:pattern_a14',
		},
		[ 'dragonminez:pattern_a16' ] = {
			'dragonminez:pattern_a16',
		},
		[ 'dragonminez:pattern_a17' ] = {
			'dragonminez:pattern_a17',
		},
		[ 'dragonminez:pattern_a17_super' ] = {
			'dragonminez:pattern_a17_super',
		},
		[ 'dragonminez:pattern_a18' ] = {
			'dragonminez:pattern_a18',
		},
		[ 'dragonminez:pattern_a18_cell' ] = {
			'dragonminez:pattern_a18_cell',
		},
		[ 'dragonminez:pattern_a18_kame' ] = {
			'dragonminez:pattern_a18_kame',
		},
		[ 'dragonminez:pattern_a18_tournament' ] = {
			'dragonminez:pattern_a18_tournament',
		},
		[ 'dragonminez:pattern_a20' ] = {
			'dragonminez:pattern_a20',
		},
		[ 'dragonminez:pattern_age1000' ] = {
			'dragonminez:pattern_age1000',
		},
		[ 'dragonminez:pattern_bardock1' ] = {
			'dragonminez:pattern_bardock1',
		},
		[ 'dragonminez:pattern_bardock2' ] = {
			'dragonminez:pattern_bardock2',
		},
		[ 'dragonminez:pattern_beerus' ] = {
			'dragonminez:pattern_beerus',
		},
		[ 'dragonminez:pattern_black' ] = {
			'dragonminez:pattern_black',
		},
		[ 'dragonminez:pattern_broly_super' ] = {
			'dragonminez:pattern_broly_super',
		},
		[ 'dragonminez:pattern_broly_z' ] = {
			'dragonminez:pattern_broly_z',
		},
		[ 'dragonminez:pattern_capsule_corp' ] = {
			'dragonminez:pattern_capsule_corp',
		},
		[ 'dragonminez:pattern_caulifla' ] = {
			'dragonminez:pattern_caulifla',
		},
		[ 'dragonminez:pattern_chaoz' ] = {
			'dragonminez:pattern_chaoz',
		},
		[ 'dragonminez:pattern_cooler_soldier' ] = {
			'dragonminez:pattern_cooler_soldier',
		},
		[ 'dragonminez:pattern_dragon_clan' ] = {
			'dragonminez:pattern_dragon_clan',
		},
		[ 'dragonminez:pattern_evil_buu' ] = {
			'dragonminez:pattern_evil_buu',
		},
		[ 'dragonminez:pattern_fighter' ] = {
			'dragonminez:pattern_fighter',
		},
		[ 'dragonminez:pattern_fusionzamasu' ] = {
			'dragonminez:pattern_fusionzamasu',
		},
		[ 'dragonminez:pattern_future_gohan' ] = {
			'dragonminez:pattern_future_gohan',
		},
		[ 'dragonminez:pattern_gamma1' ] = {
			'dragonminez:pattern_gamma1',
		},
		[ 'dragonminez:pattern_gamma2' ] = {
			'dragonminez:pattern_gamma2',
		},
		[ 'dragonminez:pattern_gas' ] = {
			'dragonminez:pattern_gas',
		},
		[ 'dragonminez:pattern_gero' ] = {
			'dragonminez:pattern_gero',
		},
		[ 'dragonminez:pattern_gete' ] = {
			'dragonminez:pattern_gete',
		},
		[ 'dragonminez:pattern_gine' ] = {
			'dragonminez:pattern_gine',
		},
		[ 'dragonminez:pattern_gogeta' ] = {
			'dragonminez:pattern_gogeta',
		},
		[ 'dragonminez:pattern_gohan1' ] = {
			'dragonminez:pattern_gohan1',
		},
		[ 'dragonminez:pattern_gohan_super' ] = {
			'dragonminez:pattern_gohan_super',
		},
		[ 'dragonminez:pattern_goku1' ] = {
			'dragonminez:pattern_goku1',
		},
		[ 'dragonminez:pattern_goku_gt' ] = {
			'dragonminez:pattern_goku_gt',
		},
		[ 'dragonminez:pattern_goku_kid' ] = {
			'dragonminez:pattern_goku_kid',
		},
		[ 'dragonminez:pattern_goku_super' ] = {
			'dragonminez:pattern_goku_super',
		},
		[ 'dragonminez:pattern_goku_whis' ] = {
			'dragonminez:pattern_goku_whis',
		},
		[ 'dragonminez:pattern_goten' ] = {
			'dragonminez:pattern_goten',
		},
		[ 'dragonminez:pattern_goten_super' ] = {
			'dragonminez:pattern_goten_super',
		},
		[ 'dragonminez:pattern_granola' ] = {
			'dragonminez:pattern_granola',
		},
		[ 'dragonminez:pattern_great_saiyaman' ] = {
			'dragonminez:pattern_great_saiyaman',
		},
		[ 'dragonminez:pattern_great_saiyaman_2' ] = {
			'dragonminez:pattern_great_saiyaman_2',
		},
		[ 'dragonminez:pattern_hit' ] = {
			'dragonminez:pattern_hit',
		},
		[ 'dragonminez:pattern_kale' ] = {
			'dragonminez:pattern_kale',
		},
		[ 'dragonminez:pattern_kefla' ] = {
			'dragonminez:pattern_kefla',
		},
		[ 'dragonminez:pattern_kibito' ] = {
			'dragonminez:pattern_kibito',
		},
		[ 'dragonminez:pattern_king_vegeta' ] = {
			'dragonminez:pattern_king_vegeta',
		},
		[ 'dragonminez:pattern_majin21' ] = {
			'dragonminez:pattern_majin21',
		},
		[ 'dragonminez:pattern_majin_buu' ] = {
			'dragonminez:pattern_majin_buu',
		},
		[ 'dragonminez:pattern_mighty_majin' ] = {
			'dragonminez:pattern_mighty_majin',
		},
		[ 'dragonminez:pattern_mystic' ] = {
			'dragonminez:pattern_mystic',
		},
		[ 'dragonminez:pattern_orange_high' ] = {
			'dragonminez:pattern_orange_high',
		},
		[ 'dragonminez:pattern_piccolo' ] = {
			'dragonminez:pattern_piccolo',
		},
		[ 'dragonminez:pattern_pride_troops' ] = {
			'dragonminez:pattern_pride_troops',
		},
		[ 'dragonminez:pattern_raditz' ] = {
			'dragonminez:pattern_raditz',
		},
		[ 'dragonminez:pattern_shin' ] = {
			'dragonminez:pattern_shin',
		},
		[ 'dragonminez:pattern_slug' ] = {
			'dragonminez:pattern_slug',
		},
		[ 'dragonminez:pattern_station' ] = {
			'dragonminez:pattern_station',
		},
		[ 'dragonminez:pattern_super_buu' ] = {
			'dragonminez:pattern_super_buu',
		},
		[ 'dragonminez:pattern_tien' ] = {
			'dragonminez:pattern_tien',
		},
		[ 'dragonminez:pattern_trunks_kid' ] = {
			'dragonminez:pattern_trunks_kid',
		},
		[ 'dragonminez:pattern_trunks_super' ] = {
			'dragonminez:pattern_trunks_super',
		},
		[ 'dragonminez:pattern_trunks_z' ] = {
			'dragonminez:pattern_trunks_z',
		},
		[ 'dragonminez:pattern_turles' ] = {
			'dragonminez:pattern_turles',
		},
		[ 'dragonminez:pattern_vegeta1' ] = {
			'dragonminez:pattern_vegeta1',
		},
		[ 'dragonminez:pattern_vegeta2' ] = {
			'dragonminez:pattern_vegeta2',
		},
		[ 'dragonminez:pattern_vegeta_buu' ] = {
			'dragonminez:pattern_vegeta_buu',
		},
		[ 'dragonminez:pattern_vegeta_gt' ] = {
			'dragonminez:pattern_vegeta_gt',
		},
		[ 'dragonminez:pattern_vegeta_super' ] = {
			'dragonminez:pattern_vegeta_super',
		},
		[ 'dragonminez:pattern_vegeta_whis' ] = {
			'dragonminez:pattern_vegeta_whis',
		},
		[ 'dragonminez:pattern_vegeta_z' ] = {
			'dragonminez:pattern_vegeta_z',
		},
		[ 'dragonminez:pattern_vegetto' ] = {
			'dragonminez:pattern_vegetto',
		},
		[ 'dragonminez:pattern_vergil' ] = {
			'dragonminez:pattern_vergil',
		},
		[ 'dragonminez:pattern_videl' ] = {
			'dragonminez:pattern_videl',
		},
		[ 'dragonminez:pattern_warrior_clan' ] = {
			'dragonminez:pattern_warrior_clan',
		},
		[ 'dragonminez:pattern_whis' ] = {
			'dragonminez:pattern_whis',
		},
		[ 'dragonminez:pattern_wonder_majin' ] = {
			'dragonminez:pattern_wonder_majin',
		},
		[ 'dragonminez:pattern_xeno_goku' ] = {
			'dragonminez:pattern_xeno_goku',
		},
		[ 'dragonminez:pattern_xeno_goku_patreon' ] = {
			'dragonminez:pattern_xeno_goku_patreon',
		},
		[ 'dragonminez:pattern_yardrat' ] = {
			'dragonminez:pattern_yardrat',
		},
		[ 'dragonminez:pattern_zamasu' ] = {
			'dragonminez:pattern_zamasu',
		},
		[ 'dragonminez:purple_capsule' ] = {
			'dragonminez:skp_capsule',
		},
		[ 'dragonminez:purple_scouter' ] = {
			'dragonminez:purple_scouter',
		},
		[ 'dragonminez:radar_piece' ] = {
			'dragonminez:radar_piece',
		},
		[ 'dragonminez:red_capsule' ] = {
			'dragonminez:str_capsule',
		},
		[ 'dragonminez:red_scouter' ] = {
			'dragonminez:red_scouter',
		},
		[ 'dragonminez:rocky_cobblestone_slab' ] = {
			'dragonminez:rocky_cobblestone_slab',
		},
		[ 'dragonminez:rocky_cobblestone_stairs' ] = {
			'dragonminez:rocky_cobblestone_stairs',
		},
		[ 'dragonminez:rocky_cobblestone_wall' ] = {
			'dragonminez:rocky_cobblestone_wall',
		},
		[ 'dragonminez:rocky_stone_slab' ] = {
			'dragonminez:rocky_stone_slab',
		},
		[ 'dragonminez:rocky_stone_stairs' ] = {
			'dragonminez:rocky_stone_stairs',
		},
		[ 'dragonminez:rocky_stone_wall' ] = {
			'dragonminez:rocky_stone_wall',
		},
		[ 'dragonminez:saiyan_ship' ] = {
			'dragonminez:saiyan_ship',
		},
		[ 'dragonminez:senzu_bean' ] = {
			'dragonminez:senzu_bean_from_colors',
		},
		[ 'dragonminez:senzu_bean_bag' ] = {
			'dragonminez:senzu_bean_bag',
		},
		[ 'dragonminez:senzu_bean_seeds_blue' ] = {
			'dragonminez:senzu_bean_seeds_blue',
			'dragonminez:senzu_bean_seeds_blue_from_capsule',
		},
		[ 'dragonminez:senzu_bean_seeds_red' ] = {
			'dragonminez:senzu_bean_seeds_red',
			'dragonminez:senzu_bean_seeds_red_from_capsule',
		},
		[ 'dragonminez:senzu_bean_seeds_yellow' ] = {
			'dragonminez:senzu_bean_seeds_yellow',
			'dragonminez:senzu_bean_seeds_yellow_from_capsule',
		},
		[ 'dragonminez:t1_radar_chip' ] = {
			'dragonminez:t1_radar_chip',
		},
		[ 'dragonminez:t1_radar_cpu' ] = {
			'dragonminez:t1_radar_cpu',
		},
		[ 'dragonminez:t2_radar_chip' ] = {
			'dragonminez:t2_radar_chip',
		},
		[ 'dragonminez:t2_radar_cpu' ] = {
			'dragonminez:t2_radar_cpu',
		},
		[ 'dragonminez:turtle_scale' ] = {
			'dragonminez:turtle_scale',
		},
		[ 'dragonminez:yajirobe_katana' ] = {
			'dragonminez:yajirobe_katana',
		},
		[ 'dragonminez:yellow_capsule' ] = {
			'dragonminez:res_capsule',
		},
		[ 'dragonminez:zenkai_lotus' ] = {
			'dragonminez:zenkai_lotus',
		},
		[ 'minecraft:coal' ] = {
			'blasting/minecraft:coal',
			'smelting/minecraft:coal',
		},
		[ 'minecraft:copper_ingot' ] = {
			'blasting/minecraft:copper_ingot',
			'smelting/minecraft:copper_ingot',
		},
		[ 'minecraft:diamond' ] = {
			'blasting/minecraft:diamond',
			'smelting/minecraft:diamond',
		},
		[ 'minecraft:emerald' ] = {
			'blasting/minecraft:emerald',
			'smelting/minecraft:emerald',
		},
		[ 'minecraft:gold_ingot' ] = {
			'blasting/minecraft:gold_ingot',
			'smelting/minecraft:gold_ingot',
		},
		[ 'minecraft:iron_ingot' ] = {
			'blasting/minecraft:iron_ingot',
			'smelting/minecraft:iron_ingot',
		},
		[ 'minecraft:lapis_lazuli' ] = {
			'blasting/minecraft:lapis_lazuli',
			'smelting/minecraft:lapis_lazuli',
		},
		[ 'minecraft:potion.curative' ] = {
			'brewing/curative_flask',
		},
		[ 'minecraft:redstone' ] = {
			'blasting/minecraft:redstone',
			'smelting/minecraft:redstone',
		},
	},
	armor = {
		[ 'dragonminez:a13_armor_boots' ] = {
			pattern = 'dragonminez:pattern_a13',
			piece = 'boots',
		},
		[ 'dragonminez:a13_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_a13',
			piece = 'chestplate',
		},
		[ 'dragonminez:a13_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_a13',
			piece = 'leggings',
		},
		[ 'dragonminez:a14_armor_boots' ] = {
			pattern = 'dragonminez:pattern_a14',
			piece = 'boots',
		},
		[ 'dragonminez:a14_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_a14',
			piece = 'chestplate',
		},
		[ 'dragonminez:a14_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_a14',
			piece = 'leggings',
		},
		[ 'dragonminez:a16_armor_boots' ] = {
			pattern = 'dragonminez:pattern_a16',
			piece = 'boots',
		},
		[ 'dragonminez:a16_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_a16',
			piece = 'chestplate',
		},
		[ 'dragonminez:a16_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_a16',
			piece = 'leggings',
		},
		[ 'dragonminez:a17_armor_boots' ] = {
			pattern = 'dragonminez:pattern_a17',
			piece = 'boots',
		},
		[ 'dragonminez:a17_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_a17',
			piece = 'chestplate',
		},
		[ 'dragonminez:a17_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_a17',
			piece = 'leggings',
		},
		[ 'dragonminez:a17_super_armor_boots' ] = {
			pattern = 'dragonminez:pattern_a17_super',
			piece = 'boots',
		},
		[ 'dragonminez:a17_super_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_a17_super',
			piece = 'chestplate',
		},
		[ 'dragonminez:a17_super_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_a17_super',
			piece = 'leggings',
		},
		[ 'dragonminez:a18_armor_boots' ] = {
			pattern = 'dragonminez:pattern_a18',
			piece = 'boots',
		},
		[ 'dragonminez:a18_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_a18',
			piece = 'chestplate',
		},
		[ 'dragonminez:a18_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_a18',
			piece = 'leggings',
		},
		[ 'dragonminez:a18_cell_armor_boots' ] = {
			pattern = 'dragonminez:pattern_a18_cell',
			piece = 'boots',
		},
		[ 'dragonminez:a18_cell_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_a18_cell',
			piece = 'chestplate',
		},
		[ 'dragonminez:a18_cell_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_a18_cell',
			piece = 'leggings',
		},
		[ 'dragonminez:a18_kame_armor_boots' ] = {
			pattern = 'dragonminez:pattern_a18_kame',
			piece = 'boots',
		},
		[ 'dragonminez:a18_kame_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_a18_kame',
			piece = 'chestplate',
		},
		[ 'dragonminez:a18_kame_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_a18_kame',
			piece = 'leggings',
		},
		[ 'dragonminez:a18_tournament_armor_boots' ] = {
			pattern = 'dragonminez:pattern_a18_tournament',
			piece = 'boots',
		},
		[ 'dragonminez:a18_tournament_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_a18_tournament',
			piece = 'chestplate',
		},
		[ 'dragonminez:a18_tournament_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_a18_tournament',
			piece = 'leggings',
		},
		[ 'dragonminez:a20_armor_boots' ] = {
			pattern = 'dragonminez:pattern_a20',
			piece = 'boots',
		},
		[ 'dragonminez:a20_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_a20',
			piece = 'chestplate',
		},
		[ 'dragonminez:a20_armor_helmet' ] = {
			pattern = 'dragonminez:pattern_a20',
			piece = 'helmet',
		},
		[ 'dragonminez:a20_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_a20',
			piece = 'leggings',
		},
		[ 'dragonminez:age1000_armor_boots' ] = {
			pattern = 'dragonminez:pattern_age1000',
			piece = 'boots',
		},
		[ 'dragonminez:age1000_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_age1000',
			piece = 'chestplate',
		},
		[ 'dragonminez:age1000_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_age1000',
			piece = 'leggings',
		},
		[ 'dragonminez:bardock_dbz_armor_boots' ] = {
			pattern = 'dragonminez:pattern_bardock1',
			piece = 'boots',
		},
		[ 'dragonminez:bardock_dbz_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_bardock1',
			piece = 'chestplate',
		},
		[ 'dragonminez:bardock_dbz_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_bardock1',
			piece = 'leggings',
		},
		[ 'dragonminez:bardock_super_armor_boots' ] = {
			pattern = 'dragonminez:pattern_bardock2',
			piece = 'boots',
		},
		[ 'dragonminez:bardock_super_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_bardock2',
			piece = 'chestplate',
		},
		[ 'dragonminez:bardock_super_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_bardock2',
			piece = 'leggings',
		},
		[ 'dragonminez:beerus_armor_boots' ] = {
			pattern = 'dragonminez:pattern_beerus',
			piece = 'boots',
		},
		[ 'dragonminez:beerus_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_beerus',
			piece = 'chestplate',
		},
		[ 'dragonminez:beerus_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_beerus',
			piece = 'leggings',
		},
		[ 'dragonminez:blackgoku_armor_boots' ] = {
			pattern = 'dragonminez:pattern_black',
			piece = 'boots',
		},
		[ 'dragonminez:blackgoku_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_black',
			piece = 'chestplate',
		},
		[ 'dragonminez:blackgoku_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_black',
			piece = 'leggings',
		},
		[ 'dragonminez:broly_super_armor_boots' ] = {
			pattern = 'dragonminez:pattern_broly_super',
			piece = 'boots',
		},
		[ 'dragonminez:broly_super_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_broly_super',
			piece = 'chestplate',
		},
		[ 'dragonminez:broly_super_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_broly_super',
			piece = 'leggings',
		},
		[ 'dragonminez:broly_z_armor_boots' ] = {
			pattern = 'dragonminez:pattern_broly_z',
			piece = 'boots',
		},
		[ 'dragonminez:broly_z_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_broly_z',
			piece = 'chestplate',
		},
		[ 'dragonminez:broly_z_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_broly_z',
			piece = 'leggings',
		},
		[ 'dragonminez:capsule_corp_armor_boots' ] = {
			pattern = 'dragonminez:pattern_capsule_corp',
			piece = 'boots',
		},
		[ 'dragonminez:capsule_corp_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_capsule_corp',
			piece = 'chestplate',
		},
		[ 'dragonminez:capsule_corp_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_capsule_corp',
			piece = 'leggings',
		},
		[ 'dragonminez:caulifla_armor_boots' ] = {
			pattern = 'dragonminez:pattern_caulifla',
			piece = 'boots',
		},
		[ 'dragonminez:caulifla_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_caulifla',
			piece = 'chestplate',
		},
		[ 'dragonminez:caulifla_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_caulifla',
			piece = 'leggings',
		},
		[ 'dragonminez:chaoz_armor_boots' ] = {
			pattern = 'dragonminez:pattern_chaoz',
			piece = 'boots',
		},
		[ 'dragonminez:chaoz_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_chaoz',
			piece = 'chestplate',
		},
		[ 'dragonminez:chaoz_armor_helmet' ] = {
			pattern = 'dragonminez:pattern_chaoz',
			piece = 'helmet',
		},
		[ 'dragonminez:chaoz_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_chaoz',
			piece = 'leggings',
		},
		[ 'dragonminez:cooler_soldier_armor_boots' ] = {
			pattern = 'dragonminez:pattern_cooler_soldier',
			piece = 'boots',
		},
		[ 'dragonminez:cooler_soldier_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_cooler_soldier',
			piece = 'chestplate',
		},
		[ 'dragonminez:cooler_soldier_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_cooler_soldier',
			piece = 'leggings',
		},
		[ 'dragonminez:demon_gi_blue_armor_boots' ] = {
			pattern = 'dragonminez:pattern_gohan1',
			piece = 'boots',
		},
		[ 'dragonminez:demon_gi_blue_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_gohan1',
			piece = 'chestplate',
		},
		[ 'dragonminez:demon_gi_blue_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_gohan1',
			piece = 'leggings',
		},
		[ 'dragonminez:dragon_clan_armor_boots' ] = {
			pattern = 'dragonminez:pattern_dragon_clan',
			piece = 'boots',
		},
		[ 'dragonminez:dragon_clan_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_dragon_clan',
			piece = 'chestplate',
		},
		[ 'dragonminez:dragon_clan_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_dragon_clan',
			piece = 'leggings',
		},
		[ 'dragonminez:evil_buu_armor_boots' ] = {
			pattern = 'dragonminez:pattern_evil_buu',
			piece = 'boots',
		},
		[ 'dragonminez:evil_buu_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_evil_buu',
			piece = 'chestplate',
		},
		[ 'dragonminez:evil_buu_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_evil_buu',
			piece = 'leggings',
		},
		[ 'dragonminez:fighter_armor_boots' ] = {
			pattern = 'dragonminez:pattern_fighter',
			piece = 'boots',
		},
		[ 'dragonminez:fighter_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_fighter',
			piece = 'chestplate',
		},
		[ 'dragonminez:fighter_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_fighter',
			piece = 'leggings',
		},
		[ 'dragonminez:fusion_zamasu_armor_boots' ] = {
			pattern = 'dragonminez:pattern_fusionzamasu',
			piece = 'boots',
		},
		[ 'dragonminez:fusion_zamasu_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_fusionzamasu',
			piece = 'chestplate',
		},
		[ 'dragonminez:fusion_zamasu_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_fusionzamasu',
			piece = 'leggings',
		},
		[ 'dragonminez:future_gohan_armor_boots' ] = {
			pattern = 'dragonminez:pattern_future_gohan',
			piece = 'boots',
		},
		[ 'dragonminez:future_gohan_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_future_gohan',
			piece = 'chestplate',
		},
		[ 'dragonminez:future_gohan_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_future_gohan',
			piece = 'leggings',
		},
		[ 'dragonminez:gamma1_armor_boots' ] = {
			pattern = 'dragonminez:pattern_gamma1',
			piece = 'boots',
		},
		[ 'dragonminez:gamma1_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_gamma1',
			piece = 'chestplate',
		},
		[ 'dragonminez:gamma1_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_gamma1',
			piece = 'leggings',
		},
		[ 'dragonminez:gamma2_armor_boots' ] = {
			pattern = 'dragonminez:pattern_gamma2',
			piece = 'boots',
		},
		[ 'dragonminez:gamma2_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_gamma2',
			piece = 'chestplate',
		},
		[ 'dragonminez:gamma2_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_gamma2',
			piece = 'leggings',
		},
		[ 'dragonminez:gas_armor_boots' ] = {
			pattern = 'dragonminez:pattern_gas',
			piece = 'boots',
		},
		[ 'dragonminez:gas_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_gas',
			piece = 'chestplate',
		},
		[ 'dragonminez:gas_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_gas',
			piece = 'leggings',
		},
		[ 'dragonminez:gero_armor_boots' ] = {
			pattern = 'dragonminez:pattern_gero',
			piece = 'boots',
		},
		[ 'dragonminez:gero_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_gero',
			piece = 'chestplate',
		},
		[ 'dragonminez:gero_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_gero',
			piece = 'leggings',
		},
		[ 'dragonminez:gine_armor_boots' ] = {
			pattern = 'dragonminez:pattern_gine',
			piece = 'boots',
		},
		[ 'dragonminez:gine_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_gine',
			piece = 'chestplate',
		},
		[ 'dragonminez:gine_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_gine',
			piece = 'leggings',
		},
		[ 'dragonminez:gogeta_armor_boots' ] = {
			pattern = 'dragonminez:pattern_gogeta',
			piece = 'boots',
		},
		[ 'dragonminez:gogeta_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_gogeta',
			piece = 'chestplate',
		},
		[ 'dragonminez:gogeta_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_gogeta',
			piece = 'leggings',
		},
		[ 'dragonminez:gohan_super_armor_boots' ] = {
			pattern = 'dragonminez:pattern_gohan_super',
			piece = 'boots',
		},
		[ 'dragonminez:gohan_super_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_gohan_super',
			piece = 'chestplate',
		},
		[ 'dragonminez:gohan_super_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_gohan_super',
			piece = 'leggings',
		},
		[ 'dragonminez:goku_armor_boots' ] = {
			pattern = 'dragonminez:pattern_goku1',
			piece = 'boots',
		},
		[ 'dragonminez:goku_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_goku1',
			piece = 'chestplate',
		},
		[ 'dragonminez:goku_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_goku1',
			piece = 'leggings',
		},
		[ 'dragonminez:goku_gt_armor_boots' ] = {
			pattern = 'dragonminez:pattern_goku_gt',
			piece = 'boots',
		},
		[ 'dragonminez:goku_gt_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_goku_gt',
			piece = 'chestplate',
		},
		[ 'dragonminez:goku_gt_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_goku_gt',
			piece = 'leggings',
		},
		[ 'dragonminez:goku_kid_armor_boots' ] = {
			pattern = 'dragonminez:pattern_goku_kid',
			piece = 'boots',
		},
		[ 'dragonminez:goku_kid_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_goku_kid',
			piece = 'chestplate',
		},
		[ 'dragonminez:goku_kid_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_goku_kid',
			piece = 'leggings',
		},
		[ 'dragonminez:goku_super_armor_boots' ] = {
			pattern = 'dragonminez:pattern_goku_super',
			piece = 'boots',
		},
		[ 'dragonminez:goku_super_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_goku_super',
			piece = 'chestplate',
		},
		[ 'dragonminez:goku_super_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_goku_super',
			piece = 'leggings',
		},
		[ 'dragonminez:goku_whis_armor_boots' ] = {
			pattern = 'dragonminez:pattern_goku_whis',
			piece = 'boots',
		},
		[ 'dragonminez:goku_whis_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_goku_whis',
			piece = 'chestplate',
		},
		[ 'dragonminez:goku_whis_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_goku_whis',
			piece = 'leggings',
		},
		[ 'dragonminez:goten_armor_boots' ] = {
			pattern = 'dragonminez:pattern_goten',
			piece = 'boots',
		},
		[ 'dragonminez:goten_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_goten',
			piece = 'chestplate',
		},
		[ 'dragonminez:goten_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_goten',
			piece = 'leggings',
		},
		[ 'dragonminez:goten_super_armor_boots' ] = {
			pattern = 'dragonminez:pattern_goten_super',
			piece = 'boots',
		},
		[ 'dragonminez:goten_super_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_goten_super',
			piece = 'chestplate',
		},
		[ 'dragonminez:goten_super_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_goten_super',
			piece = 'leggings',
		},
		[ 'dragonminez:granola_armor_boots' ] = {
			pattern = 'dragonminez:pattern_granola',
			piece = 'boots',
		},
		[ 'dragonminez:granola_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_granola',
			piece = 'chestplate',
		},
		[ 'dragonminez:granola_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_granola',
			piece = 'leggings',
		},
		[ 'dragonminez:great_saiyaman_2_armor_boots' ] = {
			pattern = 'dragonminez:pattern_great_saiyaman_2',
			piece = 'boots',
		},
		[ 'dragonminez:great_saiyaman_2_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_great_saiyaman_2',
			piece = 'chestplate',
		},
		[ 'dragonminez:great_saiyaman_2_armor_helmet' ] = {
			pattern = 'dragonminez:pattern_great_saiyaman_2',
			piece = 'helmet',
		},
		[ 'dragonminez:great_saiyaman_2_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_great_saiyaman_2',
			piece = 'leggings',
		},
		[ 'dragonminez:great_saiyaman_armor_boots' ] = {
			pattern = 'dragonminez:pattern_great_saiyaman',
			piece = 'boots',
		},
		[ 'dragonminez:great_saiyaman_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_great_saiyaman',
			piece = 'chestplate',
		},
		[ 'dragonminez:great_saiyaman_armor_helmet' ] = {
			pattern = 'dragonminez:pattern_great_saiyaman',
			piece = 'helmet',
		},
		[ 'dragonminez:great_saiyaman_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_great_saiyaman',
			piece = 'leggings',
		},
		[ 'dragonminez:hit_armor_boots' ] = {
			pattern = 'dragonminez:pattern_hit',
			piece = 'boots',
		},
		[ 'dragonminez:hit_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_hit',
			piece = 'chestplate',
		},
		[ 'dragonminez:hit_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_hit',
			piece = 'leggings',
		},
		[ 'dragonminez:kale_armor_boots' ] = {
			pattern = 'dragonminez:pattern_kale',
			piece = 'boots',
		},
		[ 'dragonminez:kale_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_kale',
			piece = 'chestplate',
		},
		[ 'dragonminez:kale_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_kale',
			piece = 'leggings',
		},
		[ 'dragonminez:kefla_armor_boots' ] = {
			pattern = 'dragonminez:pattern_kefla',
			piece = 'boots',
		},
		[ 'dragonminez:kefla_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_kefla',
			piece = 'chestplate',
		},
		[ 'dragonminez:kefla_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_kefla',
			piece = 'leggings',
		},
		[ 'dragonminez:kibito_armor_boots' ] = {
			pattern = 'dragonminez:pattern_kibito',
			piece = 'boots',
		},
		[ 'dragonminez:kibito_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_kibito',
			piece = 'chestplate',
		},
		[ 'dragonminez:kibito_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_kibito',
			piece = 'leggings',
		},
		[ 'dragonminez:king_vegeta_armor_boots' ] = {
			pattern = 'dragonminez:pattern_king_vegeta',
			piece = 'boots',
		},
		[ 'dragonminez:king_vegeta_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_king_vegeta',
			piece = 'chestplate',
		},
		[ 'dragonminez:king_vegeta_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_king_vegeta',
			piece = 'leggings',
		},
		[ 'dragonminez:majin21_armor_boots' ] = {
			pattern = 'dragonminez:pattern_majin21',
			piece = 'boots',
		},
		[ 'dragonminez:majin21_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_majin21',
			piece = 'chestplate',
		},
		[ 'dragonminez:majin21_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_majin21',
			piece = 'leggings',
		},
		[ 'dragonminez:majin_buu_armor_boots' ] = {
			pattern = 'dragonminez:pattern_majin_buu',
			piece = 'boots',
		},
		[ 'dragonminez:majin_buu_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_majin_buu',
			piece = 'chestplate',
		},
		[ 'dragonminez:majin_buu_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_majin_buu',
			piece = 'leggings',
		},
		[ 'dragonminez:mighty_majin_armor_boots' ] = {
			pattern = 'dragonminez:pattern_mighty_majin',
			piece = 'boots',
		},
		[ 'dragonminez:mighty_majin_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_mighty_majin',
			piece = 'chestplate',
		},
		[ 'dragonminez:mighty_majin_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_mighty_majin',
			piece = 'leggings',
		},
		[ 'dragonminez:mystic_armor_boots' ] = {
			pattern = 'dragonminez:pattern_mystic',
			piece = 'boots',
		},
		[ 'dragonminez:mystic_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_mystic',
			piece = 'chestplate',
		},
		[ 'dragonminez:mystic_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_mystic',
			piece = 'leggings',
		},
		[ 'dragonminez:orange_high_armor_boots' ] = {
			pattern = 'dragonminez:pattern_orange_high',
			piece = 'boots',
		},
		[ 'dragonminez:orange_high_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_orange_high',
			piece = 'chestplate',
		},
		[ 'dragonminez:orange_high_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_orange_high',
			piece = 'leggings',
		},
		[ 'dragonminez:piccolo_armor_boots' ] = {
			pattern = 'dragonminez:pattern_piccolo',
			piece = 'boots',
		},
		[ 'dragonminez:piccolo_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_piccolo',
			piece = 'chestplate',
		},
		[ 'dragonminez:piccolo_armor_helmet' ] = {
			pattern = 'dragonminez:pattern_piccolo',
			piece = 'helmet',
		},
		[ 'dragonminez:piccolo_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_piccolo',
			piece = 'leggings',
		},
		[ 'dragonminez:pride_troops_armor_boots' ] = {
			pattern = 'dragonminez:pattern_pride_troops',
			piece = 'boots',
		},
		[ 'dragonminez:pride_troops_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_pride_troops',
			piece = 'chestplate',
		},
		[ 'dragonminez:pride_troops_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_pride_troops',
			piece = 'leggings',
		},
		[ 'dragonminez:raditz_armor_boots' ] = {
			pattern = 'dragonminez:pattern_raditz',
			piece = 'boots',
		},
		[ 'dragonminez:raditz_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_raditz',
			piece = 'chestplate',
		},
		[ 'dragonminez:raditz_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_raditz',
			piece = 'leggings',
		},
		[ 'dragonminez:shin_armor_boots' ] = {
			pattern = 'dragonminez:pattern_shin',
			piece = 'boots',
		},
		[ 'dragonminez:shin_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_shin',
			piece = 'chestplate',
		},
		[ 'dragonminez:shin_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_shin',
			piece = 'leggings',
		},
		[ 'dragonminez:slug_armor_boots' ] = {
			pattern = 'dragonminez:pattern_slug',
			piece = 'boots',
		},
		[ 'dragonminez:slug_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_slug',
			piece = 'chestplate',
		},
		[ 'dragonminez:slug_armor_helmet' ] = {
			pattern = 'dragonminez:pattern_slug',
			piece = 'helmet',
		},
		[ 'dragonminez:slug_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_slug',
			piece = 'leggings',
		},
		[ 'dragonminez:super_buu_armor_boots' ] = {
			pattern = 'dragonminez:pattern_super_buu',
			piece = 'boots',
		},
		[ 'dragonminez:super_buu_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_super_buu',
			piece = 'chestplate',
		},
		[ 'dragonminez:super_buu_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_super_buu',
			piece = 'leggings',
		},
		[ 'dragonminez:tien_armor_boots' ] = {
			pattern = 'dragonminez:pattern_tien',
			piece = 'boots',
		},
		[ 'dragonminez:tien_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_tien',
			piece = 'chestplate',
		},
		[ 'dragonminez:tien_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_tien',
			piece = 'leggings',
		},
		[ 'dragonminez:trunks_kid_armor_boots' ] = {
			pattern = 'dragonminez:pattern_trunks_kid',
			piece = 'boots',
		},
		[ 'dragonminez:trunks_kid_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_trunks_kid',
			piece = 'chestplate',
		},
		[ 'dragonminez:trunks_kid_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_trunks_kid',
			piece = 'leggings',
		},
		[ 'dragonminez:trunks_super_armor_boots' ] = {
			pattern = 'dragonminez:pattern_trunks_super',
			piece = 'boots',
		},
		[ 'dragonminez:trunks_super_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_trunks_super',
			piece = 'chestplate',
		},
		[ 'dragonminez:trunks_super_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_trunks_super',
			piece = 'leggings',
		},
		[ 'dragonminez:trunks_z_armor_boots' ] = {
			pattern = 'dragonminez:pattern_trunks_z',
			piece = 'boots',
		},
		[ 'dragonminez:trunks_z_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_trunks_z',
			piece = 'chestplate',
		},
		[ 'dragonminez:trunks_z_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_trunks_z',
			piece = 'leggings',
		},
		[ 'dragonminez:turles_armor_boots' ] = {
			pattern = 'dragonminez:pattern_turles',
			piece = 'boots',
		},
		[ 'dragonminez:turles_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_turles',
			piece = 'chestplate',
		},
		[ 'dragonminez:turles_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_turles',
			piece = 'leggings',
		},
		[ 'dragonminez:vegeta_buu_armor_boots' ] = {
			pattern = 'dragonminez:pattern_vegeta_buu',
			piece = 'boots',
		},
		[ 'dragonminez:vegeta_buu_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_vegeta_buu',
			piece = 'chestplate',
		},
		[ 'dragonminez:vegeta_buu_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_vegeta_buu',
			piece = 'leggings',
		},
		[ 'dragonminez:vegeta_gt_armor_boots' ] = {
			pattern = 'dragonminez:pattern_vegeta_gt',
			piece = 'boots',
		},
		[ 'dragonminez:vegeta_gt_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_vegeta_gt',
			piece = 'chestplate',
		},
		[ 'dragonminez:vegeta_gt_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_vegeta_gt',
			piece = 'leggings',
		},
		[ 'dragonminez:vegeta_namek_armor_boots' ] = {
			pattern = 'dragonminez:pattern_vegeta2',
			piece = 'boots',
		},
		[ 'dragonminez:vegeta_namek_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_vegeta2',
			piece = 'chestplate',
		},
		[ 'dragonminez:vegeta_namek_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_vegeta2',
			piece = 'leggings',
		},
		[ 'dragonminez:vegeta_saiyan_armor_boots' ] = {
			pattern = 'dragonminez:pattern_vegeta1',
			piece = 'boots',
		},
		[ 'dragonminez:vegeta_saiyan_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_vegeta1',
			piece = 'chestplate',
		},
		[ 'dragonminez:vegeta_saiyan_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_vegeta1',
			piece = 'leggings',
		},
		[ 'dragonminez:vegeta_super_armor_boots' ] = {
			pattern = 'dragonminez:pattern_vegeta_super',
			piece = 'boots',
		},
		[ 'dragonminez:vegeta_super_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_vegeta_super',
			piece = 'chestplate',
		},
		[ 'dragonminez:vegeta_super_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_vegeta_super',
			piece = 'leggings',
		},
		[ 'dragonminez:vegeta_whis_armor_boots' ] = {
			pattern = 'dragonminez:pattern_vegeta_whis',
			piece = 'boots',
		},
		[ 'dragonminez:vegeta_whis_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_vegeta_whis',
			piece = 'chestplate',
		},
		[ 'dragonminez:vegeta_whis_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_vegeta_whis',
			piece = 'leggings',
		},
		[ 'dragonminez:vegeta_z_armor_boots' ] = {
			pattern = 'dragonminez:pattern_vegeta_z',
			piece = 'boots',
		},
		[ 'dragonminez:vegeta_z_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_vegeta_z',
			piece = 'chestplate',
		},
		[ 'dragonminez:vegeta_z_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_vegeta_z',
			piece = 'leggings',
		},
		[ 'dragonminez:vegetto_armor_boots' ] = {
			pattern = 'dragonminez:pattern_vegetto',
			piece = 'boots',
		},
		[ 'dragonminez:vegetto_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_vegetto',
			piece = 'chestplate',
		},
		[ 'dragonminez:vegetto_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_vegetto',
			piece = 'leggings',
		},
		[ 'dragonminez:vergil_armor_boots' ] = {
			pattern = 'dragonminez:pattern_vergil',
			piece = 'boots',
		},
		[ 'dragonminez:vergil_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_vergil',
			piece = 'chestplate',
		},
		[ 'dragonminez:vergil_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_vergil',
			piece = 'leggings',
		},
		[ 'dragonminez:videl_armor_boots' ] = {
			pattern = 'dragonminez:pattern_videl',
			piece = 'boots',
		},
		[ 'dragonminez:videl_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_videl',
			piece = 'chestplate',
		},
		[ 'dragonminez:videl_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_videl',
			piece = 'leggings',
		},
		[ 'dragonminez:warrior_clan_armor_boots' ] = {
			pattern = 'dragonminez:pattern_warrior_clan',
			piece = 'boots',
		},
		[ 'dragonminez:warrior_clan_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_warrior_clan',
			piece = 'chestplate',
		},
		[ 'dragonminez:warrior_clan_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_warrior_clan',
			piece = 'leggings',
		},
		[ 'dragonminez:whis_armor_boots' ] = {
			pattern = 'dragonminez:pattern_whis',
			piece = 'boots',
		},
		[ 'dragonminez:whis_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_whis',
			piece = 'chestplate',
		},
		[ 'dragonminez:whis_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_whis',
			piece = 'leggings',
		},
		[ 'dragonminez:wonder_majin_armor_boots' ] = {
			pattern = 'dragonminez:pattern_wonder_majin',
			piece = 'boots',
		},
		[ 'dragonminez:wonder_majin_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_wonder_majin',
			piece = 'chestplate',
		},
		[ 'dragonminez:wonder_majin_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_wonder_majin',
			piece = 'leggings',
		},
		[ 'dragonminez:xeno_goku_armor_boots' ] = {
			pattern = 'dragonminez:pattern_xeno_goku',
			piece = 'boots',
		},
		[ 'dragonminez:xeno_goku_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_xeno_goku',
			piece = 'chestplate',
		},
		[ 'dragonminez:xeno_goku_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_xeno_goku',
			piece = 'leggings',
		},
		[ 'dragonminez:xeno_goku_patreon_armor_boots' ] = {
			pattern = 'dragonminez:pattern_xeno_goku_patreon',
			piece = 'boots',
		},
		[ 'dragonminez:xeno_goku_patreon_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_xeno_goku_patreon',
			piece = 'chestplate',
		},
		[ 'dragonminez:xeno_goku_patreon_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_xeno_goku_patreon',
			piece = 'leggings',
		},
		[ 'dragonminez:yardrat_armor_boots' ] = {
			pattern = 'dragonminez:pattern_yardrat',
			piece = 'boots',
		},
		[ 'dragonminez:yardrat_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_yardrat',
			piece = 'chestplate',
		},
		[ 'dragonminez:yardrat_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_yardrat',
			piece = 'leggings',
		},
		[ 'dragonminez:zamasu_armor_boots' ] = {
			pattern = 'dragonminez:pattern_zamasu',
			piece = 'boots',
		},
		[ 'dragonminez:zamasu_armor_chestplate' ] = {
			pattern = 'dragonminez:pattern_zamasu',
			piece = 'chestplate',
		},
		[ 'dragonminez:zamasu_armor_leggings' ] = {
			pattern = 'dragonminez:pattern_zamasu',
			piece = 'leggings',
		},
	},
	tools = {
		'dragonminez:armor_crafting_kit',
	},
}
