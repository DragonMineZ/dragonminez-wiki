return {
	categories = {
		'general',
		'story',
		'training',
		'exploration',
		'combat',
		'collection',
		'tech',
	},
	categoryNames = {
		general = {
			en = 'General',
			es = 'General',
			pt = 'Geral',
		},
		story = {
			en = 'Story',
			es = 'Historia',
			pt = 'História',
		},
		training = {
			en = 'Training',
			es = 'Entrenamiento',
			pt = 'Treino',
		},
		exploration = {
			en = 'Exploration',
			es = 'Exploración',
			pt = 'Exploração',
		},
		combat = {
			en = 'Combat',
			es = 'Combate',
			pt = 'Combate',
		},
		collection = {
			en = 'Collection',
			es = 'Colección',
			pt = 'Coleta',
		},
		tech = {
			en = 'Capsule Corp',
			es = 'Corp. Cápsula',
			pt = 'Corporação Cápsula',
		},
	},
	npcs = {
		baba_earth = 'Fortuneteller Baba',
		bulma = 'Bulma',
		dende = 'Dende',
		gohan = 'Gohan',
		goku = 'Goku',
		guru = 'Grand Elder Guru',
		karin = 'Korin',
		kingkai = 'King Kai',
		krillin = 'Krillin',
		oldkai = 'Old Kai',
		piccolo = 'Piccolo',
		popo = 'Mr. Popo',
		roshi = 'Master Roshi',
		trunks = 'Trunks',
		vegeta = 'Vegeta',
		yamcha = 'Yamcha',
		chiaotzu = 'Chiaotzu',
		mr_satan = 'Mr. Satan',
		tien = 'Master Tien',
		buu = 'Majin Buu',
	},
	none = {
		en = 'None',
		es = 'Ninguno',
		pt = 'Nenhum',
	},
	quests = {
		{
			id = 'android_krillin_gift',
			category = 'story',
			giver = 'krillin',
			turnin = 'krillin',
			ordered = true,
			repeatable = false,
			name = {
				en = 'A Gift for 18',
				es = 'Un Regalo para 18',
				pt = 'Um Presente para a 18',
			},
			desc = {
				en = 'Krillin wants to thank Android 18 but doesn\'t know what to bring. Help him with some diamonds and flowers.',
				es = 'Krilin quiere darle las gracias a la Androide 18, pero no sabe qué llevarle. Ayúdalo con unos diamantes y flores.',
				pt = 'Kuririn quer agradecer à Androide 18, mas não sabe o que levar. Ajude-o com alguns diamantes e flores.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Krillin|Krillin]]',
				es = '[[Special:MyLanguage/Krillin|Krilin]]',
				pt = '[[Special:MyLanguage/Krillin|Kuririn]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 15: \'\'Super Perfect Cell\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 15: \'\'Cell Super Perfecto\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 15: \'\'Cell Super Perfeito\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 3 × Diamond to [[Special:MyLanguage/Krillin|Krillin]]',
					'Deliver 12 × Poppy to [[Special:MyLanguage/Krillin|Krillin]]',
					'Talk to [[Special:MyLanguage/Krillin|Krillin]]',
				},
				es = {
					'Entrega 3 × Diamante a [[Special:MyLanguage/Krillin|Krilin]]',
					'Entrega 12 × Amapola a [[Special:MyLanguage/Krillin|Krilin]]',
					'Habla con [[Special:MyLanguage/Krillin|Krilin]]',
				},
				pt = {
					'Entregue 3 × Diamante para [[Special:MyLanguage/Krillin|Kuririn]]',
					'Entregue 12 × Papoula para [[Special:MyLanguage/Krillin|Kuririn]]',
					'Fale com [[Special:MyLanguage/Krillin|Kuririn]]',
				},
			},
			rewards = {
				en = {
					'×18 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×18 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×18 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'dende_lookout_vigil',
			category = 'story',
			giver = 'dende',
			turnin = 'dende',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Vigil at the Lookout',
				es = 'Vigilia en la Atalaya de Kami',
				pt = 'Vigília no Mirante',
			},
			desc = {
				en = 'Garlic Jr. has slipped free of the Dead Zone once more. Dende asks you to keep watch over Kami\'s Lookout and report anything strange before the Spice Boys strike again.',
				es = 'Garlic Jr. ha escapado de nuevo de la Zona Muerta. Dende te pide que montes guardia en la Atalaya de Kami y comuniques cualquier cosa extraña antes de que los Chicos de las Especias ataquen de nuevo.',
				pt = 'Garlic Jr. escapou da Zona Mortal mais uma vez. Dende pede que você vigie o Mirante de Kami e relate qualquer coisa estranha antes que os Spice Boys ataquem novamente.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Dende|Dende]]',
				es = '[[Special:MyLanguage/Dende|Dendé]]',
				pt = '[[Special:MyLanguage/Dende|Dende]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Movies Saga|Movies Saga]], quest 1: \'\'Kami\'s Lookout Warning\'\'',
					'Be at [[Special:MyLanguage/Kami\'s Lookout|Kami\'s Lookout]]',
				},
				es = {
					'[[Special:MyLanguage/Movies Saga|Saga Películas]], misión 1: \'\'Aviso en la Atalaya de Kami\'\'',
					'Estar en [[Special:MyLanguage/Kami\'s Lookout|Atalaya de Kami]]',
				},
				pt = {
					'[[Special:MyLanguage/Movies Saga|Saga de Filmes]], missão 1: \'\'Aviso do Mirante de Kami\'\'',
					'Estar em [[Special:MyLanguage/Kami\'s Lookout|Mirante de Kami]]',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Kami\'s Lookout|Kami\'s Lookout]]',
					'Talk to [[Special:MyLanguage/Dende|Dende]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Kami\'s Lookout|Atalaya de Kami]]',
					'Habla con [[Special:MyLanguage/Dende|Dendé]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Kami\'s Lookout|Mirante de Kami]]',
					'Fale com [[Special:MyLanguage/Dende|Dende]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'frieza_dende_gratitude',
			category = 'story',
			giver = 'dende',
			turnin = 'dende',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Dende\'s Gratitude',
				es = 'La Gratitud de Dendé',
				pt = 'A Gratidão de Dende',
			},
			desc = {
				en = 'Dende never forgot who helped the Namekians. Visit him at the Lookout and bring him golden apples.',
				es = 'Dendé nunca olvidó quién ayudó a los namekianos. Visítalo en la Atalaya y llévale manzanas doradas.',
				pt = 'Dende nunca esqueceu quem ajudou os namekuseijins. Visite-o no Mirante e leve maçãs douradas para ele.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Dende|Dende]]',
				es = '[[Special:MyLanguage/Dende|Dendé]]',
				pt = '[[Special:MyLanguage/Dende|Dende]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 22: \'\'Summon Porunga\'\'',
					'Alignment 40 or higher',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 22: \'\'Invoca a Porunga\'\'',
					'Alineamiento de 40 o más',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 22: \'\'Invoque Porunga\'\'',
					'Índole de 40 ou mais',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Kami\'s Lookout|Kami\'s Lookout]]',
					'Deliver 4 × Golden Apple to [[Special:MyLanguage/Dende|Dende]]',
					'Talk to [[Special:MyLanguage/Dende|Dende]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Kami\'s Lookout|Atalaya de Kami]]',
					'Entrega 4 × Manzana dorada a [[Special:MyLanguage/Dende|Dendé]]',
					'Habla con [[Special:MyLanguage/Dende|Dendé]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Kami\'s Lookout|Mirante de Kami]]',
					'Entregue 4 × Maçã Dourada para [[Special:MyLanguage/Dende|Dende]]',
					'Fale com [[Special:MyLanguage/Dende|Dende]]',
				},
			},
			rewards = {
				en = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'future_gohan_cure',
			category = 'story',
			giver = 'trunks',
			turnin = 'trunks',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Medicine for the Future',
				es = 'Medicina para el Futuro',
				pt = 'Remédio para o Futuro',
			},
			desc = {
				en = 'Future Gohan is badly wounded after the Androids\' attack. Gather golden apples and a Senzu Bean, then report back to Trunks.',
				es = 'Gohan del Futuro está gravemente herido tras el ataque de los Androides. Consigue manzanas doradas y una Semilla del Ermitaño, y luego informa a Trunks.',
				pt = 'Gohan do Futuro está gravemente ferido após o ataque dos Androides. Reúna maçãs douradas e um Feijão Senzu e volte a Trunks.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Trunks|Trunks]]',
				es = '[[Special:MyLanguage/Trunks|Trunks]]',
				pt = '[[Special:MyLanguage/Trunks|Trunks]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Future Saga|Future Saga]], quest 3: \'\'Androids of the Future\'\'',
				},
				es = {
					'[[Special:MyLanguage/Future Saga|Saga del Futuro]], misión 3: \'\'Los Androides del Futuro\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Future Saga|Saga do Futuro]], missão 3: \'\'Androides do Futuro\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 8 × Golden Apple',
					'Obtain 1 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
					'Talk to [[Special:MyLanguage/Trunks|Trunks]]',
				},
				es = {
					'Consigue 8 × Manzana dorada',
					'Consigue 1 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
					'Habla con [[Special:MyLanguage/Trunks|Trunks]]',
				},
				pt = {
					'Obtenha 8 × Maçã Dourada',
					'Obtenha 1 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
					'Fale com [[Special:MyLanguage/Trunks|Trunks]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'goku_final_farewell',
			category = 'story',
			giver = 'goku',
			turnin = 'goku',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Goku\'s Final Farewell',
				es = 'El Último Adiós de Goku',
				pt = 'Despedida Final de Goku',
			},
			desc = {
				en = 'With Cell defeated, Goku has one last wish — visit Kami\'s Lookout together one more time. This may be the last chance to say goodbye.',
				es = 'Con Cell derrotado, Goku tiene un último deseo: visitar juntos la Atalaya de Kami una última vez. Puede que sea la última oportunidad de despedirse.',
				pt = 'Com Cell derrotado, Goku tem um último desejo: visitar o Mirante de Kami juntos mais uma vez. Esta pode ser a última chance de se despedir.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Goku|Goku]]',
				es = '[[Special:MyLanguage/Goku|Goku]]',
				pt = '[[Special:MyLanguage/Goku|Goku]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 15: \'\'Super Perfect Cell\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 15: \'\'Cell Super Perfecto\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 15: \'\'Cell Super Perfeito\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Kami\'s Lookout|Kami\'s Lookout]]',
					'Talk to [[Special:MyLanguage/Goku|Goku]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Kami\'s Lookout|Atalaya de Kami]]',
					'Habla con [[Special:MyLanguage/Goku|Goku]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Kami\'s Lookout|Mirante de Kami]]',
					'Fale com [[Special:MyLanguage/Goku|Goku]]',
				},
			},
			rewards = {
				en = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'goku_healing_pod',
			category = 'story',
			giver = 'goku',
			turnin = 'goku',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Defending the Healing Pod',
				es = 'Defendiendo la Cápsula de Curación',
				pt = 'Defendendo a Cápsula de Cura',
			},
			desc = {
				en = 'Goku is recovering in a healing pod after his battle with the Ginyu Force. Frieza\'s soldiers are closing in — defend the area at all costs!',
				es = 'Goku se está recuperando en una cápsula de curación tras su batalla con las Fuerzas Especiales Ginyu. Los soldados de Freezer se están acercando: ¡defiende el área a toda costa!',
				pt = 'Goku está se recuperando em uma cápsula de cura após sua batalha contra a Força Ginyu. Os soldados de Freeza estão se aproximando. Defenda a área a todo custo!',
			},
			giverText = {
				en = '[[Special:MyLanguage/Goku|Goku]]',
				es = '[[Special:MyLanguage/Goku|Goku]]',
				pt = '[[Special:MyLanguage/Goku|Goku]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 11: \'\'Body Change Chaos\'\'',
					'Be at [[Special:MyLanguage/Grand Elder\'s House|Grand Elder\'s House]]',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 11: \'\'El Caos del Cambio de Cuerpo\'\'',
					'Estar en [[Special:MyLanguage/Grand Elder\'s House|Casa del Gran Anciano]]',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 11: \'\'Caos da Troca de Corpos\'\'',
					'Estar em [[Special:MyLanguage/Grand Elder\'s House|Casa do Grande Ancião]]',
				},
			},
			objectives = {
				en = {
					'Defeat 20 × [[Special:MyLanguage/Frieza Soldier|Frieza\'s soldiers]]',
					'Talk to [[Special:MyLanguage/Goku|Goku]]',
				},
				es = {
					'Derrota a 20 × [[Special:MyLanguage/Frieza Soldier|soldados de Freezer]]',
					'Habla con [[Special:MyLanguage/Goku|Goku]]',
				},
				pt = {
					'Derrote 20 × [[Special:MyLanguage/Frieza Soldier|soldados de Freeza]]',
					'Fale com [[Special:MyLanguage/Goku|Goku]]',
				},
			},
			rewards = {
				en = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gt_goku_farewell',
			category = 'story',
			giver = 'goku',
			turnin = 'goku',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Farewell, Goku',
				es = 'Adiós, Goku',
				pt = 'Adeus, Goku',
			},
			desc = {
				en = 'Goku is leaving on Shenron\'s back. Visit his house one last time and say goodbye.',
				es = 'Goku se va a lomos de Shenron. Visita su casa una última vez y despídete.',
				pt = 'Goku está indo embora nas costas de Shenlong. Visite a casa dele uma última vez e se despeça.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Goku|Goku]]',
				es = '[[Special:MyLanguage/Goku|Goku]]',
				pt = '[[Special:MyLanguage/Goku|Goku]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/GT Saga|GT Saga]], quest 46: \'\'Omega Shenron\'s End\'\'',
				},
				es = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], misión 46: \'\'El Fin de Omega Shenron\'\'',
				},
				pt = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], missão 46: \'\'O Fim de Omega Shenlong\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Goku\'s House|Goku\'s House]]',
					'Talk to [[Special:MyLanguage/Goku|Goku]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Goku\'s House|Casa de Goku]]',
					'Habla con [[Special:MyLanguage/Goku|Goku]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Goku\'s House|Casa do Goku]]',
					'Fale com [[Special:MyLanguage/Goku|Goku]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'5 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'5 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'5 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
				},
			},
		},
		{
			id = 'piccolo_arrival',
			category = 'story',
			giver = 'piccolo',
			turnin = 'piccolo',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Piccolo\'s Arrival',
				es = 'La Llegada de Piccolo',
				pt = 'Chegada de Piccolo',
			},
			desc = {
				en = 'Piccolo has finally arrived on Planet Namek. He needs you to create a distraction by drawing out Frieza\'s soldiers while he powers up.',
				es = 'Piccolo por fin ha llegado al Planeta Namek. Necesita que crees una distracción atrayendo a los soldados de Freezer mientras él acumula energía.',
				pt = 'Piccolo finalmente chegou ao Planeta Namek. Ele precisa que você crie uma distração atraindo os soldados de Freeza enquanto ele aumenta seu poder.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				es = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				pt = '[[Special:MyLanguage/Piccolo|Piccolo]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 8: \'\'Recoome\'s Rampage\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 8: \'\'El Arrebato de Recoome\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 8: \'\'Fúria de Recoome\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 10 × [[Special:MyLanguage/Frieza Soldier|Frieza\'s soldiers]]',
					'Talk to [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				es = {
					'Derrota a 10 × [[Special:MyLanguage/Frieza Soldier|soldados de Freezer]]',
					'Habla con [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				pt = {
					'Derrote 10 × [[Special:MyLanguage/Frieza Soldier|soldados de Freeza]]',
					'Fale com [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
			},
			rewards = {
				en = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'android_tien_holds_the_line',
			category = 'training',
			giver = 'piccolo',
			turnin = 'piccolo',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Holding the Line',
				es = 'Resistir a Toda Costa',
				pt = 'Segurando a Linha',
			},
			desc = {
				en = 'Piccolo wants to know if you could hold Cell back the way Tien did. Spar with Tien, then report to Piccolo.',
				es = 'Piccolo quiere saber si podrías contener a Cell como lo hizo Ten Shin Han. Entrena con Ten Shin Han y luego infórmale a Piccolo.',
				pt = 'Piccolo quer saber se você conseguiria segurar Cell como Tenshinhan fez. Treine com Tenshinhan e depois fale com Piccolo.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				es = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				pt = '[[Special:MyLanguage/Piccolo|Piccolo]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 10: \'\'Cell Emerges\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 10: \'\'Aparece Cell\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 10: \'\'Cell Surge\'\'',
				},
			},
			objectives = {
				en = {
					'Spar with Tien Shinhan and win without killing them (spawned by the quest, 100,000 health)',
					'Talk to [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				es = {
					'Entrena con Ten Shin Han y gana sin matarlo (aparece con la misión, 100 000 de vida)',
					'Habla con [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				pt = {
					'Treine com Tenshinhan e vença sem matá-lo (surge com a missão, 100 000 de vida)',
					'Fale com [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
			},
			rewards = {
				en = {
					'×35 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×35 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×35 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'android_time_chamber_meditation',
			category = 'training',
			giver = 'popo',
			turnin = 'popo',
			ordered = true,
			repeatable = false,
			name = {
				en = 'A Day in the Chamber',
				es = 'Un Día en la Habitación',
				pt = 'Um Dia na Sala',
			},
			desc = {
				en = 'Mr. Popo says the Hyperbolic Time Chamber is about more than fighting. Enter it, reach Meditation level 3 and talk to him.',
				es = 'El Sr. Popo dice que la Cámara Hiperbólica del Tiempo no es solo para pelear. Entra, sube Meditación al nivel 3 y habla con él.',
				pt = 'O Sr Popo diz que a Sala do Tempo não serve só para lutar. Entre nela, alcance o nível 3 de Meditação e fale com ele.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Mr. Popo|Mr. Popo]]',
				es = '[[Special:MyLanguage/Mr. Popo|Sr. Popo]]',
				pt = '[[Special:MyLanguage/Mr. Popo|Sr Popo]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 12: \'\'Beyond Super Saiyan\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 12: \'\'Más allá del Super Saiyajin\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 12: \'\'Além do Super Saiyajin\'\'',
				},
			},
			objectives = {
				en = {
					'Go to [[Special:MyLanguage/Hyperbolic Time Chamber|Hyperbolic Time Chamber]]',
					'Reach [[Special:MyLanguage/Meditation|Meditation]] level 3',
					'Talk to [[Special:MyLanguage/Mr. Popo|Mr. Popo]]',
				},
				es = {
					'Ve a [[Special:MyLanguage/Hyperbolic Time Chamber|Cámara Hiperbólica del Tiempo]]',
					'Sube [[Special:MyLanguage/Meditation|Meditación]] al nivel 3',
					'Habla con [[Special:MyLanguage/Mr. Popo|Sr. Popo]]',
				},
				pt = {
					'Vá para [[Special:MyLanguage/Hyperbolic Time Chamber|Sala do Tempo]]',
					'Alcance o nível 3 de [[Special:MyLanguage/Meditation|Meditação]]',
					'Fale com [[Special:MyLanguage/Mr. Popo|Sr Popo]]',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'buu_old_kai_senses',
			category = 'training',
			giver = 'oldkai',
			turnin = 'oldkai',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Old Kai\'s Lesson',
				es = 'La Lección del Kaioshin Anciano',
				pt = 'A Lição do Velho Kaioshin',
			},
			desc = {
				en = 'The Old Kai believes a true warrior must feel ki, not just see it. Learn Ki Sense on the Sacred World of the Kais and show him.',
				es = 'El Kaioshin Anciano cree que un verdadero guerrero debe sentir el ki, no solo verlo. Aprende Sentir Ki en el Planeta Sagrado de los Kaioshins y demuéstraselo.',
				pt = 'O Velho Kaioshin acredita que um verdadeiro guerreiro deve sentir o ki, não só vê-lo. Aprenda Sentido de Ki no Mundo Sagrado dos Kai e mostre a ele.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Old Kai|Old Kai]]',
				es = '[[Special:MyLanguage/Old Kai|Kaioshin Anciano]]',
				pt = '[[Special:MyLanguage/Old Kai|Velho Kaioshin]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 29: \'\'Return to the Sacred World\'\'',
					'Be in [[Special:MyLanguage/Sacred Kai Planet|Sacred Kai Planet]]',
					'Level 400',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 29: \'\'Regresa al Mundo Sagrado\'\'',
					'Estar en [[Special:MyLanguage/Sacred Kai Planet|Planeta Sagrado de los Kaioshins]]',
					'Nivel 400',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 29: \'\'Retorno ao Mundo Sagrado\'\'',
					'Estar em [[Special:MyLanguage/Sacred Kai Planet|Mundo Sagrado dos Kai]]',
					'Nível 400',
				},
			},
			objectives = {
				en = {
					'Reach [[Special:MyLanguage/Ki Sense|Ki Sense]] level 1',
					'Talk to [[Special:MyLanguage/Old Kai|Old Kai]]',
				},
				es = {
					'Sube [[Special:MyLanguage/Ki Sense|Sentir Ki]] al nivel 1',
					'Habla con [[Special:MyLanguage/Old Kai|Kaioshin Anciano]]',
				},
				pt = {
					'Alcance o nível 1 de [[Special:MyLanguage/Ki Sense|Sentido de Ki]]',
					'Fale com [[Special:MyLanguage/Old Kai|Velho Kaioshin]]',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'chiaotzu_psychic_sparring',
			category = 'training',
			giver = 'chiaotzu',
			turnin = 'chiaotzu',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Psychic Sparring',
				es = 'Combate Psíquico',
				pt = 'Treino Psíquico',
			},
			desc = {
				en = 'Chiaotzu wants to test his telekinesis on a real opponent at the World Tournament island. Spar with him and show him you can break free.',
				es = 'Chaozu quiere probar su telequinesis con un oponente de verdad en la isla del Torneo de Artes Marciales. Combate con él y demuéstrale que puedes liberarte.',
				pt = 'Chaoz quer testar sua telecinese em um oponente de verdade na ilha do Torneio de Artes Marciais. Lute com ele e mostre que você consegue se libertar.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Chiaotzu|Chiaotzu]]',
				es = '[[Special:MyLanguage/Chiaotzu|Chaozu]]',
				pt = '[[Special:MyLanguage/Chiaotzu|Chaoz]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Classic Saga|Classic Saga]], quest 33: \'\'Tournament: Chiaotzu\'\'',
				},
				es = {
					'[[Special:MyLanguage/Classic Saga|Saga Clásica]], misión 33: \'\'Torneo: Chaozu\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Classic Saga|Saga Clássica]], missão 33: \'\'Torneio: Chaoz\'\'',
				},
			},
			objectives = {
				en = {
					'Spar with Chiaotzu and win without killing them (spawned by the quest, 1,300 health)',
					'Talk to [[Special:MyLanguage/Chiaotzu|Chiaotzu]]',
				},
				es = {
					'Entrena con Chaozu y gana sin matarlo (aparece con la misión, 1 300 de vida)',
					'Habla con [[Special:MyLanguage/Chiaotzu|Chaozu]]',
				},
				pt = {
					'Treine com Chaoz e vença sem matá-lo (surge com a missão, 1 300 de vida)',
					'Fale com [[Special:MyLanguage/Chiaotzu|Chaoz]]',
				},
			},
			rewards = {
				en = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'classic_jackie_chun_rematch',
			category = 'training',
			giver = 'roshi',
			turnin = 'roshi',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Jackie Chun\'s Rematch',
				es = 'La Revancha de Jackie Chun',
				pt = 'A Revanche de Jackie Chun',
			},
			desc = {
				en = 'A certain mysterious old man wants a rematch at full power. Defeat Jackie Chun and report back to Roshi.',
				es = 'Cierto anciano misterioso quiere una revancha con todo su poder. Derrota a Jackie Chun y vuelve con Roshi para contárselo.',
				pt = 'Um certo velho misterioso quer uma revanche com poder total. Derrote Jackie Chun e volte para falar com o Mestre Kame.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Master Roshi|Master Roshi]]',
				es = '[[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
				pt = '[[Special:MyLanguage/Master Roshi|Mestre Kame]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Classic Saga|Classic Saga]], quest 29: \'\'Baba\'s Fighters: Kid Goku\'\'',
				},
				es = {
					'[[Special:MyLanguage/Classic Saga|Saga Clásica]], misión 29: \'\'Luchadores de Baba: Goku Niño\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Classic Saga|Saga Clássica]], missão 29: \'\'Lutadores da Vovó Uranai: Goku Criança\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat Jackie Chun (Full Power) (spawned by the quest, 1,000 health)',
					'Talk to [[Special:MyLanguage/Master Roshi|Master Roshi]]',
				},
				es = {
					'Derrota a Jackie Chun (Poder Total) (aparece con la misión, 1 000 de vida)',
					'Habla con [[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
				},
				pt = {
					'Derrote Jackie Chun (Poder Total) (surge com a missão, 1 000 de vida)',
					'Fale com [[Special:MyLanguage/Master Roshi|Mestre Kame]]',
				},
			},
			rewards = {
				en = {
					'×7 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×7 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×7 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'daima_mini_goku',
			category = 'training',
			giver = '',
			turnin = '',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Pint-Sized Goku',
				es = 'Goku de Bolsillo',
				pt = 'Goku de Bolso',
			},
			desc = {
				en = 'Goku is still getting used to his small body and wants a sparring partner. Spar with Mini Goku in his base form.',
				es = 'Goku todavía se está acostumbrando a su cuerpo pequeño y quiere un compañero de entrenamiento. Entrena con Mini Goku en su forma base.',
				pt = 'Goku ainda está se acostumando com o corpo pequeno e quer um parceiro de treino. Treine com o Mini Goku na forma base.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Daima Saga|Daima Saga]], quest 6: \'\'Glorio\'s Test\'\'',
					'Be in [[Special:MyLanguage/Demon Realm|Demon Realm]]',
				},
				es = {
					'[[Special:MyLanguage/Daima Saga|Saga Daima]], misión 6: \'\'La Prueba de Glorio\'\'',
					'Estar en [[Special:MyLanguage/Demon Realm|Reino Demoníaco]]',
				},
				pt = {
					'[[Special:MyLanguage/Daima Saga|Saga Daima]], missão 6: \'\'O Teste de Glorio\'\'',
					'Estar em [[Special:MyLanguage/Demon Realm|Reino Demoníaco]]',
				},
			},
			objectives = {
				en = {
					'Spar with Goku (Mini) and win without killing them (spawned by the quest, 420,000 health)',
				},
				es = {
					'Entrena con Goku (Mini) y gana sin matarlo (aparece con la misión, 420 000 de vida)',
				},
				pt = {
					'Treine com Goku (Mini) e vença sem matá-lo (surge com a missão, 420 000 de vida)',
				},
			},
			rewards = {
				en = {
					'×85 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×85 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×85 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'daima_piccolo_training',
			category = 'training',
			giver = 'piccolo',
			turnin = 'piccolo',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Piccolo\'s Training',
				es = 'El Entrenamiento de Piccolo',
				pt = 'O Treino de Piccolo',
			},
			desc = {
				en = 'Before you leave Earth, Piccolo wants to see how strong you really are. Spar with him, then talk to him.',
				es = 'Antes de que te vayas de la Tierra, Piccolo quiere ver qué tan fuerte eres en realidad. Entrena con él y luego habla con él.',
				pt = 'Antes de você sair da Terra, Piccolo quer ver o quanto você é forte de verdade. Treine com ele e depois fale com ele.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				es = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				pt = '[[Special:MyLanguage/Piccolo|Piccolo]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Daima Saga|Daima Saga]], quest 2: \'\'Gomah\'s Wish\'\'',
					'Be in [[Special:MyLanguage/Earth|Earth]]',
				},
				es = {
					'[[Special:MyLanguage/Daima Saga|Saga Daima]], misión 2: \'\'El Deseo de Gomah\'\'',
					'Estar en [[Special:MyLanguage/Earth|Tierra]]',
				},
				pt = {
					'[[Special:MyLanguage/Daima Saga|Saga Daima]], missão 2: \'\'O Desejo de Gomah\'\'',
					'Estar em [[Special:MyLanguage/Earth|Terra]]',
				},
			},
			objectives = {
				en = {
					'Spar with Piccolo (Kami) and win without killing them (spawned by the quest, 300,000 health)',
					'Talk to [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				es = {
					'Entrena con Piccolo (Kami) y gana sin matarlo (aparece con la misión, 300 000 de vida)',
					'Habla con [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				pt = {
					'Treine com Piccolo (Kami) e vença sem matá-lo (surge com a missão, 300 000 de vida)',
					'Fale com [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
			},
			rewards = {
				en = {
					'×65 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×65 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×65 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'endurance_training',
			category = 'training',
			giver = 'roshi',
			turnin = 'roshi',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Endurance Training',
				es = 'Entrenamiento de Resistencia',
				pt = 'Treino de Resistência',
			},
			desc = {
				en = 'Roshi says true warriors must fight all kinds of enemies. Prove your endurance against tougher foes.',
				es = 'Roshi dice que los auténticos guerreros deben combatir todo tipo de enemigos. Demuestra tu resistencia contra rivales más duros.',
				pt = 'Kame diz que verdadeiros guerreiros devem lutar contra todo tipo de inimigo. Prove sua resistência contra inimigos mais fortes.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Master Roshi|Master Roshi]]',
				es = '[[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
				pt = '[[Special:MyLanguage/Master Roshi|Mestre Kame]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-roshi_basic_training|Roshi\'s Basic Training]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-roshi_basic_training|El Entrenamiento Básico de Roshi]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-roshi_basic_training|Treino Básico do Kame]]',
				},
			},
			objectives = {
				en = {
					'Defeat 15 × Skeleton',
					'Defeat 10 × Spider',
					'Talk to [[Special:MyLanguage/Master Roshi|Master Roshi]]',
				},
				es = {
					'Derrota a 15 × Esqueleto',
					'Derrota a 10 × Araña',
					'Habla con [[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
				},
				pt = {
					'Derrote 15 × Esqueleto',
					'Derrote 10 × Aranha',
					'Fale com [[Special:MyLanguage/Master Roshi|Mestre Kame]]',
				},
			},
			rewards = {
				en = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gohan_survival',
			category = 'training',
			giver = 'piccolo',
			turnin = 'gohan',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Gohan\'s Survival Kit',
				es = 'El Kit de Supervivencia de Gohan',
				pt = 'Kit de Sobrevivência de Gohan',
			},
			desc = {
				en = 'Piccolo left young Gohan alone in the wilderness to toughen him up. The boy could use some supplies — bring him food and a weapon.',
				es = 'Piccolo dejó al joven Gohan solo en la naturaleza para endurecerlo. El chico podría necesitar provisiones: llévale comida y un arma.',
				pt = 'Piccolo deixou o jovem Gohan sozinho na selva para endurecê-lo. O menino poderia usar alguns suprimentos. Leve-lhe comida e uma arma.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				es = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				pt = '[[Special:MyLanguage/Piccolo|Piccolo]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 3: \'\'Wilderness Training\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 3: \'\'Elimina a los Saibamen\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 3: \'\'Mate os Saibamen\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 16 × Steak',
					'Obtain 1 × Iron Sword',
					'Talk to [[Special:MyLanguage/Gohan|Gohan]]',
				},
				es = {
					'Consigue 16 × Filete asado',
					'Consigue 1 × Espada de hierro',
					'Habla con [[Special:MyLanguage/Gohan|Gohan]]',
				},
				pt = {
					'Obtenha 16 × Filé',
					'Obtenha 1 × Espada de Ferro',
					'Fale com [[Special:MyLanguage/Gohan|Gohan]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gohan_time_chamber_training',
			category = 'training',
			giver = 'gohan',
			turnin = 'gohan',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Gohan\'s Time Chamber Training',
				es = 'El Entrenamiento de Gohan en la Cámara del Tiempo',
				pt = 'Treino de Gohan na Sala do Tempo',
			},
			desc = {
				en = 'Gohan is training inside the Hyperbolic Time Chamber to unlock his hidden potential. Help him prepare by gathering supplies and clearing out phantom threats.',
				es = 'Gohan está entrenando dentro de la Cámara Hiperbólica del Tiempo para despertar su potencial oculto. Ayúdalo a prepararse consiguiendo provisiones y eliminando amenazas phantom.',
				pt = 'Gohan está treinando dentro da Sala do Tempo para desbloquear seu potencial oculto. Ajude-o a se preparar reunindo suprimentos e eliminando ameaças fantasmas.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Gohan|Gohan]]',
				es = '[[Special:MyLanguage/Gohan|Gohan]]',
				pt = '[[Special:MyLanguage/Gohan|Gohan]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 11: \'\'Semi-Perfect Cell\'\'',
					'Be at [[Special:MyLanguage/Hyperbolic Time Chamber|Hyperbolic Time Chamber]]',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 11: \'\'Cell Semi-Perfecto\'\'',
					'Estar en [[Special:MyLanguage/Hyperbolic Time Chamber|Cámara Hiperbólica del Tiempo]]',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 11: \'\'Cell Semi-Perfeito\'\'',
					'Estar em [[Special:MyLanguage/Hyperbolic Time Chamber|Sala do Tempo]]',
				},
			},
			objectives = {
				en = {
					'Defeat 20 × Phantom',
					'Obtain 8 × Golden Apple',
					'Talk to [[Special:MyLanguage/Gohan|Gohan]]',
				},
				es = {
					'Derrota a 20 × Fantasma',
					'Consigue 8 × Manzana dorada',
					'Habla con [[Special:MyLanguage/Gohan|Gohan]]',
				},
				pt = {
					'Derrote 20 × Espectro',
					'Obtenha 8 × Maçã Dourada',
					'Fale com [[Special:MyLanguage/Gohan|Gohan]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gravity_chamber',
			category = 'training',
			giver = 'goku',
			turnin = 'goku',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Gravity Chamber',
				es = 'Cámara de Gravedad',
				pt = 'Câmara de Gravidade',
			},
			desc = {
				en = 'You\'ve earned access to intense gravity training. Venture into dangerous territory and prove you can handle extreme conditions.',
				es = 'Te has ganado el acceso al entrenamiento de gravedad intensa. Adéntrate en territorio peligroso y demuestra que puedes con condiciones extremas.',
				pt = 'Você ganhou acesso ao treino de gravidade intensa. Aventure-se em território perigoso e prove que pode lidar com condições extremas.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Goku|Goku]]',
				es = '[[Special:MyLanguage/Goku|Goku]]',
				pt = '[[Special:MyLanguage/Goku|Goku]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-weighted_training|Weighted Training]]',
					'Level 10',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-weighted_training|Entrenamiento con Pesas]]',
					'Nivel 10',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-weighted_training|Treino com Pesos]]',
					'Nível 10',
				},
			},
			objectives = {
				en = {
					'Defeat 5 × Wither Skeleton',
					'Defeat 10 × Blaze',
					'Obtain 10 × Blaze Rod',
					'Talk to [[Special:MyLanguage/Goku|Goku]]',
				},
				es = {
					'Derrota a 5 × Esqueleto del Wither',
					'Derrota a 10 × Blaze',
					'Consigue 10 × Vara de blaze',
					'Habla con [[Special:MyLanguage/Goku|Goku]]',
				},
				pt = {
					'Derrote 5 × Esqueleto Wither',
					'Derrote 10 × Blaze',
					'Obtenha 10 × Vara de Blaze',
					'Fale com [[Special:MyLanguage/Goku|Goku]]',
				},
			},
			rewards = {
				en = {
					'×10 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×10 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×10 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gt_pan_sparring',
			category = 'training',
			giver = 'gohan',
			turnin = 'gohan',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Pan Wants to Train',
				es = 'Pan Quiere Entrenar',
				pt = 'Pan Quer Treinar',
			},
			desc = {
				en = 'Pan refuses to be left behind again. Spar with her, then report back to Gohan.',
				es = 'Pan se niega a quedarse atrás otra vez. Entrena con ella y luego infórmale a Gohan.',
				pt = 'Pan se recusa a ficar para trás de novo. Treine com ela e depois volte para falar com Gohan.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Gohan|Gohan]]',
				es = '[[Special:MyLanguage/Gohan|Gohan]]',
				pt = '[[Special:MyLanguage/Gohan|Gohan]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/GT Saga|GT Saga]], quest 30: \'\'Super 17 Returns\'\'',
				},
				es = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], misión 30: \'\'El Regreso de Super 17\'\'',
				},
				pt = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], missão 30: \'\'Super 17 Retorna\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat Pan (spawned by the quest, 767,000 health)',
					'Talk to [[Special:MyLanguage/Gohan|Gohan]]',
				},
				es = {
					'Derrota a Pan (aparece con la misión, 767 000 de vida)',
					'Habla con [[Special:MyLanguage/Gohan|Gohan]]',
				},
				pt = {
					'Derrote Pan (surge com a missão, 767 000 de vida)',
					'Fale com [[Special:MyLanguage/Gohan|Gohan]]',
				},
			},
			rewards = {
				en = {
					'×120 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×120 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×120 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'kaiosama_buu_warning',
			category = 'training',
			giver = 'kingkai',
			turnin = 'kingkai',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Kaiosama\'s Warning',
				es = 'La Advertencia del Kaiosama',
				pt = 'Aviso de Kaiosama',
			},
			desc = {
				en = 'King Kai senses a sleeping evil behind the tournament. Speak with him before Babidi\'s plan reaches Earth.',
				es = 'Kaiosama percibe un mal dormido detrás del torneo. Habla con él antes de que el plan de Babidi llegue a la Tierra.',
				pt = 'O Rei Kai sente um mal adormecido por trás do torneio. Fale com ele antes que o plano de Babidi alcance a Terra.',
			},
			giverText = {
				en = '[[Special:MyLanguage/King Kai|King Kai]]',
				es = '[[Special:MyLanguage/King Kai|Kaiosama]]',
				pt = '[[Special:MyLanguage/King Kai|Rei Kai]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 1: \'\'Train with Goten and Gohan\'\'',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 1: \'\'Entrena con Goten y Gohan\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 1: \'\'Treine com Goten e Gohan\'\'',
				},
			},
			objectives = {
				en = {
					'Talk to [[Special:MyLanguage/King Kai|King Kai]]',
				},
				es = {
					'Habla con [[Special:MyLanguage/King Kai|Kaiosama]]',
				},
				pt = {
					'Fale com [[Special:MyLanguage/King Kai|Rei Kai]]',
				},
			},
			rewards = {
				en = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'krillin_sparring',
			category = 'training',
			giver = 'krillin',
			turnin = 'krillin',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Krillin\'s Sparring Match',
				es = 'Combate de Práctica con Krilin',
				pt = 'Treino de Luta com Kuririn',
			},
			desc = {
				en = 'Krillin wants a sparring partner to prepare for the incoming Saiyan threat. Show him you can hold your own against the local monsters.',
				es = 'Krilin quiere un compañero de práctica para prepararse ante la amenaza Saiyajin inminente. Demuéstrale que puedes aguantar contra los monstruos locales.',
				pt = 'Kuririn quer um parceiro de treino para se preparar para a ameaça Saiyajin que se aproxima. Mostre a ele que você pode se defender contra os monstros locais.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Krillin|Krillin]]',
				es = '[[Special:MyLanguage/Krillin|Krilin]]',
				pt = '[[Special:MyLanguage/Krillin|Kuririn]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 1: \'\'Defeat Raditz\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 1: \'\'Derrota a Raditz\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 1: \'\'Derrote Raditz\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 10 × Zombie',
					'Defeat 5 × Skeleton',
					'Talk to [[Special:MyLanguage/Krillin|Krillin]]',
				},
				es = {
					'Derrota a 10 × Zombi',
					'Derrota a 5 × Esqueleto',
					'Habla con [[Special:MyLanguage/Krillin|Krilin]]',
				},
				pt = {
					'Derrote 10 × Zumbi',
					'Derrote 5 × Esqueleto',
					'Fale com [[Special:MyLanguage/Krillin|Kuririn]]',
				},
			},
			rewards = {
				en = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'mr_satan_train_the_champ',
			category = 'training',
			giver = 'mr_satan',
			turnin = 'mr_satan',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Train the Champ',
				es = 'Entrena al Campeón',
				pt = 'Treine o Campeão',
			},
			desc = {
				en = 'Mr. Satan insists on a training session to "help you improve". Spar with the World Champion... and try not to embarrass him in front of the crowd.',
				es = 'El Sr. Satán insiste en una sesión de entrenamiento para "ayudarte a mejorar". Combate con el Campeón Mundial... e intenta no avergonzarlo frente al público.',
				pt = 'O Mr. Satan insiste em uma sessão de treino para "ajudar você a melhorar". Lute com o Campeão Mundial... e tente não envergonhá-lo na frente do público.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				es = '[[Special:MyLanguage/Mr. Satan|Sr. Satán]]',
				pt = '[[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 37: \'\'Tournament Preliminaries\'\'',
					'Complete [[Special:MyLanguage/Sidequests#sq-mr_satan_peace_offering|A Peace Offering]]',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 37: \'\'Preliminares del Torneo\'\'',
					'Completa [[Special:MyLanguage/Sidequests#sq-mr_satan_peace_offering|Una Ofrenda de Paz]]',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 37: \'\'Eliminatórias do Torneio\'\'',
					'Conclua [[Special:MyLanguage/Sidequests#sq-mr_satan_peace_offering|Uma Oferta de Paz]]',
				},
			},
			objectives = {
				en = {
					'Spar with Mr. Satan and win without killing them (spawned by the quest, 90,000 health)',
					'Talk to [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				},
				es = {
					'Entrena con Sr. Satán y gana sin matarlo (aparece con la misión, 90 000 de vida)',
					'Habla con [[Special:MyLanguage/Mr. Satan|Sr. Satán]]',
				},
				pt = {
					'Treine com Mr. Satan e vença sem matá-lo (surge com a missão, 90 000 de vida)',
					'Fale com [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'old_kai_ritual',
			category = 'training',
			giver = 'kingkai',
			turnin = 'kingkai',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Old Kai\'s Ritual',
				es = 'El Ritual del Kaioshin Anciano',
				pt = 'Ritual do Velho Kaioshin',
			},
			desc = {
				en = 'The Z Sword has revealed a stranger path to hidden power. Bring the sword to the sacred village, speak with King Kai, and complete the ritual to awaken your ultimate potential.',
				es = 'La Espada-Z ha revelado un camino insólito hacia el poder oculto. Lleva la espada al pueblo sagrado, habla con Kaiosama y completa el ritual para despertar tu potencial definitivo.',
				pt = 'A Espada Z revelou um caminho estranho para o poder oculto. Leve a espada para a vila sagrada, fale com o Rei Kai e complete o ritual para despertar seu potencial máximo.',
			},
			giverText = {
				en = '[[Special:MyLanguage/King Kai|King Kai]]',
				es = '[[Special:MyLanguage/King Kai|Kaiosama]]',
				pt = '[[Special:MyLanguage/King Kai|Rei Kai]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 23: \'\'Gotenks at Full Power\'\'',
					'Be in a Sacred Kai Plains biome',
					'[[Special:MyLanguage/Ultimate|Ultimate]] level 1 or higher',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 23: \'\'Gotenks a Plena Potencia\'\'',
					'Estar en un bioma de Llanuras Sagradas de los Kaioshins',
					'[[Special:MyLanguage/Ultimate|Definitivo]] al nivel 1 o más',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 23: \'\'Gotenks no Poder Total\'\'',
					'Estar em um bioma de Planícies Sagradas dos Kai',
					'[[Special:MyLanguage/Ultimate|Ultimate]] no nível 1 ou mais',
				},
			},
			objectives = {
				en = {
					'Obtain 1 × [[Special:MyLanguage/Z Sword|Z-Sword]]',
					'Talk to [[Special:MyLanguage/Old Kai|Old Kai]]',
				},
				es = {
					'Consigue 1 × [[Special:MyLanguage/Z Sword|Espada-Z]]',
					'Habla con [[Special:MyLanguage/Old Kai|Kaioshin Anciano]]',
				},
				pt = {
					'Obtenha 1 × [[Special:MyLanguage/Z Sword|Z-Espada]]',
					'Fale com [[Special:MyLanguage/Old Kai|Velho Kaioshin]]',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'piccolo_wilderness_survival',
			category = 'training',
			giver = 'piccolo',
			turnin = 'piccolo',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Wilderness Survival',
				es = 'Supervivencia en la Naturaleza',
				pt = 'Sobrevivência na Selva',
			},
			desc = {
				en = 'Piccolo believes in training through pure survival. Venture into the forest and prove your combat skills against waves of hostile creatures.',
				es = 'Piccolo cree en el entrenamiento a través de la pura supervivencia. Adéntrate en el bosque y demuestra tus habilidades de combate contra oleadas de criaturas hostiles.',
				pt = 'Piccolo acredita em treinar através da sobrevivência pura. Aventure-se na floresta e prove suas habilidades de combate contra ondas de criaturas hostis.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				es = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				pt = '[[Special:MyLanguage/Piccolo|Piccolo]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 9: \'\'Hold Against Nappa\'\'',
					'Be in a Forest biome',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 9: \'\'Aguanta contra Nappa\'\'',
					'Estar en un bioma de Bosque',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 9: \'\'Resista Contra Nappa\'\'',
					'Estar em um bioma de Floresta',
				},
			},
			objectives = {
				en = {
					'Defeat 20 × Zombie',
					'Defeat 10 × Skeleton',
					'Defeat 5 × Creeper',
					'Talk to [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				es = {
					'Derrota a 20 × Zombi',
					'Derrota a 10 × Esqueleto',
					'Derrota a 5 × Creeper',
					'Habla con [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				pt = {
					'Derrote 20 × Zumbi',
					'Derrote 10 × Esqueleto',
					'Derrote 5 × Creeper',
					'Fale com [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
			},
			rewards = {
				en = {
					'×10 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×10 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×10 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'roshi_basic_training',
			category = 'training',
			giver = 'roshi',
			turnin = 'roshi',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Roshi\'s Basic Training',
				es = 'El Entrenamiento Básico de Roshi',
				pt = 'Treino Básico do Kame',
			},
			desc = {
				en = 'Master Roshi has agreed to train you, but first you must prove your worth. Find Kame House and show your combat skills.',
				es = 'El Maestro Roshi ha accedido a entrenarte, pero primero debes demostrar tu valía. Encuentra la Casa Kame y muestra tus habilidades en combate.',
				pt = 'O Mestre Kame concordou em treiná-lo, mas primeiro você deve provar seu valor. Encontre a Casa do Kame e mostre suas habilidades de combate.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Master Roshi|Master Roshi]]',
				es = '[[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
				pt = '[[Special:MyLanguage/Master Roshi|Mestre Kame]]',
			},
			unlock = {
				en = {},
				es = {},
				pt = {},
			},
			objectives = {
				en = {
					'Defeat 10 × Zombie',
					'Talk to [[Special:MyLanguage/Master Roshi|Master Roshi]]',
				},
				es = {
					'Derrota a 10 × Zombi',
					'Habla con [[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
				},
				pt = {
					'Derrote 10 × Zumbi',
					'Fale com [[Special:MyLanguage/Master Roshi|Mestre Kame]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'specialized_training',
			category = 'training',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Specialized Training',
				es = 'Entrenamiento Especializado',
				pt = 'Treino Especializado',
			},
			desc = {
				en = 'Bulma needs some items for her top-secret and very interesting training, bring her what she needs.',
				es = 'Bulma necesita algunos artículos para su entrenamiento de alto secreto y muy interesante, trae lo que necesita.',
				pt = 'A Bulma precisa de alguns itens para seu treino secreto e muito interessante. Traga o que ela precisa.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-gravity_chamber|Gravity Chamber]]',
					'Level 15',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-gravity_chamber|Cámara de Gravedad]]',
					'Nivel 15',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-gravity_chamber|Câmara de Gravidade]]',
					'Nível 15',
				},
			},
			objectives = {
				en = {
					'Obtain 20 × Diamond',
					'Obtain 20 × Obsidian',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 20 × Diamante',
					'Consigue 20 × Obsidiana',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 20 × Diamante',
					'Obtenha 20 × Obsidiana',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×8 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'16 × Ender Pearl',
				},
				es = {
					'×8 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'16 × Perla de ender',
				},
				pt = {
					'×8 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'16 × Pérola de Ender',
				},
			},
		},
		{
			id = 'tien_mountain_training',
			category = 'training',
			giver = 'krillin',
			turnin = 'krillin',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Mountain Training',
				es = 'Entrenamiento en la Montaña',
				pt = 'Treino na Montanha',
			},
			desc = {
				en = 'Krillin invites you to train in the harsh mountains. Only by facing powerful foes in extreme terrain can you prepare for the Saiyans.',
				es = 'Krilin te invita a entrenar en las duras montañas. Solo enfrentándote a enemigos poderosos en terreno extremo podrás prepararte para los Saiyajins.',
				pt = 'Kuririn te convida para treinar nas montanhas severas. Só enfrentando inimigos poderosos em terreno extremo você pode se preparar para os Saiyajins.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Krillin|Krillin]]',
				es = '[[Special:MyLanguage/Krillin|Krilin]]',
				pt = '[[Special:MyLanguage/Krillin|Kuririn]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 9: \'\'Hold Against Nappa\'\'',
					'Be in any mountain biome',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 9: \'\'Aguanta contra Nappa\'\'',
					'Estar en cualquier bioma de montaña',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 9: \'\'Resista Contra Nappa\'\'',
					'Estar em qualquer bioma de montanha',
				},
			},
			objectives = {
				en = {
					'Defeat 5 × Iron Golem',
					'Talk to [[Special:MyLanguage/Krillin|Krillin]]',
				},
				es = {
					'Derrota a 5 × Gólem de hierro',
					'Habla con [[Special:MyLanguage/Krillin|Krilin]]',
				},
				pt = {
					'Derrote 5 × Golem de Ferro',
					'Fale com [[Special:MyLanguage/Krillin|Kuririn]]',
				},
			},
			rewards = {
				en = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'vegeta_pride_training',
			category = 'training',
			giver = 'vegeta',
			turnin = 'vegeta',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Vegeta\'s Pride Training',
				es = 'El Entrenamiento del Orgullo de Vegeta',
				pt = 'Treino do Orgulho de Vegeta',
			},
			desc = {
				en = 'Vegeta demands you keep up with his training regimen. Enter the Hyperbolic Time Chamber and fight the deadliest enemies to prove you\'re worthy of a Saiyan\'s respect.',
				es = 'Vegeta exige que sigas su régimen de entrenamiento. Entra a la Cámara Hiperbólica del Tiempo y combate a los enemigos más letales para demostrar que eres digno del respeto de un Saiyajin.',
				pt = 'Vegeta exige que você acompanhe seu regime de treino. Entre na Sala do Tempo e enfrente os inimigos mais mortais para provar que é digno do respeito de um Saiyajin.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Vegeta|Vegeta]]',
				es = '[[Special:MyLanguage/Vegeta|Vegeta]]',
				pt = '[[Special:MyLanguage/Vegeta|Vegeta]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 12: \'\'Beyond Super Saiyan\'\'',
					'Be at [[Special:MyLanguage/Hyperbolic Time Chamber|Hyperbolic Time Chamber]]',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 12: \'\'Más allá del Super Saiyajin\'\'',
					'Estar en [[Special:MyLanguage/Hyperbolic Time Chamber|Cámara Hiperbólica del Tiempo]]',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 12: \'\'Além do Super Saiyajin\'\'',
					'Estar em [[Special:MyLanguage/Hyperbolic Time Chamber|Sala do Tempo]]',
				},
			},
			objectives = {
				en = {
					'Defeat 10 × Wither Skeleton',
					'Defeat 5 × Blaze',
					'Talk to [[Special:MyLanguage/Vegeta|Vegeta]]',
				},
				es = {
					'Derrota a 10 × Esqueleto del Wither',
					'Derrota a 5 × Blaze',
					'Habla con [[Special:MyLanguage/Vegeta|Vegeta]]',
				},
				pt = {
					'Derrote 10 × Esqueleto Wither',
					'Derrote 5 × Blaze',
					'Fale com [[Special:MyLanguage/Vegeta|Vegeta]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'weighted_training',
			category = 'training',
			giver = 'roshi',
			turnin = 'roshi',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Weighted Training',
				es = 'Entrenamiento con Pesas',
				pt = 'Treino com Pesos',
			},
			desc = {
				en = 'It\'s time to train with weighted gear. Defeat powerful foes and gather materials for your training equipment.',
				es = 'Ha llegado el momento de entrenar con equipo con pesas. Derrota a enemigos poderosos y recoge materiales para tu equipo de entrenamiento.',
				pt = 'É hora de treinar com equipamento com peso. Derrote inimigos poderosos e reúna materiais para seu equipamento de treino.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Master Roshi|Master Roshi]]',
				es = '[[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
				pt = '[[Special:MyLanguage/Master Roshi|Mestre Kame]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-endurance_training|Endurance Training]]',
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 3: \'\'Wilderness Training\'\'',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-endurance_training|Entrenamiento de Resistencia]]',
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 3: \'\'Elimina a los Saibamen\'\'',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-endurance_training|Treino de Resistência]]',
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 3: \'\'Mate os Saibamen\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 3 × Iron Golem',
					'Obtain 32 × Iron Ingot',
					'Talk to [[Special:MyLanguage/Master Roshi|Master Roshi]]',
				},
				es = {
					'Derrota a 3 × Gólem de hierro',
					'Consigue 32 × Lingote de hierro',
					'Habla con [[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
				},
				pt = {
					'Derrote 3 × Golem de Ferro',
					'Obtenha 32 × Lingote de Ferro',
					'Fale com [[Special:MyLanguage/Master Roshi|Mestre Kame]]',
				},
			},
			rewards = {
				en = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'5 × Golden Apple',
				},
				es = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'5 × Manzana dorada',
				},
				pt = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'5 × Maçã Dourada',
				},
			},
		},
		{
			id = 'bulma_time_chamber_diagnostics',
			category = 'exploration',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Chamber Diagnostics',
				es = 'Diagnóstico de la Cámara',
				pt = 'Diagnóstico da Sala',
			},
			desc = {
				en = 'Run diagnostics on the Time Chamber for Bulma — visit it and bring redstone and diamonds.',
				es = 'Realiza diagnósticos en la Cámara del Tiempo para Bulma: visítala y lleva piedra roja y diamantes.',
				pt = 'Execute um diagnóstico da Sala do Tempo para a Bulma — visite-a e traga redstone e diamantes.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 10: \'\'Cell Emerges\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 10: \'\'Aparece Cell\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 10: \'\'Cell Surge\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Hyperbolic Time Chamber|Hyperbolic Time Chamber]]',
					'Obtain 20 × Redstone Dust',
					'Obtain 8 × Diamond',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Hyperbolic Time Chamber|Cámara Hiperbólica del Tiempo]]',
					'Consigue 20 × Polvo de redstone',
					'Consigue 8 × Diamante',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Hyperbolic Time Chamber|Sala do Tempo]]',
					'Obtenha 20 × Pó de Redstone',
					'Obtenha 8 × Diamante',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'buu_hide_and_seek',
			category = 'exploration',
			giver = 'gohan',
			turnin = 'gohan',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Hide and Seek',
				es = 'Las Escondidas',
				pt = 'Esconde-Esconde',
			},
			desc = {
				en = 'Goten and Trunks have run off to play. Search a dark forest, a jungle and the badlands, then tell Gohan you found them.',
				es = 'Goten y Trunks se escaparon a jugar. Busca en un bosque oscuro, una jungla y unas tierras baldías, y luego dile a Gohan que los encontraste.',
				pt = 'Goten e Trunks fugiram para brincar. Procure em uma floresta escura, em uma selva e nas terras áridas, e depois avise Gohan que você os encontrou.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Gohan|Gohan]]',
				es = '[[Special:MyLanguage/Gohan|Gohan]]',
				pt = '[[Special:MyLanguage/Gohan|Gohan]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 6: \'\'Tournament: Trunks\'\'',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 6: \'\'Torneo: Trunks\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 6: \'\'Torneio: Trunks\'\'',
				},
			},
			objectives = {
				en = {
					'Go to a Dark Forest biome',
					'Go to a Jungle biome',
					'Go to a Badlands biome',
					'Talk to [[Special:MyLanguage/Gohan|Gohan]]',
				},
				es = {
					'Ve a un bioma de Bosque oscuro',
					'Ve a un bioma de Jungla',
					'Ve a un bioma de Tierras baldías',
					'Habla con [[Special:MyLanguage/Gohan|Gohan]]',
				},
				pt = {
					'Vá para um bioma de Floresta escura',
					'Vá para um bioma de Selva',
					'Vá para um bioma de Terras áridas',
					'Fale com [[Special:MyLanguage/Gohan|Gohan]]',
				},
			},
			rewards = {
				en = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'earth_landmarks',
			category = 'exploration',
			giver = '',
			turnin = '',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Earth Landmarks',
				es = 'Hitos de la Tierra',
				pt = 'Marcos da Terra',
			},
			desc = {
				en = 'Survey Earth\'s most important martial arts landmarks: Kame House, Goku\'s House, and Kami\'s Lookout.',
				es = 'Recorre los enclaves de artes marciales más importantes de la Tierra: la Casa Kame, la Casa de Goku y la Atalaya de Kami.',
				pt = 'Levante os marcos mais importantes de artes marciais da Terra: Casa do Kame, Casa de Goku e Mirante de Kami.',
			},
			giverText = nil,
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-world_explorer|World Explorer]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-world_explorer|Explorador del Mundo]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-world_explorer|Explorador Mundial]]',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Kame House|Kame House]]',
					'Find [[Special:MyLanguage/Goku\'s House|Goku\'s House]]',
					'Find [[Special:MyLanguage/Kami\'s Lookout|Kami\'s Lookout]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Kame House|Kame House]]',
					'Encuentra [[Special:MyLanguage/Goku\'s House|Casa de Goku]]',
					'Encuentra [[Special:MyLanguage/Kami\'s Lookout|Atalaya de Kami]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Kame House|Casa do Kame]]',
					'Encontre [[Special:MyLanguage/Goku\'s House|Casa do Goku]]',
					'Encontre [[Special:MyLanguage/Kami\'s Lookout|Mirante de Kami]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'frieza_namek_survey',
			category = 'exploration',
			giver = '',
			turnin = '',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Survey of Namek',
				es = 'Estudio de Namek',
				pt = 'Levantamento de Namekusei',
			},
			desc = {
				en = 'Learn the lay of the land on Namek: visit the Namekian rivers, the Ajissa Plains and the ruins of a village.',
				es = 'Conoce el terreno de Namek: visita los ríos namekianos, las Llanuras de Ajissa y las ruinas de una aldea.',
				pt = 'Conheça o terreno de Namekusei: visite os rios namekuseijins, as Planícies de Ajissa e as ruínas de uma vila.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 17: \'\'The Ruined Village\'\'',
					'Be in [[Special:MyLanguage/Namek|Namek]]',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 17: \'\'La Aldea en Ruinas\'\'',
					'Estar en [[Special:MyLanguage/Namek|Namek]]',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 17: \'\'A Vila em Ruínas\'\'',
					'Estar em [[Special:MyLanguage/Namek|Namekusei]]',
				},
			},
			objectives = {
				en = {
					'Go to a Namekian Rivers biome',
					'Go to a Ajissa Plains biome',
					'Find [[Special:MyLanguage/Namekian Ruins|Namekian Ruins]]',
				},
				es = {
					'Ve a un bioma de Ríos namekianos',
					'Ve a un bioma de Llanuras de Ajissa',
					'Encuentra [[Special:MyLanguage/Namekian Ruins|Ruinas namekianas]]',
				},
				pt = {
					'Vá para um bioma de Rios namekuseijins',
					'Vá para um bioma de Planícies de Ajissa',
					'Encontre [[Special:MyLanguage/Namekian Ruins|Ruínas namekuseijins]]',
				},
			},
			rewards = {
				en = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gt_haze_pollution',
			category = 'exploration',
			giver = '',
			turnin = '',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Haze\'s Smog',
				es = 'El Smog de Haze',
				pt = 'A Fumaça de Haze',
			},
			desc = {
				en = 'Liang Xing Long\'s poison lingers in the swamps. Clear out the slimes breeding in the smog and bring back lily pads to prove the water is clean.',
				es = 'El veneno de Liang Xing Long sigue en los pantanos. Acaba con los slimes que se reproducen en el smog y trae nenúfares para demostrar que el agua está limpia.',
				pt = 'O veneno de Liang Xing Long continua nos pântanos. Acabe com os slimes que se multiplicam na fumaça tóxica e traga vitórias-régias para provar que a água está limpa.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/GT Saga|GT Saga]], quest 32: \'\'The Two-Star Dragon\'\'',
				},
				es = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], misión 32: \'\'El Dragón de Dos Estrellas\'\'',
				},
				pt = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], missão 32: \'\'O Dragão de Duas Estrelas\'\'',
				},
			},
			objectives = {
				en = {
					'Go to a Swamp biome',
					'Defeat 10 × Slime',
					'Obtain 8 × Lily Pad',
				},
				es = {
					'Ve a un bioma de Pantano',
					'Derrota a 10 × Slime',
					'Consigue 8 × Nenúfar',
				},
				pt = {
					'Vá para um bioma de Pântano',
					'Derrote 10 × Slime',
					'Obtenha 8 × Vitória-Régia',
				},
			},
			rewards = {
				en = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'krillin_namek_scout',
			category = 'exploration',
			giver = 'krillin',
			turnin = 'krillin',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Namek Reconnaissance',
				es = 'Reconocimiento de Namek',
				pt = 'Reconhecimento em Namek',
			},
			desc = {
				en = 'Krillin asks you to scout the Ajissa Plains for safe routes through Frieza\'s territory. Find a Namekian village and report back.',
				es = 'Krilin te pide que explores las Llanuras de Ajissa en busca de rutas seguras por el territorio de Freezer. Encuentra una aldea Namekiana e informa.',
				pt = 'Kuririn pede que você explore as Planícies Ajissa para encontrar rotas seguras pelo território de Freeza. Encontre uma vila Namekuseijin e volte com o relatório.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Krillin|Krillin]]',
				es = '[[Special:MyLanguage/Krillin|Krilin]]',
				pt = '[[Special:MyLanguage/Krillin|Kuririn]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 2: \'\'Cui\'s Pursuit\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 2: \'\'La Persecución de Cui\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 2: \'\'Perseguição de Cui\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Namekian Village|Namekian Village]]',
					'Talk to [[Special:MyLanguage/Krillin|Krillin]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Namekian Village|Aldea namekiana]]',
					'Habla con [[Special:MyLanguage/Krillin|Krilin]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Namekian Village|Vila namekuseijin]]',
					'Fale com [[Special:MyLanguage/Krillin|Kuririn]]',
				},
			},
			rewards = {
				en = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'namek_explorer',
			category = 'exploration',
			giver = '',
			turnin = '',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Namek Explorer',
				es = 'Explorador de Namek',
				pt = 'Explorador de Namek',
			},
			desc = {
				en = 'You\'ve reached Namek! Explore this alien world and discover the villages of the Namekian people.',
				es = '¡Has llegado a Namek! Explora este mundo alienígena y descubre las aldeas del pueblo Namekiano.',
				pt = 'Você chegou a Namek! Explore este mundo alienígena e descubra as aldeias do povo Namekuseijin.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 16: \'\'Head to Namek\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 16: \'\'Rumbo a Namek\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 16: \'\'Siga para Namek\'\'',
				},
			},
			objectives = {
				en = {
					'Go to a Ajissa Plains biome',
					'Find [[Special:MyLanguage/Namekian Village|Namekian Village]]',
				},
				es = {
					'Ve a un bioma de Llanuras de Ajissa',
					'Encuentra [[Special:MyLanguage/Namekian Village|Aldea namekiana]]',
				},
				pt = {
					'Vá para um bioma de Planícies de Ajissa',
					'Encontre [[Special:MyLanguage/Namekian Village|Vila namekuseijin]]',
				},
			},
			rewards = {
				en = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'namek_farewell',
			category = 'exploration',
			giver = 'guru',
			turnin = 'guru',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Namek\'s Farewell',
				es = 'El Adiós de Namek',
				pt = 'Despedida de Namek',
			},
			desc = {
				en = 'Before Namek\'s fate is sealed, Guru asks you to visit the Sacred Lands one last time and pay your respects to this dying world.',
				es = 'Antes de que el destino de Namek quede sellado, Gurú te pide que visites las Tierras Sagradas por última vez y rindas homenaje a este mundo que agoniza.',
				pt = 'Antes que o destino de Namek se concretize, Guru pede que você visite as Terras Sagradas pela última vez e preste suas homenagens a este mundo moribundo.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
				es = '[[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
				pt = '[[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 15: \'\'100% Full Power\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 15: \'\'100% de Poder Total\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 15: \'\'100% Poder Total\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Sacred Kai Planet|Sacred Kai Planet]]',
					'Talk to [[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Sacred Kai Planet|Planeta Sagrado de los Kaioshins]]',
					'Habla con [[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Sacred Kai Planet|Mundo Sagrado dos Kai]]',
					'Fale com [[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
				},
			},
			rewards = {
				en = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'piccolo_kami_fusion',
			category = 'exploration',
			giver = 'piccolo',
			turnin = 'piccolo',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Piccolo\'s Resolve',
				es = 'La Resolución de Piccolo',
				pt = 'Determinação de Piccolo',
			},
			desc = {
				en = 'Piccolo contemplates fusing with Kami to gain the power needed to fight the Androids. Visit Kami\'s Lookout and help him find the clarity he needs.',
				es = 'Piccolo contempla fusionarse con Kami para obtener el poder necesario para luchar contra los Androides. Visita la Atalaya de Kami y ayúdalo a encontrar la claridad que necesita.',
				pt = 'Piccolo considera se fundir com Kami para obter o poder necessário para lutar contra os Androides. Visite o Mirante de Kami e o ajude a encontrar a clareza que ele precisa.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				es = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				pt = '[[Special:MyLanguage/Piccolo|Piccolo]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 10: \'\'Cell Emerges\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 10: \'\'Aparece Cell\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 10: \'\'Cell Surge\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Kami\'s Lookout|Kami\'s Lookout]]',
					'Talk to [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Kami\'s Lookout|Atalaya de Kami]]',
					'Habla con [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Kami\'s Lookout|Mirante de Kami]]',
					'Fale com [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
			},
			rewards = {
				en = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'sacred_lands',
			category = 'exploration',
			giver = '',
			turnin = '',
			ordered = true,
			repeatable = false,
			name = {
				en = 'The Sacred Lands',
				es = 'Las Tierras Sagradas',
				pt = 'As Terras Sagradas',
			},
			desc = {
				en = 'The Namekian elders speak of a sacred village hidden on this world. Find it and uncover its secrets.',
				es = 'Los ancianos Namekianos hablan de un pueblo sagrado oculto en este mundo. Encuéntralo y desvela sus secretos.',
				pt = 'Os anciãos Namekuseijins falam de uma vila sagrada escondida neste mundo. Encontre-a e descubra seus segredos.',
			},
			giverText = nil,
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-namek_explorer|Namek Explorer]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-namek_explorer|Explorador de Namek]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-namek_explorer|Explorador de Namek]]',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Sacred Kai Planet|Sacred Kai Planet]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Sacred Kai Planet|Planeta Sagrado de los Kaioshins]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Sacred Kai Planet|Mundo Sagrado dos Kai]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'trunks_warning',
			category = 'exploration',
			giver = 'trunks',
			turnin = 'trunks',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Trunks\' Warning',
				es = 'La Advertencia de Trunks',
				pt = 'Aviso de Trunks',
			},
			desc = {
				en = 'A mysterious warrior from the future warns you about the Android threat. Investigate Dr. Gero\'s laboratory to uncover his plans before it\'s too late.',
				es = 'Un misterioso guerrero del futuro te advierte sobre la amenaza Androide. Investiga el laboratorio del Dr. Gero para descubrir sus planes antes de que sea demasiado tarde.',
				pt = 'Um misterioso guerreiro do futuro o avisa sobre a ameaça dos Androides. Investigue o laboratório do Dr. Gero para descobrir seus planos antes que seja tarde.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Trunks|Trunks]]',
				es = '[[Special:MyLanguage/Trunks|Trunks]]',
				pt = '[[Special:MyLanguage/Trunks|Trunks]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 3: \'\'Warning from the Future\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 3: \'\'Advertencia del Futuro\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 3: \'\'Aviso do Futuro\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Dr. Gero\'s Lab|Dr. Gero\'s Lab]]',
					'Talk to [[Special:MyLanguage/Trunks|Trunks]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Dr. Gero\'s Lab|Laboratorio del Dr. Gero]]',
					'Habla con [[Special:MyLanguage/Trunks|Trunks]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Dr. Gero\'s Lab|Laboratório do Dr. Gero]]',
					'Fale com [[Special:MyLanguage/Trunks|Trunks]]',
				},
			},
			rewards = {
				en = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'world_explorer',
			category = 'exploration',
			giver = '',
			turnin = '',
			ordered = false,
			repeatable = false,
			name = {
				en = 'World Explorer',
				es = 'Explorador del Mundo',
				pt = 'Explorador Mundial',
			},
			desc = {
				en = 'A warrior must know the land they protect. Explore the different biomes of the world.',
				es = 'Un guerrero debe conocer la tierra que protege. Explora los diferentes biomas del mundo.',
				pt = 'Um guerreiro deve conhecer a terra que protege. Explore os diferentes biomas do mundo.',
			},
			giverText = nil,
			unlock = {
				en = {},
				es = {},
				pt = {},
			},
			objectives = {
				en = {
					'Go to any plains biome',
					'Go to a Desert biome',
					'Go to a Forest biome',
				},
				es = {
					'Ve a cualquier bioma de llanuras',
					'Ve a un bioma de Desierto',
					'Ve a un bioma de Bosque',
				},
				pt = {
					'Vá para qualquer bioma de planícies',
					'Vá para um bioma de Deserto',
					'Vá para um bioma de Floresta',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'android_red_ribbon_remnants',
			category = 'combat',
			giver = '',
			turnin = '',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Red Ribbon Remnants',
				es = 'Restos de la Patrulla Roja',
				pt = 'Remanescentes da Red Ribbon',
			},
			desc = {
				en = 'Gero\'s lab still has old Red Ribbon combat robots on standby. Destroy them before they wake up.',
				es = 'El laboratorio de Gero todavía tiene viejos robots de combate de la Patrulla Roja en espera. Destrúyelos antes de que despierten.',
				pt = 'O laboratório de Gero ainda tem velhos robôs de combate da Red Ribbon em espera. Destrua-os antes que acordem.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 5: \'\'Android 19\'\'',
					'Be at [[Special:MyLanguage/Dr. Gero\'s Lab|Dr. Gero\'s Lab]]',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 5: \'\'Androide 19\'\'',
					'Estar en [[Special:MyLanguage/Dr. Gero\'s Lab|Laboratorio del Dr. Gero]]',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 5: \'\'Androide 19\'\'',
					'Estar em [[Special:MyLanguage/Dr. Gero\'s Lab|Laboratório do Dr. Gero]]',
				},
			},
			objectives = {
				en = {
					'Defeat 4 × General Black\'s Robot (spawned by the quest, 40,000 health)',
				},
				es = {
					'Derrota a 4 × Robot del General Black (aparece con la misión, 40 000 de vida)',
				},
				pt = {
					'Derrote 4 × Robô do General Black (surge com a missão, 40 000 de vida)',
				},
			},
			rewards = {
				en = {
					'×35 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×35 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×35 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bojack_tournament_cleanup',
			category = 'combat',
			giver = 'gohan',
			turnin = 'gohan',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Galaxy Soldiers\' Last Stand',
				es = 'La Última Resistencia de los Soldados Galácticos',
				pt = 'A Última Batalha dos Soldados da Galáxia',
			},
			desc = {
				en = 'With Bojack defeated, his Galaxy Soldiers — Zangya, Bido, Bujin and Gokua — are still loose at the arena. Gohan asks you to finish what was started and protect the spectators.',
				es = 'Con Bojack derrotado, sus Soldados Galácticos Zangya, Bido, Bujin y Gokua siguen sueltos en la arena. Gohan te pide que termines lo que se empezó y protejas a los espectadores.',
				pt = 'Com Bojack derrotado, seus Soldados da Galáxia — Zangya, Bido, Bujin e Gokua — ainda estão soltos na arena. Gohan pede que você termine o que foi começado e proteja os espectadores.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Gohan|Gohan]]',
				es = '[[Special:MyLanguage/Gohan|Gohan]]',
				pt = '[[Special:MyLanguage/Gohan|Gohan]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Movies Saga|Movies Saga]], quest 29: \'\'Full Power Bojack\'\'',
				},
				es = {
					'[[Special:MyLanguage/Movies Saga|Saga Películas]], misión 29: \'\'Bojack a Plena Potencia\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Movies Saga|Saga de Filmes]], missão 29: \'\'Bojack Poder Total\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat Zangya',
					'Defeat Bido',
					'Defeat Bujin',
					'Defeat Kogu',
					'Talk to [[Special:MyLanguage/Gohan|Gohan]]',
				},
				es = {
					'Derrota a Zangya',
					'Derrota a Bido',
					'Derrota a Bujin',
					'Derrota a Gokua',
					'Habla con [[Special:MyLanguage/Gohan|Gohan]]',
				},
				pt = {
					'Derrote Zangya',
					'Derrote Bido',
					'Derrote Bujin',
					'Derrote Kogu',
					'Fale com [[Special:MyLanguage/Gohan|Gohan]]',
				},
			},
			rewards = {
				en = {
					'×60 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×60 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×60 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_buu_energy_analysis',
			category = 'combat',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Majin Energy Analysis',
				es = 'Análisis de Energía Majin',
				pt = 'Análise de Energia Majin',
			},
			desc = {
				en = 'Bulma studies Majin energy. Defeat Majin Buu forms and bring lapis blocks.',
				es = 'Bulma estudia la energía Majin. Derrota formas de Majin Buu y lleva bloques de lapislázuli.',
				pt = 'Bulma estuda a energia Majin. Derrote formas de Majin Boo e traga blocos de lápis-lazúli.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 5: \'\'Tournament: Goten\'\'',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 5: \'\'Torneo: Goten\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 5: \'\'Torneio: Goten\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 5 × Majin Buu',
					'Obtain 3 × Block of Lapis Lazuli',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Derrota a 5 × Majin Buu',
					'Consigue 3 × Bloque de lapislázuli',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Derrote 5 × Majin Boo',
					'Obtenha 3 × Bloco de Lápis-Lazúli',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_frieza_armor_study',
			category = 'combat',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Alien Armor Study',
				es = 'Estudio de Armadura Alienígena',
				pt = 'Estudo de Armadura Alienígena',
			},
			desc = {
				en = 'Bulma studies Frieza Force armor. Defeat some soldiers and bring iron.',
				es = 'Bulma estudia la armadura de las Fuerzas de Freezer. Derrota a algunos soldados y lleva hierro.',
				pt = 'Bulma estuda a armadura da Força Freeza. Derrote alguns soldados e traga ferro.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 3: \'\'Defend the Namekians\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 3: \'\'Defiende a los Namekianos\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 3: \'\'Defenda os Namekuseijins\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 8 × [[Special:MyLanguage/Frieza Soldier|Frieza\'s soldiers]]',
					'Obtain 16 × Iron Ingot',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Derrota a 8 × [[Special:MyLanguage/Frieza Soldier|soldados de Freezer]]',
					'Consigue 16 × Lingote de hierro',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Derrote 8 × [[Special:MyLanguage/Frieza Soldier|soldados de Freeza]]',
					'Obtenha 16 × Lingote de Ferro',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×8 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×8 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×8 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_frieza_force_intelligence',
			category = 'combat',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Enemy Intelligence',
				es = 'Inteligencia Enemiga',
				pt = 'Inteligência Inimiga',
			},
			desc = {
				en = 'Bulma is compiling an enemy database. Defeat Frieza\'s soldiers and bring diamonds.',
				es = 'Bulma está compilando una base de datos enemiga. Derrota a soldados de Freezer y lleva diamantes.',
				pt = 'Bulma está compilando um banco de dados de inimigos. Derrote os soldados de Freeza e traga diamantes.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 4: \'\'The Cruel Dodoria\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 4: \'\'El Cruel Dodoria\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 4: \'\'O Cruel Dodoria\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 10 × [[Special:MyLanguage/Frieza Soldier|Frieza\'s soldiers]]',
					'Obtain 6 × Diamond',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Derrota a 10 × [[Special:MyLanguage/Frieza Soldier|soldados de Freezer]]',
					'Consigue 6 × Diamante',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Derrote 10 × [[Special:MyLanguage/Frieza Soldier|soldados de Freeza]]',
					'Obtenha 6 × Diamante',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_saiyan_biology_sample',
			category = 'combat',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Saiyan Biology',
				es = 'Biología Saiyajin',
				pt = 'Biologia Saiyajin',
			},
			desc = {
				en = 'Bulma wants combat data on a Saiyan. Defeat one and bring her some diamonds for the lab.',
				es = 'Bulma quiere datos de combate sobre un Saiyajin. Derrota a uno y llévale diamantes para el laboratorio.',
				pt = 'Bulma quer dados de combate sobre um Saiyajin. Derrote um e traga a ela alguns diamantes para o laboratório.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 12: \'\'Defeat Oozaru Vegeta\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 12: \'\'Derrota al Oozaru Vegeta\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 12: \'\'Derrote Vegeta Macaco Gigante\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat Raditz (spawned by the quest, 3,450 health)',
					'Obtain 3 × Diamond',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Derrota a Raditz (aparece con la misión, 3 450 de vida)',
					'Consigue 3 × Diamante',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Derrote Raditz (surge com a missão, 3 450 de vida)',
					'Obtenha 3 × Diamante',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×17 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×17 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×17 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'buu_babidi_ship_raid',
			category = 'combat',
			giver = '',
			turnin = '',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Babidi\'s Ship',
				es = 'La Nave de Babidi',
				pt = 'A Nave de Babidi',
			},
			desc = {
				en = 'Babidi\'s ship is still guarded by Pui Pui. Find the ship and defeat him.',
				es = 'Pui Pui todavía vigila la nave de Babidi. Encuentra la nave y derrótalo.',
				pt = 'A nave de Babidi ainda é vigiada por Pui Pui. Encontre a nave e derrote-o.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 17: \'\'Stop Babidi\'\'',
					'Be at [[Special:MyLanguage/Babidi\'s Spaceship|Babidi\'s Spaceship]]',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 17: \'\'Detén a Babidi\'\'',
					'Estar en [[Special:MyLanguage/Babidi\'s Spaceship|Nave de Babidi]]',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 17: \'\'Pare Babidi\'\'',
					'Estar em [[Special:MyLanguage/Babidi\'s Spaceship|Nave de Babidi]]',
				},
			},
			objectives = {
				en = {
					'Defeat Pui Pui (spawned by the quest, 230,000 health)',
				},
				es = {
					'Derrota a Pui Pui (aparece con la misión, 230 000 de vida)',
				},
				pt = {
					'Derrote Pui Pui (surge com a missão, 230 000 de vida)',
				},
			},
			rewards = {
				en = {
					'×50 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×50 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×50 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'buu_great_saiyaman',
			category = 'combat',
			giver = 'gohan',
			turnin = 'gohan',
			ordered = true,
			repeatable = false,
			name = {
				en = 'The Great Saiyaman',
				es = 'El Gran Saiyaman',
				pt = 'O Grande Saiyaman',
			},
			desc = {
				en = 'Gohan needs a partner to keep the peace. Defeat pillagers and vindicators, then report to him.',
				es = 'Gohan necesita un compañero para mantener la paz. Derrota a saqueadores y vindicadores, y luego infórmale.',
				pt = 'Gohan precisa de um parceiro para manter a paz. Derrote saqueadores e vingadores, e depois fale com ele.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Gohan|Gohan]]',
				es = '[[Special:MyLanguage/Gohan|Gohan]]',
				pt = '[[Special:MyLanguage/Gohan|Gohan]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 36: \'\'Flying Lessons\'\'',
					'Alignment 50 or higher',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 36: \'\'Lecciones de Vuelo\'\'',
					'Alineamiento de 50 o más',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 36: \'\'Aulas de Voo\'\'',
					'Índole de 50 ou mais',
				},
			},
			objectives = {
				en = {
					'Defeat 15 × Pillager',
					'Defeat 3 × Vindicator',
					'Talk to [[Special:MyLanguage/Gohan|Gohan]]',
				},
				es = {
					'Derrota a 15 × Saqueador',
					'Derrota a 3 × Vindicador',
					'Habla con [[Special:MyLanguage/Gohan|Gohan]]',
				},
				pt = {
					'Derrote 15 × Saqueador',
					'Derrote 3 × Vingador',
					'Fale com [[Special:MyLanguage/Gohan|Gohan]]',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'chiaotzu_crane_school_shadow',
			category = 'combat',
			giver = 'chiaotzu',
			turnin = 'chiaotzu',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Shadow of the Crane School',
				es = 'La Sombra de la Escuela Grulla',
				pt = 'A Sombra da Escola da Garça',
			},
			desc = {
				en = 'Chiaotzu keeps dreaming about Mercenary Tao and his cyborg body. Defeat Cyborg Tao so Chiaotzu can finally sleep in peace.',
				es = 'Chaozu sigue soñando con el Mercenario Tao y su cuerpo de cyborg. Derrota a Cyborg Tao para que Chaozu por fin pueda dormir en paz.',
				pt = 'Chaoz continua sonhando com o Mercenário Tao e seu corpo de ciborgue. Derrote o Ciborgue Tao para que Chaoz finalmente possa dormir em paz.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Chiaotzu|Chiaotzu]]',
				es = '[[Special:MyLanguage/Chiaotzu|Chaozu]]',
				pt = '[[Special:MyLanguage/Chiaotzu|Chaoz]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Classic Saga|Classic Saga]], quest 47: \'\'Tournament: Cyborg Tao\'\'',
					'Complete [[Special:MyLanguage/Sidequests#sq-chiaotzu_psychic_sparring|Psychic Sparring]]',
				},
				es = {
					'[[Special:MyLanguage/Classic Saga|Saga Clásica]], misión 47: \'\'Torneo: Cyborg Tao\'\'',
					'Completa [[Special:MyLanguage/Sidequests#sq-chiaotzu_psychic_sparring|Combate Psíquico]]',
				},
				pt = {
					'[[Special:MyLanguage/Classic Saga|Saga Clássica]], missão 47: \'\'Torneio: Ciborgue Tao\'\'',
					'Conclua [[Special:MyLanguage/Sidequests#sq-chiaotzu_psychic_sparring|Treino Psíquico]]',
				},
			},
			objectives = {
				en = {
					'Defeat Cyborg Tao Pai Pai (spawned by the quest, 1,900 health)',
					'Talk to [[Special:MyLanguage/Chiaotzu|Chiaotzu]]',
				},
				es = {
					'Derrota a Cyborg Tao Pai Pai (aparece con la misión, 1 900 de vida)',
					'Habla con [[Special:MyLanguage/Chiaotzu|Chaozu]]',
				},
				pt = {
					'Derrote Ciborgue Tao Pai Pai (surge com a missão, 1 900 de vida)',
					'Fale com [[Special:MyLanguage/Chiaotzu|Chaoz]]',
				},
			},
			rewards = {
				en = {
					'×10 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×10 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×10 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'classic_red_ribbon_patrol',
			category = 'combat',
			giver = '',
			turnin = '',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Red Ribbon Patrol',
				es = 'Redada contra la Patrulla Roja',
				pt = 'Patrulha contra a Red Ribbon',
			},
			desc = {
				en = 'Red Ribbon soldiers still guard their base. Find the Red Ribbon Army base and take out their troops.',
				es = 'Los soldados de la Patrulla Roja todavía vigilan su base. Encuentra la base del Ejército de la Patrulla Roja y acaba con sus tropas.',
				pt = 'Os soldados da Red Ribbon ainda vigiam a base deles. Encontre a base do Exército Red Ribbon e acabe com as tropas.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Classic Saga|Classic Saga]], quest 13: \'\'The Red Ribbon Army\'\'',
				},
				es = {
					'[[Special:MyLanguage/Classic Saga|Saga Clásica]], misión 13: \'\'El Ejército de la Patrulla Roja\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Classic Saga|Saga Clássica]], missão 13: \'\'O Exército Red Ribbon\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Red Ribbon Tower|Red Ribbon Tower]]',
					'Defeat 8 × [[Special:MyLanguage/Red Ribbon Army|Red Ribbon\'s Soldier]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Red Ribbon Tower|Torre de la Patrulla Roja]]',
					'Derrota a 8 × [[Special:MyLanguage/Red Ribbon Army|Soldado Red Ribbon]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Red Ribbon Tower|Torre da Red Ribbon]]',
					'Derrote 8 × [[Special:MyLanguage/Red Ribbon Army|Soldado da Red Ribbon]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'classic_village_night_watch',
			category = 'combat',
			giver = '',
			turnin = '',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Village Night Watch',
				es = 'Guardia Nocturna en la Aldea',
				pt = 'Vigília Noturna na Vila',
			},
			desc = {
				en = 'With Oolong gone, the villagers still fear the night. Clear out the zombies and skeletons that roam nearby.',
				es = 'Aunque Oolong ya se fue, los aldeanos todavía temen la noche. Acaba con los zombis y esqueletos que rondan cerca.',
				pt = 'Mesmo sem o Oolong, os aldeões ainda têm medo da noite. Acabe com os zumbis e esqueletos que rondam por perto.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Classic Saga|Classic Saga]], quest 3: \'\'Oolong Unmasked\'\'',
				},
				es = {
					'[[Special:MyLanguage/Classic Saga|Saga Clásica]], misión 3: \'\'Oolong Desenmascarado\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Classic Saga|Saga Clássica]], missão 3: \'\'Oolong Desmascarado\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 12 × Zombie',
					'Defeat 6 × Skeleton',
				},
				es = {
					'Derrota a 12 × Zombi',
					'Derrota a 6 × Esqueleto',
				},
				pt = {
					'Derrote 12 × Zumbi',
					'Derrote 6 × Esqueleto',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'cooler_squadron_mopup',
			category = 'combat',
			giver = 'krillin',
			turnin = 'krillin',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Armored Squadron Mop-Up',
				es = 'Limpieza del Escuadrón Acorazado',
				pt = 'Limpeza do Esquadrão Blindado',
			},
			desc = {
				en = 'Cooler\'s Armored Squadron — Salza, Dore and Neiz — won\'t stop until the planet is theirs. Krillin asks you to hunt down the elite trio\'s stragglers wherever they\'re hiding.',
				es = 'El Escuadrón Acorazado de Cooler Salza, Dore y Neiz no se detendrá hasta que el planeta sea suyo. Krilin te pide que rastrees y elimines a los rezagados del trío de élite donde quiera que se escondan.',
				pt = 'O Esquadrão Blindado de Cooler — Salza, Dore e Neiz — não vai parar até que o planeta seja deles. Kuririn pede que você caçe os retardatários do trio de elite onde quer que estejam escondidos.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Krillin|Krillin]]',
				es = '[[Special:MyLanguage/Krillin|Krilin]]',
				pt = '[[Special:MyLanguage/Krillin|Kuririn]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Movies Saga|Movies Saga]], quest 16: \'\'Cooler\'s Fifth Form\'\'',
				},
				es = {
					'[[Special:MyLanguage/Movies Saga|Saga Películas]], misión 16: \'\'La Quinta Forma de Cooler\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Movies Saga|Saga de Filmes]], missão 16: \'\'Quinta Forma de Cooler\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 4 × Salza (spawned by the quest, 6,409 health)',
					'Defeat 4 × Dore (spawned by the quest, 7,514 health)',
					'Defeat 4 × Neiz (spawned by the quest, 5,304 health)',
					'Talk to [[Special:MyLanguage/Krillin|Krillin]]',
				},
				es = {
					'Derrota a 4 × Salza (aparece con la misión, 6 409 de vida)',
					'Derrota a 4 × Dore (aparece con la misión, 7 514 de vida)',
					'Derrota a 4 × Neiz (aparece con la misión, 5 304 de vida)',
					'Habla con [[Special:MyLanguage/Krillin|Krilin]]',
				},
				pt = {
					'Derrote 4 × Salza (surge com a missão, 6 409 de vida)',
					'Derrote 4 × Dore (surge com a missão, 7 514 de vida)',
					'Derrote 4 × Neiz (surge com a missão, 5 304 de vida)',
					'Fale com [[Special:MyLanguage/Krillin|Kuririn]]',
				},
			},
			rewards = {
				en = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'daima_goku_full_power',
			category = 'combat',
			giver = 'goku',
			turnin = 'goku',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Goku at Full Power',
				es = 'Goku a Plena Potencia',
				pt = 'Goku no Poder Total',
			},
			desc = {
				en = 'With Gomah gone, Goku wants a real fight. Meet him on the plains: he climbs from his base form through Super Saiyan and Super Saiyan 2 up to Super Saiyan 3. Talk to him afterwards.',
				es = 'Sin Gomah, Goku quiere una pelea de verdad. Encuéntralo en las llanuras: pasa de su forma base por Super Saiyajin y Super Saiyajin 2 hasta llegar a Super Saiyajin 3. Habla con él después.',
				pt = 'Sem Gomah, Goku quer uma luta de verdade. Encontre-o nas planícies: ele sobe da forma base, passando por Super Saiyajin e Super Saiyajin 2, até o Super Saiyajin 3. Fale com ele depois.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Goku|Goku]]',
				es = '[[Special:MyLanguage/Goku|Goku]]',
				pt = '[[Special:MyLanguage/Goku|Goku]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Daima Saga|Daima Saga]], quest 17: \'\'The Demon Eye\'\'',
					'Be in [[Special:MyLanguage/Earth|Earth]]',
					'Be in any plains biome',
				},
				es = {
					'[[Special:MyLanguage/Daima Saga|Saga Daima]], misión 17: \'\'El Ojo Demoníaco\'\'',
					'Estar en [[Special:MyLanguage/Earth|Tierra]]',
					'Estar en cualquier bioma de llanuras',
				},
				pt = {
					'[[Special:MyLanguage/Daima Saga|Saga Daima]], missão 17: \'\'O Olho Demoníaco\'\'',
					'Estar em [[Special:MyLanguage/Earth|Terra]]',
					'Estar em qualquer bioma de planícies',
				},
			},
			objectives = {
				en = {
					'Defeat Goku (Daima) (spawned by the quest, 287,500 health)',
					'Talk to [[Special:MyLanguage/Goku|Goku]]',
				},
				es = {
					'Derrota a Goku (Daima) (aparece con la misión, 287 500 de vida)',
					'Habla con [[Special:MyLanguage/Goku|Goku]]',
				},
				pt = {
					'Derrote Goku (Daima) (surge com a missão, 287 500 de vida)',
					'Fale com [[Special:MyLanguage/Goku|Goku]]',
				},
			},
			rewards = {
				en = {
					'×150 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'3 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
				},
				es = {
					'×150 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
				},
				pt = {
					'×150 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
				},
			},
		},
		{
			id = 'frieza_ginyu_stragglers',
			category = 'combat',
			giver = '',
			turnin = '',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Ginyu Force Stragglers',
				es = 'Rezagados de las Fuerzas Especiales Ginyu',
				pt = 'Remanescentes da Força Ginyu',
			},
			desc = {
				en = 'Guldo and Recoome are back on their feet and looking for revenge. Defeat them both on Namek.',
				es = 'Guldo y Recoome volvieron a ponerse de pie y buscan venganza. Derrótalos a ambos en Namek.',
				pt = 'Guldo e Rikum estão de pé de novo e querem vingança. Derrote os dois em Namekusei.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 10: \'\'Captain Ginyu\'\'',
					'Be in [[Special:MyLanguage/Namek|Namek]]',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 10: \'\'Capitán Ginyu\'\'',
					'Estar en [[Special:MyLanguage/Namek|Namek]]',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 10: \'\'Capitão Ginyu\'\'',
					'Estar em [[Special:MyLanguage/Namek|Namekusei]]',
				},
			},
			objectives = {
				en = {
					'Defeat Guldo (spawned by the quest, 9,000 health)',
					'Defeat Recoome (spawned by the quest, 13,000 health)',
				},
				es = {
					'Derrota a Guldo (aparece con la misión, 9 000 de vida)',
					'Derrota a Recoome (aparece con la misión, 13 000 de vida)',
				},
				pt = {
					'Derrote Guldo (surge com a missão, 9 000 de vida)',
					'Derrote Rikum (surge com a missão, 13 000 de vida)',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
				},
			},
		},
		{
			id = 'garlic_jr_spice_boys',
			category = 'combat',
			giver = 'popo',
			turnin = 'popo',
			ordered = true,
			repeatable = false,
			name = {
				en = 'The Spice Boys',
				es = 'Los Chicos de las Especias',
				pt = 'Os Spice Boys',
			},
			desc = {
				en = 'Garlic Jr.\'s henchmen are scattered across the wastelands, poisoning everything they touch. Mr. Popo asks you to hunt down what remains of the immortal demon\'s followers.',
				es = 'Los secuaces de Garlic Jr. están dispersos por los páramos, envenenando todo lo que tocan. El Sr. Popo te pide que cacemos lo que queda de los seguidores del demonio inmortal.',
				pt = 'Os capangas de Garlic Jr. estão espalhados pelos desertos, envenenando tudo o que tocam. Mr. Popo pede que você cace o que resta dos seguidores do demônio imortal.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Mr. Popo|Mr. Popo]]',
				es = '[[Special:MyLanguage/Mr. Popo|Sr. Popo]]',
				pt = '[[Special:MyLanguage/Mr. Popo|Sr Popo]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Movies Saga|Movies Saga]], quest 3: \'\'Garlic Jr. Transformed\'\'',
					'Be in a Rocky biome',
				},
				es = {
					'[[Special:MyLanguage/Movies Saga|Saga Películas]], misión 3: \'\'Garlic Jr. Transformado\'\'',
					'Estar en un bioma de Rocoso',
				},
				pt = {
					'[[Special:MyLanguage/Movies Saga|Saga de Filmes]], missão 3: \'\'Garlic Jr. Transformado\'\'',
					'Estar em um bioma de Rochoso',
				},
			},
			objectives = {
				en = {
					'Defeat 3 × Garlic Jr.',
					'Talk to [[Special:MyLanguage/Mr. Popo|Mr. Popo]]',
				},
				es = {
					'Derrota a 3 × Garlic Jr.',
					'Habla con [[Special:MyLanguage/Mr. Popo|Sr. Popo]]',
				},
				pt = {
					'Derrote 3 × Garlic Jr.',
					'Fale com [[Special:MyLanguage/Mr. Popo|Sr Popo]]',
				},
			},
			rewards = {
				en = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'ginyu_force_warm_up',
			category = 'combat',
			giver = 'goku',
			turnin = 'goku',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Ginyu Force Warm-Up',
				es = 'Calentamiento con las Fuerzas Especiales Ginyu',
				pt = 'Aquecimento Contra a Força Ginyu',
			},
			desc = {
				en = 'The Ginyu Force is coming. Goku asks you to train by clearing out Frieza\'s remaining soldiers on the Ajissa Plains — you\'ll need every ounce of strength.',
				es = 'Las Fuerzas Especiales Ginyu están en camino. Goku te pide que entrenes eliminando a los soldados restantes de Freezer en las Llanuras de Ajissa: vas a necesitar toda tu fuerza.',
				pt = 'A Força Ginyu está chegando. Goku pede que você treine eliminando os soldados restantes de Freeza nas Planícies Ajissa. Você vai precisar de toda a sua força.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Goku|Goku]]',
				es = '[[Special:MyLanguage/Goku|Goku]]',
				pt = '[[Special:MyLanguage/Goku|Goku]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 6: \'\'The Saiyan Prince\'\'',
					'Be in a Ajissa Plains biome',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 6: \'\'El Príncipe Saiyajin\'\'',
					'Estar en un bioma de Llanuras de Ajissa',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 6: \'\'O Príncipe Saiyajin\'\'',
					'Estar em um bioma de Planícies de Ajissa',
				},
			},
			objectives = {
				en = {
					'Defeat 16 × [[Special:MyLanguage/Frieza Soldier|Frieza\'s soldiers]]',
					'Talk to [[Special:MyLanguage/Goku|Goku]]',
				},
				es = {
					'Derrota a 16 × [[Special:MyLanguage/Frieza Soldier|soldados de Freezer]]',
					'Habla con [[Special:MyLanguage/Goku|Goku]]',
				},
				pt = {
					'Derrote 16 × [[Special:MyLanguage/Frieza Soldier|soldados de Freeza]]',
					'Fale com [[Special:MyLanguage/Goku|Goku]]',
				},
			},
			rewards = {
				en = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gt_hell_breakout_patrol',
			category = 'combat',
			giver = '',
			turnin = '',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Hell Breakout',
				es = 'Fuga del Infierno',
				pt = 'Fuga do Inferno',
			},
			desc = {
				en = 'With the gate between worlds broken, the undead are roaming the Earth. Put down the zombies, skeletons and wither skeletons that slipped out.',
				es = 'Con la puerta entre los mundos rota, los no muertos recorren la Tierra. Acaba con los zombis, esqueletos y esqueletos del Wither que se escaparon.',
				pt = 'Com o portão entre os mundos quebrado, os mortos-vivos vagam pela Terra. Acabe com os zumbis, esqueletos e esqueletos Wither que escaparam.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/GT Saga|GT Saga]], quest 25: \'\'Hell\'s Escapees\'\'',
				},
				es = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], misión 25: \'\'Los Fugitivos del Infierno\'\'',
				},
				pt = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], missão 25: \'\'Os Fugitivos do Inferno\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 20 × Zombie',
					'Defeat 12 × Skeleton',
					'Defeat 4 × Wither Skeleton',
				},
				es = {
					'Derrota a 20 × Zombi',
					'Derrota a 12 × Esqueleto',
					'Derrota a 4 × Esqueleto del Wither',
				},
				pt = {
					'Derrote 20 × Zumbi',
					'Derrote 12 × Esqueleto',
					'Derrote 4 × Esqueleto Wither',
				},
			},
			rewards = {
				en = {
					'×75 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×75 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×75 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'krillin_android_patrol',
			category = 'combat',
			giver = 'krillin',
			turnin = 'krillin',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Android Patrol',
				es = 'Patrulla Androide',
				pt = 'Patrulha dos Androides',
			},
			desc = {
				en = 'Krillin asks you to patrol the rocky wastelands for Android sightings. Clear out any Red Ribbon remnants you find along the way.',
				es = 'Krilin te pide que patrulles los páramos rocosos en busca de avistamientos de Androides. Elimina cualquier resto de Red Ribbon que encuentres por el camino.',
				pt = 'Kuririn pede que você patrulhe os ermos rochosos em busca de avistamentos de Androides. Elimine quaisquer remanescentes da Força Red Ribbon que encontrar pelo caminho.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Krillin|Krillin]]',
				es = '[[Special:MyLanguage/Krillin|Krilin]]',
				pt = '[[Special:MyLanguage/Krillin|Kuririn]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 5: \'\'Android 19\'\'',
					'Be in a Rocky biome',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 5: \'\'Androide 19\'\'',
					'Estar en un bioma de Rocoso',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 5: \'\'Androide 19\'\'',
					'Estar em um bioma de Rochoso',
				},
			},
			objectives = {
				en = {
					'Defeat 15 × [[Special:MyLanguage/Red Ribbon Army|Red Ribbon\'s Soldier]]',
					'Defeat 3 × [[Special:MyLanguage/Red Ribbon Army|Red Ribbon robots]]',
					'Talk to [[Special:MyLanguage/Krillin|Krillin]]',
				},
				es = {
					'Derrota a 15 × [[Special:MyLanguage/Red Ribbon Army|Soldado Red Ribbon]]',
					'Derrota a 3 × [[Special:MyLanguage/Red Ribbon Army|robots de la Red Ribbon]]',
					'Habla con [[Special:MyLanguage/Krillin|Krilin]]',
				},
				pt = {
					'Derrote 15 × [[Special:MyLanguage/Red Ribbon Army|Soldado da Red Ribbon]]',
					'Derrote 3 × [[Special:MyLanguage/Red Ribbon Army|robôs da Red Ribbon]]',
					'Fale com [[Special:MyLanguage/Krillin|Kuririn]]',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'monster_hunter',
			category = 'combat',
			giver = '',
			turnin = '',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Monster Hunter',
				es = 'Cazador de Monstruos',
				pt = 'Caçador de Monstros',
			},
			desc = {
				en = 'The world is filled with dangerous creatures. Prove yourself as a monster hunter by eliminating various threats.',
				es = 'El mundo está lleno de criaturas peligrosas. Demuéstrate como cazador de monstruos eliminando diversas amenazas.',
				pt = 'O mundo está cheio de criaturas perigosas. Prove-se como um caçador de monstros eliminando várias ameaças.',
			},
			giverText = nil,
			unlock = {
				en = {},
				es = {},
				pt = {},
			},
			objectives = {
				en = {
					'Defeat 20 × Zombie',
					'Defeat 20 × Skeleton',
					'Defeat 10 × Creeper',
				},
				es = {
					'Derrota a 20 × Zombi',
					'Derrota a 20 × Esqueleto',
					'Derrota a 10 × Creeper',
				},
				pt = {
					'Derrote 20 × Zumbi',
					'Derrote 20 × Esqueleto',
					'Derrote 10 × Creeper',
				},
			},
			rewards = {
				en = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'mr_satan_cell_jr_cleanup',
			category = 'combat',
			giver = 'mr_satan',
			turnin = 'mr_satan',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Hero of the Cell Games',
				es = 'El Héroe de los Juegos de Cell',
				pt = 'O Herói dos Jogos de Cell',
			},
			desc = {
				en = 'A few Cell Juniors were spotted near the tournament grounds. Mr. Satan would deal with them himself, but his back hurts. Defeat them quietly; he will take the credit.',
				es = 'Vieron a algunos Cell Jr. cerca del torneo. El Sr. Satán se encargaría él mismo, pero le duele la espalda. Derrótalos sin hacer ruido; él se llevará el crédito.',
				pt = 'Alguns Cell Jr. foram vistos perto do torneio. O Mr. Satan cuidaria deles pessoalmente, mas está com dor nas costas. Derrote-os discretamente; ele vai ficar com o crédito.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				es = '[[Special:MyLanguage/Mr. Satan|Sr. Satán]]',
				pt = '[[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 15: \'\'Super Perfect Cell\'\'',
					'Complete [[Special:MyLanguage/Sidequests#sq-mr_satan_autographs|The Champ\'s Autographs]]',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 15: \'\'Cell Super Perfecto\'\'',
					'Completa [[Special:MyLanguage/Sidequests#sq-mr_satan_autographs|Los Autógrafos del Campeón]]',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 15: \'\'Cell Super Perfeito\'\'',
					'Conclua [[Special:MyLanguage/Sidequests#sq-mr_satan_autographs|Os Autógrafos do Campeão]]',
				},
			},
			objectives = {
				en = {
					'Defeat 3 × Cell Jr (spawned by the quest, 108,360 health)',
					'Talk to [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				},
				es = {
					'Derrota a 3 × Cell Jr. (aparece con la misión, 108 360 de vida)',
					'Habla con [[Special:MyLanguage/Mr. Satan|Sr. Satán]]',
				},
				pt = {
					'Derrote 3 × Cell Jr (surge com a missão, 108 360 de vida)',
					'Fale com [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				},
			},
			rewards = {
				en = {
					'×30 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×30 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×30 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'nether_warrior',
			category = 'combat',
			giver = '',
			turnin = '',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Nether Warrior',
				es = 'Guerrero del Inframundo',
				pt = 'Guerreiro do Nether',
			},
			desc = {
				en = 'The Nether holds powerful enemies. Only a true warrior can survive its fiery depths.',
				es = 'El Inframundo alberga enemigos poderosos. Solo un auténtico guerrero puede sobrevivir a sus profundidades de fuego.',
				pt = 'O Nether abriga inimigos poderosos. Apenas um verdadeiro guerreiro pode sobreviver às suas profundezas ígneas.',
			},
			giverText = nil,
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-monster_hunter|Monster Hunter]]',
					'Level 5',
					'Be in the Nether',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-monster_hunter|Cazador de Monstruos]]',
					'Nivel 5',
					'Estar en el Nether',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-monster_hunter|Caçador de Monstros]]',
					'Nível 5',
					'Estar em o Nether',
				},
			},
			objectives = {
				en = {
					'Defeat 10 × Blaze',
					'Defeat 10 × Wither Skeleton',
				},
				es = {
					'Derrota a 10 × Blaze',
					'Derrota a 10 × Esqueleto del Wither',
				},
				pt = {
					'Derrote 10 × Blaze',
					'Derrote 10 × Esqueleto Wither',
				},
			},
			rewards = {
				en = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'3 × Diamond',
				},
				es = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × Diamante',
				},
				pt = {
					'×5 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × Diamante',
				},
			},
		},
		{
			id = 'otherworld_pikkon_rematch',
			category = 'combat',
			giver = 'kingkai',
			turnin = 'kingkai',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Otherworld Rematch',
				es = 'Revancha en el Otro Mundo',
				pt = 'Revanche no Outro Mundo',
			},
			desc = {
				en = 'The chaos Janemba unleashed has thrown the Otherworld into disorder. King Kai arranges a rematch with Pikkon to settle the score and restore order beyond the grave — head to the Otherworld and prove yourself.',
				es = 'El caos que desató Janemba ha sumido el Otro Mundo en el desorden. Kaiosama organiza una revancha con Pikkon para saldar cuentas y restaurar el orden más allá de la muerte: ve al Otro Mundo y demuéstrate.',
				pt = 'O caos desencadeado por Janemba jogou o Outro Mundo na desordem. O Rei Kai organiza uma revanche com Pikkon para acertar as contas e restaurar a ordem além do túmulo — vá ao Outro Mundo e prove seu valor.',
			},
			giverText = {
				en = '[[Special:MyLanguage/King Kai|King Kai]]',
				es = '[[Special:MyLanguage/King Kai|Kaiosama]]',
				pt = '[[Special:MyLanguage/King Kai|Rei Kai]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Movies Saga|Movies Saga]], quest 37: \'\'Super Janemba\'\'',
					'Be in [[Special:MyLanguage/Otherworld|Otherworld]]',
				},
				es = {
					'[[Special:MyLanguage/Movies Saga|Saga Películas]], misión 37: \'\'Súper Janemba\'\'',
					'Estar en [[Special:MyLanguage/Otherworld|Otro Mundo]]',
				},
				pt = {
					'[[Special:MyLanguage/Movies Saga|Saga de Filmes]], missão 37: \'\'Super Janemba\'\'',
					'Estar em [[Special:MyLanguage/Otherworld|Outro Mundo]]',
				},
			},
			objectives = {
				en = {
					'Defeat Pikkon',
					'Talk to [[Special:MyLanguage/King Kai|King Kai]]',
				},
				es = {
					'Derrota a Pikkon',
					'Habla con [[Special:MyLanguage/King Kai|Kaiosama]]',
				},
				pt = {
					'Derrote Pikkon',
					'Fale com [[Special:MyLanguage/King Kai|Rei Kai]]',
				},
			},
			rewards = {
				en = {
					'×85 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'3 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
				},
				es = {
					'×85 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
				},
				pt = {
					'×85 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
				},
			},
		},
		{
			id = 'red_ribbon_outpost',
			category = 'combat',
			giver = '',
			turnin = '',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Red Ribbon Outpost',
				es = 'Puesto de Avanzada de la Red Ribbon',
				pt = 'Posto Avançado da Red Ribbon',
			},
			desc = {
				en = 'An outpost is stirring up trouble in the countryside. Track it down and clear out the raiders.',
				es = 'Un puesto de avanzada está causando problemas en la zona rural. Localízalo y elimina a los saqueadores.',
				pt = 'Um posto avançado está causando problemas no interior. Rastreie-o e elimine os invasores.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 9: \'\'Hold Against Nappa\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 9: \'\'Aguanta contra Nappa\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 9: \'\'Resista Contra Nappa\'\'',
				},
			},
			objectives = {
				en = {
					'Find Pillager Outpost',
					'Defeat 15 × Pillager',
				},
				es = {
					'Encuentra Pillager Outpost',
					'Derrota a 15 × Saqueador',
				},
				pt = {
					'Encontre Pillager Outpost',
					'Derrote 15 × Saqueador',
				},
			},
			rewards = {
				en = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'slug_aftermath',
			category = 'combat',
			giver = 'guru',
			turnin = 'guru',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Slug\'s Shadow',
				es = 'La Sombra de Slug',
				pt = 'A Sombra de Slug',
			},
			desc = {
				en = 'Lord Slug\'s invasion may be over, but his Namekian soldiers still roam the plains. Guru asks you to put an end to the stragglers and bring peace back to the land.',
				es = 'La invasión de Lord Slug puede haber terminado, pero sus soldados Namekianos siguen rondando las llanuras. Gurú te pide que acabes con los rezagados y devuelvas la paz al territorio.',
				pt = 'A invasão de Lord Slug pode ter acabado, mas seus soldados Namekuseijins ainda vagam pelas planícies. Guru pede que você dê fim aos retardatários e traga a paz de volta à terra.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
				es = '[[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
				pt = '[[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Movies Saga|Movies Saga]], quest 13: \'\'Giant Lord Slug\'\'',
					'Be in any plains biome',
				},
				es = {
					'[[Special:MyLanguage/Movies Saga|Saga Películas]], misión 13: \'\'Lord Slug Gigante\'\'',
					'Estar en cualquier bioma de llanuras',
				},
				pt = {
					'[[Special:MyLanguage/Movies Saga|Saga de Filmes]], missão 13: \'\'Lord Slug Gigante\'\'',
					'Estar em qualquer bioma de planícies',
				},
			},
			objectives = {
				en = {
					'Defeat 20 × Slug\'s Soldier (spawned by the quest, 1,040 health)',
					'Talk to [[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
				},
				es = {
					'Derrota a 20 × Soldado de Slug (aparece con la misión, 1 040 de vida)',
					'Habla con [[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
				},
				pt = {
					'Derrote 20 × Soldado de Slug (surge com a missão, 1 040 de vida)',
					'Fale com [[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'tien_cell_search',
			category = 'combat',
			giver = 'krillin',
			turnin = 'krillin',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Hunting Cell',
				es = 'A la Caza de Cell',
				pt = 'Caçada a Cell',
			},
			desc = {
				en = 'Krillin senses a dark energy spreading across the plains. Help him investigate by eliminating the creatures Cell has been absorbing from.',
				es = 'Krilin percibe una energía oscura extendiéndose por las llanuras. Ayúdalo a investigar eliminando las criaturas de las que Cell se ha estado alimentando.',
				pt = 'Kuririn sente uma energia sombria se espalhando pelas planícies. Ajude-o a investigar eliminando as criaturas que Cell tem absorvido.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Krillin|Krillin]]',
				es = '[[Special:MyLanguage/Krillin|Krilin]]',
				pt = '[[Special:MyLanguage/Krillin|Kuririn]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 10: \'\'Cell Emerges\'\'',
					'Be in any plains biome',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 10: \'\'Aparece Cell\'\'',
					'Estar en cualquier bioma de llanuras',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 10: \'\'Cell Surge\'\'',
					'Estar em qualquer bioma de planícies',
				},
			},
			objectives = {
				en = {
					'Defeat 30 × Zombie',
					'Defeat 15 × Spider',
					'Talk to [[Special:MyLanguage/Krillin|Krillin]]',
				},
				es = {
					'Derrota a 30 × Zombi',
					'Derrota a 15 × Araña',
					'Habla con [[Special:MyLanguage/Krillin|Krilin]]',
				},
				pt = {
					'Derrote 30 × Zumbi',
					'Derrote 15 × Aranha',
					'Fale com [[Special:MyLanguage/Krillin|Kuririn]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'videl_city_defense',
			category = 'combat',
			giver = 'gohan',
			turnin = 'gohan',
			ordered = true,
			repeatable = false,
			name = {
				en = 'City Defense',
				es = 'Defensa de la Ciudad',
				pt = 'Defesa da Cidade',
			},
			desc = {
				en = 'Cell Juniors are wreaking havoc everywhere! Gohan asks for your help defending the innocent from these miniature terrors.',
				es = '¡Los Cell Jr. están causando estragos por todos lados! Gohan te pide ayuda para defender a los inocentes de estos pequeños terroristas.',
				pt = 'Os Cell Juniors estão causando estragos por toda parte! Gohan pede sua ajuda para defender os inocentes desses terrores em miniatura.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Gohan|Gohan]]',
				es = '[[Special:MyLanguage/Gohan|Gohan]]',
				pt = '[[Special:MyLanguage/Gohan|Gohan]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 14: \'\'Cell Juniors\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 14: \'\'Los Cell Jr.\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 14: \'\'Cell Jr.\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 10 × Cell Jr',
					'Talk to [[Special:MyLanguage/Gohan|Gohan]]',
				},
				es = {
					'Derrota a 10 × Cell Jr.',
					'Habla con [[Special:MyLanguage/Gohan|Gohan]]',
				},
				pt = {
					'Derrote 10 × Cell Jr',
					'Fale com [[Special:MyLanguage/Gohan|Gohan]]',
				},
			},
			rewards = {
				en = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'yamcha_desert_bandit',
			category = 'combat',
			giver = 'yamcha',
			turnin = 'yamcha',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Desert Wolf\'s Grudge',
				es = 'El Rencor del Lobo del Desierto',
				pt = 'Rancor do Lobo do Deserto',
			},
			desc = {
				en = 'Yamcha\'s old desert hideout has been overrun by bandits. He asks you to clear them out — for old times\' sake.',
				es = 'El antiguo escondite desértico de Yamcha ha sido invadido por bandidos. Te pide que los elimines, por los viejos tiempos.',
				pt = 'O antigo esconderijo de Yamcha no deserto foi tomado por bandidos. Ele pede que você os expulse, por uma questão de nostalgia.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Yamcha|Yamcha]]',
				es = '[[Special:MyLanguage/Yamcha|Yamcha]]',
				pt = '[[Special:MyLanguage/Yamcha|Yamcha]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 3: \'\'Wilderness Training\'\'',
					'Be in a Desert biome',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 3: \'\'Elimina a los Saibamen\'\'',
					'Estar en un bioma de Desierto',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 3: \'\'Mate os Saibamen\'\'',
					'Estar em um bioma de Deserto',
				},
			},
			objectives = {
				en = {
					'Defeat 10 × [[Special:MyLanguage/Bandit|Bandit]]',
					'Talk to [[Special:MyLanguage/Yamcha|Yamcha]]',
				},
				es = {
					'Derrota a 10 × [[Special:MyLanguage/Bandit|Bandido]]',
					'Habla con [[Special:MyLanguage/Yamcha|Yamcha]]',
				},
				pt = {
					'Derrote 10 × [[Special:MyLanguage/Bandit|Bandido]]',
					'Fale com [[Special:MyLanguage/Yamcha|Yamcha]]',
				},
			},
			rewards = {
				en = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'android_cold_parts',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Cold Steel',
				es = 'Acero Frío',
				pt = 'Aço Gelado',
			},
			desc = {
				en = 'Dr. Gero\'s cold-weather androids lie dormant in the ice. Bulma needs the cores of Androids 14 and 15 — venture into the frozen tundra, take them apart, and bring back the components.',
				es = 'Los androides de combate en frío del Dr. Gero yacen inactivos en el hielo. Bulma necesita los núcleos de los Androides 14 y 15: adéntrate en la tundra helada, desmontalos y trae los componentes.',
				pt = 'Os androides de clima frio do Dr. Gero estão adormecidos no gelo. Bulma precisa dos núcleos dos Androides 14 e 15 — aventure-se na tundra congelada, desmonte-os e traga os componentes.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Movies Saga|Movies Saga]], quest 22: \'\'Super Android 13\'\'',
					'Be in a Snowy Plains biome',
				},
				es = {
					'[[Special:MyLanguage/Movies Saga|Saga Películas]], misión 22: \'\'Super Androide 13\'\'',
					'Estar en un bioma de Llanura nevada',
				},
				pt = {
					'[[Special:MyLanguage/Movies Saga|Saga de Filmes]], missão 22: \'\'Super Androide 13\'\'',
					'Estar em um bioma de Planícies nevadas',
				},
			},
			objectives = {
				en = {
					'Defeat Android 14',
					'Defeat Android 15',
					'Obtain 6 × [[Special:MyLanguage/Gete Tech|Gete Scrap]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Derrota a Androide 14',
					'Derrota a Androide 15',
					'Consigue 6 × [[Special:MyLanguage/Gete Tech|Chatarra Gete]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Derrote Androide 14',
					'Derrote Androide 15',
					'Obtenha 6 × [[Special:MyLanguage/Gete Tech|Sucata de Gete]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'3 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
				},
				es = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
				},
				pt = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
				},
			},
		},
		{
			id = 'android_shutdown_remote',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'The Shutdown Remote',
				es = 'El Control de Apagado',
				pt = 'O Controle de Desligamento',
			},
			desc = {
				en = 'With Gero\'s blueprints, Bulma can build a remote to shut down the androids. Bring her copper, redstone and gold.',
				es = 'Con los planos de Gero, Bulma puede construir un control remoto para apagar a los androides. Llévale cobre, redstone y oro.',
				pt = 'Com as plantas de Gero, Bulma pode construir um controle remoto para desligar os androides. Leve cobre, redstone e ouro para ela.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 18: \'\'Gero\'s Blueprints\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 18: \'\'Los Planos de Gero\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 18: \'\'Plantas de Gero\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 32 × Copper Ingot to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 32 × Redstone Dust to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 8 × Gold Ingot to [[Special:MyLanguage/Bulma|Bulma]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Entrega 32 × Lingote de cobre a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 32 × Polvo de redstone a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 8 × Lingote de oro a [[Special:MyLanguage/Bulma|Bulma]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Entregue 32 × Lingote de Cobre para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 32 × Pó de Redstone para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 8 × Lingote de Ouro para [[Special:MyLanguage/Bulma|Bulma]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'big_gete_salvage',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Salvage from the Big Gete Star',
				es = 'Salvamento de la Gran Estrella Gete',
				pt = 'Sucata da Estrela Big Gete',
			},
			desc = {
				en = 'The wreckage of the Big Gete Star is crawling with cyclopian guardian robots. Bulma wants you to clear them out and salvage the priceless Gete metal scattered through the hull.',
				es = 'Los restos de la Gran Estrella Gete están infestados de robots guardianes ciclópeos. Bulma quiere que los elimines y recuperes el valioso metal Gete disperso por el casco.',
				pt = 'Os destroços da Estrela Big Gete estão infestados de robôs guardiões ciclopes. Bulma quer que você os elimine e recupere o valioso metal Gete espalhado pelo casco.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Movies Saga|Movies Saga]], quest 19: \'\'Metal Cooler Core\'\'',
				},
				es = {
					'[[Special:MyLanguage/Movies Saga|Saga Películas]], misión 19: \'\'Núcleo de Metal Cooler\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Movies Saga|Saga de Filmes]], missão 19: \'\'Núcleo de Metal Cooler\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 8 × [[Special:MyLanguage/Gete Robot|Gete Robot]]',
					'Obtain 8 × [[Special:MyLanguage/Gete Tech|Gete Scrap]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Derrota a 8 × [[Special:MyLanguage/Gete Robot|Robot Gete]]',
					'Consigue 8 × [[Special:MyLanguage/Gete Tech|Chatarra Gete]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Derrote 8 × [[Special:MyLanguage/Gete Robot|Robô Gete]]',
					'Obtenha 8 × [[Special:MyLanguage/Gete Tech|Sucata de Gete]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'4 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
				},
				es = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'4 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
				},
				pt = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'4 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
				},
			},
		},
		{
			id = 'bulma_android_parts_delivery',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Component Salvage',
				es = 'Recuperación de Componentes',
				pt = 'Recuperação de Componentes',
			},
			desc = {
				en = 'Bulma needs salvaged components — redstone, copper and Kikono shards.',
				es = 'Bulma necesita componentes recuperados: piedra roja, cobre y fragmentos de Kikono.',
				pt = 'Bulma precisa de componentes recuperados — redstone, cobre e fragmentos de Kikono.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 3: \'\'Warning from the Future\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 3: \'\'Advertencia del Futuro\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 3: \'\'Aviso do Futuro\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 24 × Redstone Dust',
					'Obtain 12 × Copper Ingot',
					'Obtain 4 × [[Special:MyLanguage/Kikono Materials|Kikono Shard]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 24 × Polvo de redstone',
					'Consigue 12 × Lingote de cobre',
					'Consigue 4 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 24 × Pó de Redstone',
					'Obtenha 12 × Lingote de Cobre',
					'Obtenha 4 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×15 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×15 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×15 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_android_tech_reverse_engineer',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Android Analysis',
				es = 'Análisis de Androides',
				pt = 'Análise de Androides',
			},
			desc = {
				en = 'Bulma reverse-engineers android technology. Bring redstone and Kikono shards.',
				es = 'Bulma aplica ingeniería inversa a la tecnología androide. Lleva piedra roja y fragmentos de Kikono.',
				pt = 'Bulma faz engenharia reversa da tecnologia de androides. Traga redstone e fragmentos de Kikono.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 5: \'\'Android 19\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 5: \'\'Androide 19\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 5: \'\'Androide 19\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 16 × Redstone Dust',
					'Obtain 6 × [[Special:MyLanguage/Kikono Materials|Kikono Shard]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 16 × Polvo de redstone',
					'Consigue 6 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 16 × Pó de Redstone',
					'Obtenha 6 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×14 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_capsule_development',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Capsule Corp R&D',
				es = 'I+D de Cápsula Corp.',
				pt = 'P&D da Corporação Cápsula',
			},
			desc = {
				en = 'Bulma is prototyping a compact capsule engine. Bring her iron, redstone and pistons and the first unit is yours.',
				es = 'Ayuda a Bulma a prototipar una nueva línea de cápsulas: llévale diamantes y piedra roja.',
				pt = 'Ajude Bulma a prototipar uma nova linha de cápsulas — leve a ela diamantes e Redstone.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 1: \'\'Defeat Raditz\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 1: \'\'Derrota a Raditz\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 1: \'\'Derrote Raditz\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 16 × Iron Ingot to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 16 × Redstone Dust to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 2 × Piston to [[Special:MyLanguage/Bulma|Bulma]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Entrega 16 × Lingote de hierro a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 16 × Polvo de redstone a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 2 × Pistón a [[Special:MyLanguage/Bulma|Bulma]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Entregue 16 × Lingote de Ferro para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 16 × Pó de Redstone para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 2 × Pistão para [[Special:MyLanguage/Bulma|Bulma]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × Vehicle Engine',
				},
				es = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × Motor de Vehículo',
				},
				pt = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × Motor de Veículo',
				},
			},
		},
		{
			id = 'bulma_communication_relay',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Communication Relay',
				es = 'Repetidor de Comunicaciones',
				pt = 'Retransmissor de Comunicação',
			},
			desc = {
				en = 'Bulma is building a long-range comm system. Gather redstone, copper and amethyst.',
				es = 'Bulma está construyendo un sistema de comunicaciones de largo alcance. Consigue piedra roja, cobre y amatista.',
				pt = 'Bulma está construindo um sistema de comunicação de longo alcance. Reúna redstone, cobre e ametista.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 1: \'\'Landing on Namek\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 1: \'\'Aterrizaje en Namek\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 1: \'\'Aterrissagem em Namek\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 16 × Redstone Dust',
					'Obtain 4 × Block of Copper',
					'Obtain 6 × Amethyst Shard',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 16 × Polvo de redstone',
					'Consigue 4 × Bloque de cobre',
					'Consigue 6 × Fragmento de amatista',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 16 × Pó de Redstone',
					'Obtenha 4 × Bloco de Cobre',
					'Obtenha 6 × Fragmento de Ametista',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_emergency_teleport_device',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Emergency Recall',
				es = 'Regreso de Emergencia',
				pt = 'Teletransporte de Emergência',
			},
			desc = {
				en = 'Bulma builds an emergency recall system. Gather ender pearls, obsidian and redstone blocks.',
				es = 'Bulma construye un sistema de regreso de emergencia. Consigue perlas de Ender, obsidiana y bloques de piedra roja.',
				pt = 'Bulma constrói um sistema de teletransporte de emergência. Reúna pérolas de ender, obsidiana e blocos de redstone.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 8: \'\'Tournament: Shin\'\'',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 8: \'\'Torneo: Shin\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 8: \'\'Torneio: Tenshinhan\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 12 × Ender Pearl',
					'Obtain 8 × Obsidian',
					'Obtain 3 × Block of Redstone',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 12 × Perla de ender',
					'Consigue 8 × Obsidiana',
					'Consigue 3 × Bloque de redstone',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 12 × Pérola de Ender',
					'Obtenha 8 × Obsidiana',
					'Obtenha 3 × Bloco de Redstone',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×40 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_energy_storage_battery',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Power Cell Development',
				es = 'Desarrollo de Célula de Energía',
				pt = 'Desenvolvimento de Célula de Energia',
			},
			desc = {
				en = 'A high-capacity power cell needs lapis, redstone blocks and diamonds.',
				es = 'Una célula de energía de alta capacidad necesita lapislázuli, bloques de piedra roja y diamantes.',
				pt = 'Uma célula de energia de alta capacidade precisa de lápis-lazúli, blocos de redstone e diamantes.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_capsule_development|Capsule Corp R&D]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_capsule_development|I+D de Cápsula Corp.]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_capsule_development|P&D da Corporação Cápsula]]',
				},
			},
			objectives = {
				en = {
					'Obtain 32 × Lapis Lazuli',
					'Obtain 3 × Block of Redstone',
					'Obtain 4 × Diamond',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 32 × Lapislázuli',
					'Consigue 3 × Bloque de redstone',
					'Consigue 4 × Diamante',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 32 × Lápis-Lazúli',
					'Obtenha 3 × Bloco de Redstone',
					'Obtenha 4 × Diamante',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_flight_stabilizer',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Flight Stabilizer',
				es = 'Estabilizador de Vuelo',
				pt = 'Estabilizador de Voo',
			},
			desc = {
				en = 'Bulma is building a flight-enhancement module. Bring her feathers, iron and gold and she\'ll machine you a propeller.',
				es = 'Bulma está construyendo un módulo de mejora de vuelo. Necesita plumas, piedra roja y oro.',
				pt = 'Bulma está construindo um módulo de aprimoramento de voo. Ela precisa de penas, redstone e ouro.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 9: \'\'Hold Against Nappa\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 9: \'\'Aguanta contra Nappa\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 9: \'\'Resista Contra Nappa\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 16 × Feather to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 8 × Iron Ingot to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 4 × Gold Ingot to [[Special:MyLanguage/Bulma|Bulma]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Entrega 16 × Pluma a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 8 × Lingote de hierro a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 4 × Lingote de oro a [[Special:MyLanguage/Bulma|Bulma]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Entregue 16 × Pena para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 8 × Lingote de Ferro para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 4 × Lingote de Ouro para [[Special:MyLanguage/Bulma|Bulma]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × Vehicle Propeller',
				},
				es = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × Hélice de Vehículo',
				},
				pt = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × Hélice de Veículo',
				},
			},
		},
		{
			id = 'bulma_gero_blueprints',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Gero\'s Blueprints',
				es = 'Los Planos de Gero',
				pt = 'Plantas de Gero',
			},
			desc = {
				en = 'Bulma needs data from Dr. Gero\'s laboratory to understand the Androids\' weaknesses. Search the lab and bring back redstone circuits and Kikono components.',
				es = 'Bulma necesita datos del laboratorio del Dr. Gero para entender los puntos débiles de los Androides. Registra el laboratorio y tráele circuitos de piedra roja y componentes de Kikono.',
				pt = 'Bulma precisa de dados do laboratório do Dr. Gero para entender as fraquezas dos Androides. Revise o laboratório e traga circuitos de redstone e componentes Kikono.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 6: \'\'Dr. Gero\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 6: \'\'Dr. Gero\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 6: \'\'Dr. Gero\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Dr. Gero\'s Lab|Dr. Gero\'s Lab]]',
					'Obtain 32 × Redstone Dust',
					'Obtain 8 × [[Special:MyLanguage/Kikono Materials|Kikono Shard]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Dr. Gero\'s Lab|Laboratorio del Dr. Gero]]',
					'Consigue 32 × Polvo de redstone',
					'Consigue 8 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Dr. Gero\'s Lab|Laboratório do Dr. Gero]]',
					'Obtenha 32 × Pó de Redstone',
					'Obtenha 8 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_gravity_chamber_parts',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Gravity Components',
				es = 'Componentes de Gravedad',
				pt = 'Componentes de Gravidade',
			},
			desc = {
				en = 'Bulma needs heavy-duty components for a gravity simulator: obsidian, redstone blocks and diamonds.',
				es = 'Bulma necesita componentes resistentes para un simulador de gravedad: obsidiana, bloques de piedra roja y diamantes.',
				pt = 'Bulma precisa de componentes resistentes para um simulador de gravidade: obsidiana, blocos de redstone e diamantes.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 6: \'\'Dr. Gero\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 6: \'\'Dr. Gero\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 6: \'\'Dr. Gero\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 20 × Obsidian',
					'Obtain 4 × Block of Redstone',
					'Obtain 6 × Diamond',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 20 × Obsidiana',
					'Consigue 4 × Bloque de redstone',
					'Consigue 6 × Diamante',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 20 × Obsidiana',
					'Obtenha 4 × Bloco de Redstone',
					'Obtenha 6 × Diamante',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_ki_energy_collector',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Ki Calibration Device',
				es = 'Dispositivo de Calibración de Ki',
				pt = 'Dispositivo de Calibração de Ki',
			},
			desc = {
				en = 'Help calibrate Bulma\'s ki-energy collector with amethyst and lapis.',
				es = 'Ayuda a calibrar el colector de energía de Ki de Bulma con amatista y lapislázuli.',
				pt = 'Ajude a calibrar o coletor de energia ki de Bulma com ametista e lápis-lazúli.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_scouter_calibration|Scouter Calibration]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_scouter_calibration|Calibración del Escáner]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_scouter_calibration|Calibração do Scouter]]',
				},
			},
			objectives = {
				en = {
					'Obtain 12 × Amethyst Shard',
					'Obtain 16 × Lapis Lazuli',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 12 × Fragmento de amatista',
					'Consigue 16 × Lapislázuli',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 12 × Fragmento de Ametista',
					'Obtenha 16 × Lápis-Lazúli',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'3 × Golden Apple',
				},
				es = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × Manzana dorada',
				},
				pt = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × Maçã Dourada',
				},
			},
		},
		{
			id = 'bulma_namek_research',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Namekian Research',
				es = 'Investigación Namekiana',
				pt = 'Pesquisa Namekuseijin',
			},
			desc = {
				en = 'Bulma needs Namekian materials to tune a radar for this alien world. Collect Kikono shards and cloth so the search can begin.',
				es = 'Bulma necesita materiales namekianos para calibrar un radar para este mundo alienígena. Recoge fragmentos y tela de Kikono para que pueda empezar la búsqueda.',
				pt = 'Bulma precisa de materiais Namekuseijins para sintonizar um radar neste mundo alienígena. Colete fragmentos e tecido de Kikono para que a busca possa começar.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 2: \'\'Cui\'s Pursuit\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 2: \'\'La Persecución de Cui\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 2: \'\'Perseguição de Cui\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 16 × [[Special:MyLanguage/Kikono Materials|Kikono Shard]]',
					'Obtain 8 × [[Special:MyLanguage/Kikono Materials|Kikono Cloth]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 16 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]]',
					'Consigue 8 × [[Special:MyLanguage/Kikono Materials|Tela de Kikono]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 16 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]]',
					'Obtenha 8 × [[Special:MyLanguage/Kikono Materials|Tecido de Kikono]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × [[Special:MyLanguage/Dragon Radar|Dragon Radar (Namek)]]',
				},
				es = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Dragon Radar|Radar de Esferas del Dragón (Namek)]]',
				},
				pt = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Dragon Radar|Radar do Dragão (Namek)]]',
				},
			},
		},
		{
			id = 'bulma_namekian_tech_integration',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Namekian Tech',
				es = 'Tecnología Namekiana',
				pt = 'Tecnologia Namekuseijin',
			},
			desc = {
				en = 'Bulma wants to integrate Namekian technology. Gather Kikono shards, copper and redstone.',
				es = 'Bulma quiere integrar tecnología Namekiana. Consigue fragmentos de Kikono, cobre y piedra roja.',
				pt = 'Bulma quer integrar tecnologia Namekuseijin. Reúna fragmentos de Kikono, cobre e redstone.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 5: \'\'Zarbon\'s True Form\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 5: \'\'La Verdadera Forma de Zarbon\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 5: \'\'Forma Verdadeira de Zarbon\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 12 × [[Special:MyLanguage/Kikono Materials|Kikono Shard]]',
					'Obtain 16 × Copper Ingot',
					'Obtain 2 × Block of Redstone',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 12 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]]',
					'Consigue 16 × Lingote de cobre',
					'Consigue 2 × Bloque de redstone',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 12 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]]',
					'Obtenha 16 × Lingote de Cobre',
					'Obtenha 2 × Bloco de Redstone',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×15 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×15 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×15 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_power_level_detector',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Detector Upgrade',
				es = 'Mejora del Detector',
				pt = 'Upgrade do Detector',
			},
			desc = {
				en = 'Upgrade Bulma\'s power-level detector with redstone, glass and amethyst.',
				es = 'Mejora el detector de nivel de poder de Bulma con piedra roja, cristal y amatista.',
				pt = 'Faça um upgrade no detector de nível de poder da Bulma com redstone, vidro e ametista.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_scouter_bioscan|Bio-Scan Module]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_scouter_bioscan|Módulo de Bio-Escáner]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_scouter_bioscan|Módulo de Bio-Scan]]',
				},
			},
			objectives = {
				en = {
					'Obtain 20 × Redstone Dust',
					'Obtain 16 × Glass',
					'Obtain 8 × Amethyst Shard',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 20 × Polvo de redstone',
					'Consigue 16 × Cristal',
					'Consigue 8 × Fragmento de amatista',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 20 × Pó de Redstone',
					'Obtenha 16 × Vidro',
					'Obtenha 8 × Fragmento de Ametista',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_power_suppression_unit',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Power Limiter',
				es = 'Limitador de Poder',
				pt = 'Limitador de Poder',
			},
			desc = {
				en = 'Bulma is prototyping a power limiter. Gather redstone, glass and diamonds.',
				es = 'Bulma está prototipando un limitador de poder. Consigue piedra roja, cristal y diamantes.',
				pt = 'Bulma está criando um protótipo de limitador de poder. Reúna redstone, vidro e diamantes.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 4: \'\'Three Years of Preparation\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 4: \'\'Tres Años de Preparación\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 4: \'\'Três Anos de Preparação\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 24 × Redstone Dust',
					'Obtain 12 × Glass',
					'Obtain 4 × Diamond',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 24 × Polvo de redstone',
					'Consigue 12 × Cristal',
					'Consigue 4 × Diamante',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 24 × Pó de Redstone',
					'Obtenha 12 × Vidro',
					'Obtenha 4 × Diamante',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×15 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×15 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×15 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_radar_parts',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Radar Upgrade',
				es = 'Mejora del Radar',
				pt = 'Upgrade do Radar',
			},
			desc = {
				en = 'Bulma needs specific materials to improve the Dragon Radar\'s range. Gather redstone, copper, and gold for her — she\'ll make it worth your while.',
				es = 'Bulma necesita materiales concretos para mejorar el alcance del Radar de Esferas del Dragón. Consíguele piedra roja, cobre y oro: te lo compensará.',
				pt = 'Bulma precisa de materiais específicos para melhorar o alcance do Radar do Dragão. Reúna redstone, cobre e ouro para ela, e ela fará valer a pena.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 8: \'\'Kill the Saibamen\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 8: \'\'Rumbo a Namek\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 8: \'\'Siga para Namek\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 16 × Redstone Dust',
					'Obtain 16 × Copper Ingot',
					'Obtain 8 × Gold Ingot',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 16 × Polvo de redstone',
					'Consigue 16 × Lingote de cobre',
					'Consigue 8 × Lingote de oro',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 16 × Pó de Redstone',
					'Obtenha 16 × Lingote de Cobre',
					'Obtenha 8 × Lingote de Ouro',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × [[Special:MyLanguage/Dragon Radar|Dragon Radar (Earth)]]',
				},
				es = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Dragon Radar|Radar de Esferas del Dragón (Tierra)]]',
				},
				pt = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Dragon Radar|Radar do Dragão (Terra)]]',
				},
			},
		},
		{
			id = 'bulma_rare_mineral_survey',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Rare Mineral Survey',
				es = 'Prospección de Minerales Raros',
				pt = 'Levantamento de Minerais Raros',
			},
			desc = {
				en = 'Bulma is testing a lighter alloy for vehicle hulls. Bring her iron, copper and amethyst to forge some plating.',
				es = 'Bulma necesita muestras de materiales raros para su investigación. Consigue amatista y cobre.',
				pt = 'Bulma precisa de amostras de materiais raros para sua pesquisa. Reúna ametista e cobre.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 8: \'\'Kill the Saibamen\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 8: \'\'Rumbo a Namek\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 8: \'\'Siga para Namek\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 12 × Iron Ingot to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 12 × Copper Ingot to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 4 × Amethyst Shard to [[Special:MyLanguage/Bulma|Bulma]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Entrega 12 × Lingote de hierro a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 12 × Lingote de cobre a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 4 × Fragmento de amatista a [[Special:MyLanguage/Bulma|Bulma]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Entregue 12 × Lingote de Ferro para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 12 × Lingote de Cobre para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 4 × Fragmento de Ametista para [[Special:MyLanguage/Bulma|Bulma]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'2 × Vehicle Plating',
				},
				es = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × Blindaje de Vehículo',
				},
				pt = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × Blindagem de Veículo',
				},
			},
		},
		{
			id = 'bulma_senzu_bean_substitute',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Synthetic Healing',
				es = 'Curación Sintética',
				pt = 'Cura Sintética',
			},
			desc = {
				en = 'Bulma researches a synthetic healing agent. Bring golden carrots, glow berries and Kikono cloth.',
				es = 'Bulma investiga un agente curativo sintético. Lleva zanahorias doradas, bayas brillantes y tela de Kikono.',
				pt = 'Bulma pesquisa um agente de cura sintético. Traga cenouras douradas, frutos brilhantes e tecido Kikono.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 8: \'\'Recoome\'s Rampage\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 8: \'\'El Arrebato de Recoome\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 8: \'\'Fúria de Recoome\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 12 × Golden Carrot',
					'Obtain 8 × Glow Berries',
					'Obtain 2 × [[Special:MyLanguage/Kikono Materials|Kikono Cloth]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 12 × Zanahoria dorada',
					'Consigue 8 × Bayas luminosas',
					'Consigue 2 × [[Special:MyLanguage/Kikono Materials|Tela de Kikono]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 12 × Cenoura Dourada',
					'Obtenha 8 × Bagas Brilhantes',
					'Obtenha 2 × [[Special:MyLanguage/Kikono Materials|Tecido de Kikono]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_vehicle_upholstery',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Comfortable Ride',
				es = 'Un Viaje Cómodo',
				pt = 'Viagem Confortável',
			},
			desc = {
				en = 'Bulma refuses to sit on bare metal. Bring her leather, cyan wool and iron so she can upholster some vehicle seats.',
				es = 'Bulma se niega a sentarse sobre metal pelado. Llévale cuero, lana cian y hierro para que pueda tapizar unos asientos de vehículo.',
				pt = 'Bulma se recusa a sentar em metal puro. Leve couro, lã ciano e ferro para ela estofar alguns assentos de veículo.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 3: \'\'Wilderness Training\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 3: \'\'Elimina a los Saibamen\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 3: \'\'Mate os Saibamen\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 8 × Leather to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 4 × Cyan Wool to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 4 × Iron Ingot to [[Special:MyLanguage/Bulma|Bulma]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Entrega 8 × Cuero a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 4 × Lana cian a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 4 × Lingote de hierro a [[Special:MyLanguage/Bulma|Bulma]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Entregue 8 × Couro para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 4 × Lã Ciano para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 4 × Lingote de Ferro para [[Special:MyLanguage/Bulma|Bulma]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'2 × Vehicle Seat',
				},
				es = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × Asiento de Vehículo',
				},
				pt = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × Assento de Veículo',
				},
			},
		},
		{
			id = 'bulma_weapon_analysis',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Weapon Blueprints',
				es = 'Planos de Arma',
				pt = 'Plantas de Armas',
			},
			desc = {
				en = 'Bring Bulma a weapon and components so she can analyze its design.',
				es = 'Lleva a Bulma un arma y componentes para que pueda analizar su diseño.',
				pt = 'Traga a Bulma uma arma e componentes para que ela possa analisar seu design.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Radar Upgrade]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Mejora del Radar]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Upgrade do Radar]]',
				},
			},
			objectives = {
				en = {
					'Obtain 1 × Iron Sword',
					'Obtain 12 × Redstone Dust',
					'Obtain 8 × Copper Ingot',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 1 × Espada de hierro',
					'Consigue 12 × Polvo de redstone',
					'Consigue 8 × Lingote de cobre',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 1 × Espada de Ferro',
					'Obtenha 12 × Pó de Redstone',
					'Obtenha 8 × Lingote de Cobre',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'buu_candy_cravings',
			category = 'collection',
			giver = '',
			turnin = '',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Candy Cravings',
				es = 'Antojo de Dulces',
				pt = 'Desejo de Doces',
			},
			desc = {
				en = 'Majin Buu gets grumpy without sweets. Visit Buu\'s house and gather cookies, cakes and pumpkin pies.',
				es = 'Majin Buu se pone de mal humor sin dulces. Visita la casa de Buu y reúne galletas, pasteles y tartas de calabaza.',
				pt = 'Majin Boo fica mal-humorado sem doces. Visite a casa do Boo e junte biscoitos, bolos e tortas de abóbora.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 20: \'\'Evil Buu\'\'',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 20: \'\'Buu Maligno\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 20: \'\'Boo Maligno\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Majin Buu\'s House|Majin Buu\'s House]]',
					'Obtain 32 × Cookie',
					'Obtain 2 × Cake',
					'Obtain 8 × Pumpkin Pie',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Majin Buu\'s House|Casa de Majin Buu]]',
					'Consigue 32 × Galleta',
					'Consigue 2 × Tarta',
					'Consigue 8 × Tarta de calabaza',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Majin Buu\'s House|Casa do Majin Boo]]',
					'Obtenha 32 × Biscoito',
					'Obtenha 2 × Bolo',
					'Obtenha 8 × Torta de Abóbora',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'buu_saga_dragon_balls',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Dragon Balls for the Final Battle',
				es = 'Esferas del Dragón para la Batalla Final',
				pt = 'Esferas do Dragão para a Batalha Final',
			},
			desc = {
				en = 'Bulma wants the Earth Dragon Balls ready before Buu\'s threat gets worse. Summon Shenron and return to her with the result.',
				es = 'Bulma quiere las Esferas del Dragón de la Tierra listas antes de que la amenaza de Buu empeore. Invoca a Shenron y regresa con ella para contárselo.',
				pt = 'Bulma quer as Esferas do Dragão da Terra prontas antes que a ameaça de Boo piore. Invoque Shenlong e volte a ela com o resultado.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 18: \'\'Super Saiyan 3\'\'',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 18: \'\'Super Saiyajin 3\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 18: \'\'Super Saiyajin 3\'\'',
				},
			},
			objectives = {
				en = {
					'Summon [[Special:MyLanguage/Shenron|Shenron]] with the Earth Dragon Balls',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Invoca a [[Special:MyLanguage/Shenron|Shenron]] con las Esferas del Dragón de la Tierra',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Invoque [[Special:MyLanguage/Shenron|Shenlong]] com as Esferas do Dragão da Terra',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'3 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
				},
				es = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
				},
				pt = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
				},
			},
		},
		{
			id = 'chi_chi_provisions',
			category = 'collection',
			giver = 'goku',
			turnin = 'goku',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Provisions for Battle',
				es = 'Provisiones para la Batalla',
				pt = 'Provisões para a Batalha',
			},
			desc = {
				en = 'Goku is preparing a feast for the warriors before the final battle against the Saiyans. Help gather enough food to feed everyone.',
				es = 'Goku está preparando un festín para los guerreros antes de la batalla final contra los Saiyajins. Ayuda a conseguir suficiente comida para alimentar a todos.',
				pt = 'Goku está preparando um banquete para os guerreiros antes da batalha final contra os Saiyajins. Ajude a reunir comida suficiente para alimentar todos.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Goku|Goku]]',
				es = '[[Special:MyLanguage/Goku|Goku]]',
				pt = '[[Special:MyLanguage/Goku|Goku]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 11: \'\'Face Vegeta\'\'',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 11: \'\'Enfréntate a Vegeta\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 11: \'\'Enfrente Vegeta\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 32 × Steak',
					'Obtain 32 × Bread',
					'Obtain 8 × Golden Carrot',
					'Talk to [[Special:MyLanguage/Goku|Goku]]',
				},
				es = {
					'Consigue 32 × Filete asado',
					'Consigue 32 × Pan',
					'Consigue 8 × Zanahoria dorada',
					'Habla con [[Special:MyLanguage/Goku|Goku]]',
				},
				pt = {
					'Obtenha 32 × Filé',
					'Obtenha 32 × Pão',
					'Obtenha 8 × Cenoura Dourada',
					'Fale com [[Special:MyLanguage/Goku|Goku]]',
				},
			},
			rewards = {
				en = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'5 × Golden Apple',
				},
				es = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'5 × Manzana dorada',
				},
				pt = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'5 × Maçã Dourada',
				},
			},
		},
		{
			id = 'chiaotzu_gift_for_tien',
			category = 'collection',
			giver = 'chiaotzu',
			turnin = 'chiaotzu',
			ordered = true,
			repeatable = false,
			name = {
				en = 'A Gift for Tien',
				es = 'Un Regalo para Ten Shin Han',
				pt = 'Um Presente para Tenshinhan',
			},
			desc = {
				en = 'Tien trains so hard he forgets to eat. Chiaotzu asks you to bring him cooked salmon and bread, then come back and tell him how it went.',
				es = 'Ten Shin Han entrena tanto que se olvida de comer. Chaozu te pide que le lleves salmón cocido y pan, y que después vuelvas a contarle cómo te fue.',
				pt = 'Tenshinhan treina tanto que esquece de comer. Chaoz pede que você leve salmão assado e pão para ele e depois volte para contar como foi.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Chiaotzu|Chiaotzu]]',
				es = '[[Special:MyLanguage/Chiaotzu|Chaozu]]',
				pt = '[[Special:MyLanguage/Chiaotzu|Chaoz]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-chiaotzu_psychic_sparring|Psychic Sparring]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-chiaotzu_psychic_sparring|Combate Psíquico]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-chiaotzu_psychic_sparring|Treino Psíquico]]',
				},
			},
			objectives = {
				en = {
					'Deliver 10 × Cooked Salmon to [[Special:MyLanguage/Master Tien|Master Tien]]',
					'Deliver 10 × Bread to [[Special:MyLanguage/Master Tien|Master Tien]]',
					'Talk to [[Special:MyLanguage/Chiaotzu|Chiaotzu]]',
				},
				es = {
					'Entrega 10 × Salmón ahumado a [[Special:MyLanguage/Master Tien|Maestro Ten Shin Han]]',
					'Entrega 10 × Pan a [[Special:MyLanguage/Master Tien|Maestro Ten Shin Han]]',
					'Habla con [[Special:MyLanguage/Chiaotzu|Chaozu]]',
				},
				pt = {
					'Entregue 10 × Salmão Assado para [[Special:MyLanguage/Master Tien|Mestre Tenshinhan]]',
					'Entregue 10 × Pão para [[Special:MyLanguage/Master Tien|Mestre Tenshinhan]]',
					'Fale com [[Special:MyLanguage/Chiaotzu|Chaoz]]',
				},
			},
			rewards = {
				en = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
				},
				es = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
				},
				pt = {
					'×3 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
				},
			},
		},
		{
			id = 'classic_baba_crystal_ball',
			category = 'collection',
			giver = 'baba_earth',
			turnin = 'baba_earth',
			ordered = true,
			repeatable = false,
			name = {
				en = 'A New Crystal Ball',
				es = 'Una Nueva Bola de Cristal',
				pt = 'Uma Nova Bola de Cristal',
			},
			desc = {
				en = 'Fortuneteller Baba\'s crystal ball is cracked. Bring her glass and amethyst to make a new one.',
				es = 'La bola de cristal de la Adivina Baba está agrietada. Llévale cristal y amatista para hacer una nueva.',
				pt = 'A bola de cristal da Vovó Uranai está rachada. Leve vidro e ametista para ela fazer uma nova.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Fortuneteller Baba|Fortuneteller Baba]]',
				es = '[[Special:MyLanguage/Fortuneteller Baba|Adivina Baba]]',
				pt = '[[Special:MyLanguage/Fortuneteller Baba|Vovó Uranai]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Classic Saga|Classic Saga]], quest 23: \'\'Fortuneteller Baba\'\'',
				},
				es = {
					'[[Special:MyLanguage/Classic Saga|Saga Clásica]], misión 23: \'\'La Adivina Baba\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Classic Saga|Saga Clássica]], missão 23: \'\'Vovó Uranai\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 8 × Glass to [[Special:MyLanguage/Fortuneteller Baba|Fortuneteller Baba]]',
					'Deliver 4 × Amethyst Shard to [[Special:MyLanguage/Fortuneteller Baba|Fortuneteller Baba]]',
					'Talk to [[Special:MyLanguage/Fortuneteller Baba|Fortuneteller Baba]]',
				},
				es = {
					'Entrega 8 × Cristal a [[Special:MyLanguage/Fortuneteller Baba|Adivina Baba]]',
					'Entrega 4 × Fragmento de amatista a [[Special:MyLanguage/Fortuneteller Baba|Adivina Baba]]',
					'Habla con [[Special:MyLanguage/Fortuneteller Baba|Adivina Baba]]',
				},
				pt = {
					'Entregue 8 × Vidro para [[Special:MyLanguage/Fortuneteller Baba|Vovó Uranai]]',
					'Entregue 4 × Fragmento de Ametista para [[Special:MyLanguage/Fortuneteller Baba|Vovó Uranai]]',
					'Fale com [[Special:MyLanguage/Fortuneteller Baba|Vovó Uranai]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'classic_giant_fish_dinner',
			category = 'collection',
			giver = 'goku',
			turnin = 'goku',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Giant Fish Dinner',
				es = 'Cena de Pez Gigante',
				pt = 'Jantar de Peixe Gigante',
			},
			desc = {
				en = 'Goku is starving as usual. Catch two giant fish, cook them and bring the meal to his house.',
				es = 'Goku se muere de hambre, como siempre. Atrapa dos peces gigantes, cocínalos y lleva la comida a su casa.',
				pt = 'Goku está morrendo de fome, como sempre. Pegue dois peixes gigantes, cozinhe-os e leve a refeição para a casa dele.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Goku|Goku]]',
				es = '[[Special:MyLanguage/Goku|Goku]]',
				pt = '[[Special:MyLanguage/Goku|Goku]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Classic Saga|Classic Saga]], quest 1: \'\'A Fishy Welcome\'\'',
				},
				es = {
					'[[Special:MyLanguage/Classic Saga|Saga Clásica]], misión 1: \'\'Una Bienvenida Escamosa\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Classic Saga|Saga Clássica]], missão 1: \'\'Boas-Vindas Escamosas\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 2 × [[Special:MyLanguage/Giant Fish|Giant Fish]]',
					'Deliver 2 × [[Special:MyLanguage/Food|Cooked Giant Fish]] to [[Special:MyLanguage/Goku|Goku]]',
					'Talk to [[Special:MyLanguage/Goku|Goku]]',
				},
				es = {
					'Derrota a 2 × [[Special:MyLanguage/Giant Fish|Pez gigante]]',
					'Entrega 2 × [[Special:MyLanguage/Food|Pez gigante cocinado]] a [[Special:MyLanguage/Goku|Goku]]',
					'Habla con [[Special:MyLanguage/Goku|Goku]]',
				},
				pt = {
					'Derrote 2 × [[Special:MyLanguage/Giant Fish|Peixe gigante]]',
					'Entregue 2 × [[Special:MyLanguage/Food|Peixe gigante cozido]] para [[Special:MyLanguage/Goku|Goku]]',
					'Fale com [[Special:MyLanguage/Goku|Goku]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'classic_kame_house_groceries',
			category = 'collection',
			giver = 'roshi',
			turnin = 'roshi',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Kame House Groceries',
				es = 'Compras para Kame House',
				pt = 'Compras para a Casa do Kame',
			},
			desc = {
				en = 'Master Roshi\'s fridge is empty again. Bring him cod and bread so training can continue.',
				es = 'El refrigerador del Maestro Roshi está vacío otra vez. Llévale bacalao y pan para que el entrenamiento pueda continuar.',
				pt = 'A geladeira do Mestre Kame está vazia de novo. Leve bacalhau e pão para ele para que o treino possa continuar.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Master Roshi|Master Roshi]]',
				es = '[[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
				pt = '[[Special:MyLanguage/Master Roshi|Mestre Kame]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Classic Saga|Classic Saga]], quest 6: \'\'The Turtle Hermit\'\'',
				},
				es = {
					'[[Special:MyLanguage/Classic Saga|Saga Clásica]], misión 6: \'\'El Ermitaño Tortuga\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Classic Saga|Saga Clássica]], missão 6: \'\'O Eremita Tartaruga\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 8 × Raw Cod to [[Special:MyLanguage/Master Roshi|Master Roshi]]',
					'Deliver 8 × Bread to [[Special:MyLanguage/Master Roshi|Master Roshi]]',
					'Talk to [[Special:MyLanguage/Master Roshi|Master Roshi]]',
				},
				es = {
					'Entrega 8 × Bacalao crudo a [[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
					'Entrega 8 × Pan a [[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
					'Habla con [[Special:MyLanguage/Master Roshi|Maestro Roshi]]',
				},
				pt = {
					'Entregue 8 × Bacalhau Cru para [[Special:MyLanguage/Master Roshi|Mestre Kame]]',
					'Entregue 8 × Pão para [[Special:MyLanguage/Master Roshi|Mestre Kame]]',
					'Fale com [[Special:MyLanguage/Master Roshi|Mestre Kame]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'classic_korin_senzu_harvest',
			category = 'collection',
			giver = 'karin',
			turnin = 'karin',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Senzu Harvest',
				es = 'Cosecha de Semillas del Ermitaño',
				pt = 'Colheita de Sementes dos Deuses',
			},
			desc = {
				en = 'Master Korin needs seeds to grow a new batch of Senzu Beans. Bring him the seeds and he\'ll share a few.',
				es = 'El Maestro Korin necesita semillas para cultivar una nueva tanda de Semillas del Ermitaño. Llévale las semillas y te dará algunas.',
				pt = 'O Mestre Karin precisa de sementes para cultivar um novo lote de Sementes dos Deuses. Leve as sementes para ele e ele vai dividir algumas com você.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Korin|Korin]]',
				es = '[[Special:MyLanguage/Korin|Korin]]',
				pt = '[[Special:MyLanguage/Korin|Karin]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Classic Saga|Classic Saga]], quest 19: \'\'The Sacred Water\'\'',
				},
				es = {
					'[[Special:MyLanguage/Classic Saga|Saga Clásica]], misión 19: \'\'El Agua Sagrada\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Classic Saga|Saga Clássica]], missão 19: \'\'A Água Sagrada\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 32 × Wheat Seeds to [[Special:MyLanguage/Korin|Korin]]',
					'Talk to [[Special:MyLanguage/Korin|Korin]]',
				},
				es = {
					'Entrega 32 × Semillas de trigo a [[Special:MyLanguage/Korin|Korin]]',
					'Habla con [[Special:MyLanguage/Korin|Korin]]',
				},
				pt = {
					'Entregue 32 × Sementes de Trigo para [[Special:MyLanguage/Korin|Karin]]',
					'Fale com [[Special:MyLanguage/Korin|Karin]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
				},
			},
		},
		{
			id = 'classic_lookout_garden',
			category = 'collection',
			giver = 'popo',
			turnin = 'popo',
			ordered = true,
			repeatable = false,
			name = {
				en = 'The Lookout Garden',
				es = 'El Jardín de la Atalaya',
				pt = 'O Jardim do Mirante',
			},
			desc = {
				en = 'Mr. Popo takes care of the garden at Kami\'s Lookout. Bring him flowers to replant it.',
				es = 'El Sr. Popo cuida el jardín de la Atalaya de Kami. Llévale flores para replantarlo.',
				pt = 'O Sr Popo cuida do jardim do Mirante de Kami. Leve flores para ele replantá-lo.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Mr. Popo|Mr. Popo]]',
				es = '[[Special:MyLanguage/Mr. Popo|Sr. Popo]]',
				pt = '[[Special:MyLanguage/Mr. Popo|Sr Popo]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Classic Saga|Classic Saga]], quest 46: \'\'Training at the Lookout\'\'',
				},
				es = {
					'[[Special:MyLanguage/Classic Saga|Saga Clásica]], misión 46: \'\'Entrenamiento en la Atalaya\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Classic Saga|Saga Clássica]], missão 46: \'\'Treino no Mirante\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 12 × Poppy to [[Special:MyLanguage/Mr. Popo|Mr. Popo]]',
					'Deliver 12 × Dandelion to [[Special:MyLanguage/Mr. Popo|Mr. Popo]]',
					'Talk to [[Special:MyLanguage/Mr. Popo|Mr. Popo]]',
				},
				es = {
					'Entrega 12 × Amapola a [[Special:MyLanguage/Mr. Popo|Sr. Popo]]',
					'Entrega 12 × Diente de león a [[Special:MyLanguage/Mr. Popo|Sr. Popo]]',
					'Habla con [[Special:MyLanguage/Mr. Popo|Sr. Popo]]',
				},
				pt = {
					'Entregue 12 × Papoula para [[Special:MyLanguage/Mr. Popo|Sr Popo]]',
					'Entregue 12 × Dente-de-Leão para [[Special:MyLanguage/Mr. Popo|Sr Popo]]',
					'Fale com [[Special:MyLanguage/Mr. Popo|Sr Popo]]',
				},
			},
			rewards = {
				en = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×2 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'collect_dragon_balls',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Summon Shenron',
				es = 'Invoca a Shenron',
				pt = 'Invoque Shenlong',
			},
			desc = {
				en = 'Bulma\'s radar is ready. Find the seven Earth Dragon Balls, bring them together, summon Shenron, and report back.',
				es = 'El radar de Bulma está listo. Encuentra las siete Esferas del Dragón de la Tierra, júntalas, invoca a Shenron e informa.',
				pt = 'O radar de Bulma está pronto. Encontre as sete Esferas do Dragão da Terra, reúna-as, invoque Shenlong e volte com o relatório.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 11: \'\'Face Vegeta\'\'',
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Radar Upgrade]]',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 11: \'\'Enfréntate a Vegeta\'\'',
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Mejora del Radar]]',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 11: \'\'Enfrente Vegeta\'\'',
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Upgrade do Radar]]',
				},
			},
			objectives = {
				en = {
					'Summon [[Special:MyLanguage/Shenron|Shenron]] with the Earth Dragon Balls',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Invoca a [[Special:MyLanguage/Shenron|Shenron]] con las Esferas del Dragón de la Tierra',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Invoque [[Special:MyLanguage/Shenron|Shenlong]] com as Esferas do Dragão da Terra',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'daima_majilite_research',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Majilite Samples',
				es = 'Muestras de Majilita',
				pt = 'Amostras de Majilita',
			},
			desc = {
				en = 'Bulma wants to study majilite, an ore hidden in the rocks of the Second Demon World. Mine 16 pieces and bring them to her.',
				es = 'Bulma quiere estudiar la majilita, un mineral escondido en las rocas del Segundo Mundo Demoníaco. Extrae 16 piezas y llévaselas.',
				pt = 'Bulma quer estudar a majilita, um minério escondido nas rochas do Segundo Mundo Demoníaco. Minere 16 pedaços e leve para ela.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Daima Saga|Daima Saga]], quest 9: \'\'The Second Demon World\'\'',
				},
				es = {
					'[[Special:MyLanguage/Daima Saga|Saga Daima]], misión 9: \'\'El Segundo Mundo Demoníaco\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Daima Saga|Saga Daima]], missão 9: \'\'O Segundo Mundo Demoníaco\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 16 × Majilite to [[Special:MyLanguage/Bulma|Bulma]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Entrega 16 × Majilita a [[Special:MyLanguage/Bulma|Bulma]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Entregue 16 × Majilita para [[Special:MyLanguage/Bulma|Bulma]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
				},
				es = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
				},
				pt = {
					'×55 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
				},
			},
		},
		{
			id = 'daima_medi_bug_market',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = true,
			name = {
				en = 'Medi-Bug Market',
				es = 'Mercado de Medi-Bugs',
				pt = 'Mercado de Medi-Bugs',
			},
			desc = {
				en = 'Bulma found a Demon Realm merchant who sells Medi-Bugs. Bring her emeralds and gold ingots and she will order a batch, a Beetle pair included. You can buy again once an hour.',
				es = 'Bulma encontró a un comerciante del Reino Demoníaco que vende Medi-Bugs. Llévale esmeraldas y lingotes de oro y pedirá un lote, con una pareja de Escarabajos incluida. Puedes volver a comprar una vez por hora.',
				pt = 'Bulma encontrou um mercador do Reino Demoníaco que vende Medi-Bugs. Leve esmeraldas e lingotes de ouro para ela e ela vai encomendar um lote, com um par de Besouros incluído. Você pode comprar de novo uma vez por hora.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Daima Saga|Daima Saga]], quest 4: \'\'The Third Demon World\'\'',
				},
				es = {
					'[[Special:MyLanguage/Daima Saga|Saga Daima]], misión 4: \'\'El Tercer Mundo Demoníaco\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Daima Saga|Saga Daima]], missão 4: \'\'O Terceiro Mundo Demoníaco\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 12 × Emerald to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 8 × Gold Ingot to [[Special:MyLanguage/Bulma|Bulma]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Entrega 12 × Esmeralda a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 8 × Lingote de oro a [[Special:MyLanguage/Bulma|Bulma]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Entregue 12 × Esmeralda para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 8 × Lingote de Ouro para [[Special:MyLanguage/Bulma|Bulma]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'4 × [[Special:MyLanguage/Medi-Bugs|Medi-Bug (Ant)]]',
					'4 × [[Special:MyLanguage/Medi-Bugs|Medi-Bug (Rhino)]]',
					'4 × [[Special:MyLanguage/Medi-Bugs|Medi-Bug (Worm)]]',
					'1 × [[Special:MyLanguage/Medi-Bugs|Pair of Medi-Bugs (Beetle)]]',
				},
				es = {
					'4 × [[Special:MyLanguage/Medi-Bugs|Medi-Bug (Hormiga)]]',
					'4 × [[Special:MyLanguage/Medi-Bugs|Medi-Bug (Rinoceronte)]]',
					'4 × [[Special:MyLanguage/Medi-Bugs|Medi-Bug (Gusano)]]',
					'1 × [[Special:MyLanguage/Medi-Bugs|Pareja de Medi-Bugs (Escarabajo)]]',
				},
				pt = {
					'4 × [[Special:MyLanguage/Medi-Bugs|Medi-Bug (Formiga)]]',
					'4 × [[Special:MyLanguage/Medi-Bugs|Medi-Bug (Rinoceronte)]]',
					'4 × [[Special:MyLanguage/Medi-Bugs|Medi-Bug (Minhoca)]]',
					'1 × [[Special:MyLanguage/Medi-Bugs|Par de Medi-Bugs (Besouro)]]',
				},
			},
		},
		{
			id = 'frieza_ajissa_seedlings',
			category = 'collection',
			giver = 'guru',
			turnin = 'guru',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Ajissa Seedlings',
				es = 'Plantones de Ajissa',
				pt = 'Mudas de Ajissa',
			},
			desc = {
				en = 'The Grand Elder wants to replant the trees burned by Frieza\'s army. Bring him water, saplings and bone meal.',
				es = 'El Gran Anciano quiere replantar los árboles que quemó el ejército de Freezer. Llévale agua, brotes y polvo de hueso.',
				pt = 'O Grande Ancião quer replantar as árvores queimadas pelo exército de Freeza. Leve água, mudas e farinha de osso para ele.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
				es = '[[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
				pt = '[[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 18: \'\'Journey to the Grand Elder\'\'',
					'Be in [[Special:MyLanguage/Namek|Namek]]',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 18: \'\'Viaje hacia el Gran Anciano\'\'',
					'Estar en [[Special:MyLanguage/Namek|Namek]]',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 18: \'\'Jornada até o Grande Ancião\'\'',
					'Estar em [[Special:MyLanguage/Namek|Namekusei]]',
				},
			},
			objectives = {
				en = {
					'Deliver 6 × Water Bucket to [[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
					'Deliver 16 × Oak Sapling to [[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
					'Deliver 32 × Bone Meal to [[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
					'Talk to [[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
				},
				es = {
					'Entrega 6 × Cubo con agua a [[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
					'Entrega 16 × Brote de roble a [[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
					'Entrega 32 × Polvo de hueso a [[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
					'Habla con [[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
				},
				pt = {
					'Entregue 6 × Balde de Água para [[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
					'Entregue 16 × Muda de Carvalho para [[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
					'Entregue 32 × Farinha de Osso para [[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
					'Fale com [[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
				},
			},
			rewards = {
				en = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'frieza_scouter_salvage',
			category = 'collection',
			giver = '',
			turnin = '',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Scouter Salvage',
				es = 'Recuperación de Escáneres',
				pt = 'Recuperação de Scouters',
			},
			desc = {
				en = 'Frieza\'s soldiers carry useful scouter parts. Defeat 12 of them and gather redstone and glass panes to rebuild one.',
				es = 'Los soldados de Freezer llevan piezas de escáner útiles. Derrota a 12 de ellos y reúne redstone y paneles de cristal para reconstruir uno.',
				pt = 'Os soldados de Freeza carregam peças úteis de scouter. Derrote 12 deles e junte redstone e vidraças para reconstruir um.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 4: \'\'The Cruel Dodoria\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 4: \'\'El Cruel Dodoria\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 4: \'\'O Cruel Dodoria\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 12 × [[Special:MyLanguage/Frieza Soldier|Frieza\'s soldiers]]',
					'Obtain 24 × Redstone Dust',
					'Obtain 8 × Glass Pane',
				},
				es = {
					'Derrota a 12 × [[Special:MyLanguage/Frieza Soldier|soldados de Freezer]]',
					'Consigue 24 × Polvo de redstone',
					'Consigue 8 × Panel de cristal',
				},
				pt = {
					'Derrote 12 × [[Special:MyLanguage/Frieza Soldier|soldados de Freeza]]',
					'Obtenha 24 × Pó de Redstone',
					'Obtenha 8 × Vidraça',
				},
			},
			rewards = {
				en = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gohan_dragon_balls_namek',
			category = 'collection',
			giver = 'guru',
			turnin = 'guru',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Summon Porunga',
				es = 'Invoca a Porunga',
				pt = 'Invoque Porunga',
			},
			desc = {
				en = 'Guru entrusts you with the village\'s greatest hope. Find the seven Namekian Dragon Balls, summon Porunga, and return safely.',
				es = 'Gurú te confía la mayor esperanza de la aldea. Encuentra las siete Esferas del Dragón de Namek, invoca a Porunga y regresa sano y salvo.',
				pt = 'Guru confia a você a maior esperança da vila. Encontre as sete Esferas do Dragão de Namek, invoque Porunga e retorne em segurança.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
				es = '[[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
				pt = '[[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 3: \'\'Defend the Namekians\'\'',
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_namek_research|Namekian Research]]',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 3: \'\'Defiende a los Namekianos\'\'',
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_namek_research|Investigación Namekiana]]',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 3: \'\'Defenda os Namekuseijins\'\'',
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_namek_research|Pesquisa Namekuseijin]]',
				},
			},
			objectives = {
				en = {
					'Summon [[Special:MyLanguage/Porunga|Porunga]] with the Namek Dragon Balls',
					'Talk to [[Special:MyLanguage/Grand Elder Guru|Grand Elder Guru]]',
				},
				es = {
					'Invoca a [[Special:MyLanguage/Porunga|Porunga]] con las Esferas del Dragón de Namek',
					'Habla con [[Special:MyLanguage/Grand Elder Guru|Gran Anciano Gurú]]',
				},
				pt = {
					'Invoque [[Special:MyLanguage/Porunga|Porunga]] com as Esferas do Dragão de Namekusei',
					'Fale com [[Special:MyLanguage/Grand Elder Guru|Grande Ancião Guru]]',
				},
			},
			rewards = {
				en = {
					'×18 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×18 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×18 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gt_luud_scrap_metal',
			category = 'collection',
			giver = '',
			turnin = '',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Luud\'s Scrap',
				es = 'La Chatarra de Luud',
				pt = 'A Sucata de Luud',
			},
			desc = {
				en = 'Luud\'s wreck is full of salvageable metal. Collect iron, copper and gold ingots to patch up the ship\'s hull.',
				es = 'Los restos de Luud están llenos de metal aprovechable. Reúne lingotes de hierro, cobre y oro para reparar el casco de la nave.',
				pt = 'Os destroços de Luud estão cheios de metal reaproveitável. Junte lingotes de ferro, cobre e ouro para remendar o casco da nave.',
			},
			giverText = nil,
			unlock = {
				en = {
					'[[Special:MyLanguage/GT Saga|GT Saga]], quest 5: \'\'Lord Luud\'\'',
				},
				es = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], misión 5: \'\'Lord Luud\'\'',
				},
				pt = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], missão 5: \'\'Lord Luud\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 32 × Iron Ingot',
					'Obtain 32 × Copper Ingot',
					'Obtain 8 × Gold Ingot',
				},
				es = {
					'Consigue 32 × Lingote de hierro',
					'Consigue 32 × Lingote de cobre',
					'Consigue 8 × Lingote de oro',
				},
				pt = {
					'Obtenha 32 × Lingote de Ferro',
					'Obtenha 32 × Lingote de Cobre',
					'Obtenha 8 × Lingote de Ouro',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gt_old_kai_reading',
			category = 'collection',
			giver = 'oldkai',
			turnin = 'oldkai',
			ordered = true,
			repeatable = false,
			name = {
				en = 'The Elder Kai\'s Reading',
				es = 'Las Lecturas del Kaioshin Anciano',
				pt = 'A Leitura do Velho Kaioshin',
			},
			desc = {
				en = 'The Elder Kai gets bored between rituals. Bring him some books and a cake for his trouble.',
				es = 'El Kaioshin Anciano se aburre entre rituales. Llévale unos libros y un pastel por las molestias.',
				pt = 'O Velho Kaioshin fica entediado entre rituais. Leve alguns livros e um bolo para ele pelo incômodo.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Old Kai|Old Kai]]',
				es = '[[Special:MyLanguage/Old Kai|Kaioshin Anciano]]',
				pt = '[[Special:MyLanguage/Old Kai|Velho Kaioshin]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/GT Saga|GT Saga]], quest 18: \'\'The Elder Kai\'s Advice\'\'',
					'Be in [[Special:MyLanguage/Sacred Kai Planet|Sacred Kai Planet]]',
				},
				es = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], misión 18: \'\'El Consejo del Kaioshin Anciano\'\'',
					'Estar en [[Special:MyLanguage/Sacred Kai Planet|Planeta Sagrado de los Kaioshins]]',
				},
				pt = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], missão 18: \'\'O Conselho do Velho Kaioshin\'\'',
					'Estar em [[Special:MyLanguage/Sacred Kai Planet|Mundo Sagrado dos Kai]]',
				},
			},
			objectives = {
				en = {
					'Deliver 8 × Book to [[Special:MyLanguage/Old Kai|Old Kai]]',
					'Deliver 1 × Cake to [[Special:MyLanguage/Old Kai|Old Kai]]',
					'Talk to [[Special:MyLanguage/Old Kai|Old Kai]]',
				},
				es = {
					'Entrega 8 × Libro a [[Special:MyLanguage/Old Kai|Kaioshin Anciano]]',
					'Entrega 1 × Tarta a [[Special:MyLanguage/Old Kai|Kaioshin Anciano]]',
					'Habla con [[Special:MyLanguage/Old Kai|Kaioshin Anciano]]',
				},
				pt = {
					'Entregue 8 × Livro para [[Special:MyLanguage/Old Kai|Velho Kaioshin]]',
					'Entregue 1 × Bolo para [[Special:MyLanguage/Old Kai|Velho Kaioshin]]',
					'Fale com [[Special:MyLanguage/Old Kai|Velho Kaioshin]]',
				},
			},
			rewards = {
				en = {
					'×19 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×19 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×19 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gt_ship_provisions',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Rations for the Trip',
				es = 'Raciones para el Viaje',
				pt = 'Rações para a Viagem',
			},
			desc = {
				en = 'The search for the Black Star Dragon Balls could take a whole year. Stock Bulma\'s ship with food before it leaves.',
				es = 'La búsqueda de las Esferas del Dragón de Estrella Negra podría llevar un año entero. Llena de comida la nave de Bulma antes de que despegue.',
				pt = 'A busca pelas Esferas do Dragão de Estrelas Negras pode levar um ano inteiro. Abasteça a nave de Bulma com comida antes que ela parta.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/GT Saga|GT Saga]], quest 2: \'\'Parts for Bulma\'\'',
				},
				es = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], misión 2: \'\'Piezas para Bulma\'\'',
				},
				pt = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], missão 2: \'\'Peças para Bulma\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 24 × Cooked Porkchop to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 24 × Baked Potato to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 4 × Golden Apple to [[Special:MyLanguage/Bulma|Bulma]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Entrega 24 × Chuleta de cerdo cocinada a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 24 × Patata cocida a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 4 × Manzana dorada a [[Special:MyLanguage/Bulma|Bulma]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Entregue 24 × Costeleta de Porco Assada para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 24 × Batata Assada para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 4 × Maçã Dourada para [[Special:MyLanguage/Bulma|Bulma]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×35 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
				},
				es = {
					'×35 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
				},
				pt = {
					'×35 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
				},
			},
		},
		{
			id = 'gt_tuffle_cure',
			category = 'collection',
			giver = 'dende',
			turnin = 'dende',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Sacred Water',
				es = 'Agua Sagrada',
				pt = 'Água Sagrada',
			},
			desc = {
				en = 'Baby\'s eggs are still hiding inside Earth\'s people. Bring water and bottles to Dende at Kami\'s Lookout so he can prepare the Sacred Water that cures them.',
				es = 'Los huevos de Baby todavía se esconden dentro de la gente de la Tierra. Llévale agua y frascos a Dendé en la Atalaya de Kami para que prepare el Agua Sagrada que los cura.',
				pt = 'Os ovos de Baby ainda estão escondidos dentro das pessoas da Terra. Leve água e frascos para Dende no Mirante de Kami para que ele prepare a Água Sagrada que as cura.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Dende|Dende]]',
				es = '[[Special:MyLanguage/Dende|Dendé]]',
				pt = '[[Special:MyLanguage/Dende|Dende]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/GT Saga|GT Saga]], quest 21: \'\'The Last Tuffle\'\'',
				},
				es = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], misión 21: \'\'El Último Tsufur\'\'',
				},
				pt = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], missão 21: \'\'O Último Tsufuru\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Kami\'s Lookout|Kami\'s Lookout]]',
					'Deliver 4 × Water Bucket to [[Special:MyLanguage/Dende|Dende]]',
					'Deliver 16 × Glass Bottle to [[Special:MyLanguage/Dende|Dende]]',
					'Talk to [[Special:MyLanguage/Dende|Dende]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Kami\'s Lookout|Atalaya de Kami]]',
					'Entrega 4 × Cubo con agua a [[Special:MyLanguage/Dende|Dendé]]',
					'Entrega 16 × Frasco de cristal a [[Special:MyLanguage/Dende|Dendé]]',
					'Habla con [[Special:MyLanguage/Dende|Dendé]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Kami\'s Lookout|Mirante de Kami]]',
					'Entregue 4 × Balde de Água para [[Special:MyLanguage/Dende|Dende]]',
					'Entregue 16 × Frasco de Vidro para [[Special:MyLanguage/Dende|Dende]]',
					'Fale com [[Special:MyLanguage/Dende|Dende]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'gt_uub_village_supplies',
			category = 'collection',
			giver = 'goku',
			turnin = 'goku',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Supplies for Uub\'s Village',
				es = 'Suministros para la Aldea de Uub',
				pt = 'Suprimentos para a Vila de Uub',
			},
			desc = {
				en = 'Uub\'s village barely has enough to eat. Bring Goku bread, cooked beef and seeds to send home with Uub.',
				es = 'La aldea de Uub apenas tiene para comer. Llévale a Goku pan, filete asado y semillas para que Uub los lleve a casa.',
				pt = 'A vila de Uub mal tem o que comer. Leve pão, filé e sementes para Goku mandar para casa com Uub.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Goku|Goku]]',
				es = '[[Special:MyLanguage/Goku|Goku]]',
				pt = '[[Special:MyLanguage/Goku|Goku]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/GT Saga|GT Saga]], quest 1: \'\'A New Pupil\'\'',
				},
				es = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], misión 1: \'\'Un Nuevo Alumno\'\'',
				},
				pt = {
					'[[Special:MyLanguage/GT Saga|Saga GT]], missão 1: \'\'Um Novo Aluno\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 16 × Bread to [[Special:MyLanguage/Goku|Goku]]',
					'Deliver 16 × Steak to [[Special:MyLanguage/Goku|Goku]]',
					'Deliver 32 × Wheat Seeds to [[Special:MyLanguage/Goku|Goku]]',
					'Talk to [[Special:MyLanguage/Goku|Goku]]',
				},
				es = {
					'Entrega 16 × Pan a [[Special:MyLanguage/Goku|Goku]]',
					'Entrega 16 × Filete asado a [[Special:MyLanguage/Goku|Goku]]',
					'Entrega 32 × Semillas de trigo a [[Special:MyLanguage/Goku|Goku]]',
					'Habla con [[Special:MyLanguage/Goku|Goku]]',
				},
				pt = {
					'Entregue 16 × Pão para [[Special:MyLanguage/Goku|Goku]]',
					'Entregue 16 × Filé para [[Special:MyLanguage/Goku|Goku]]',
					'Entregue 32 × Sementes de Trigo para [[Special:MyLanguage/Goku|Goku]]',
					'Fale com [[Special:MyLanguage/Goku|Goku]]',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'merchant_alien_artifacts',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Alien Artifacts',
				es = 'Artefactos Alienígenas',
				pt = 'Artefatos Alienígenas',
			},
			desc = {
				en = 'Bulma discovered rare alien materials on Namek. Bring her Kikono shards and diamonds and she\'ll build you an engine using alien technology.',
				es = 'Bulma ha descubierto materiales alienígenas raros en Namek. Recupera fragmentos de Kikono y diamantes para ella: promete un arma legendaria a cambio.',
				pt = 'Bulma descobriu materiais alienígenas raros em Namek. Recupere fragmentos de Kikono e diamantes para ela, e ela promete uma arma lendária em troca.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 4: \'\'The Cruel Dodoria\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 4: \'\'El Cruel Dodoria\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 4: \'\'O Cruel Dodoria\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 16 × [[Special:MyLanguage/Kikono Materials|Kikono Shard]] to [[Special:MyLanguage/Bulma|Bulma]]',
					'Deliver 4 × Diamond to [[Special:MyLanguage/Bulma|Bulma]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Entrega 16 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]] a [[Special:MyLanguage/Bulma|Bulma]]',
					'Entrega 4 × Diamante a [[Special:MyLanguage/Bulma|Bulma]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Entregue 16 × [[Special:MyLanguage/Kikono Materials|Fragmento de Kikono]] para [[Special:MyLanguage/Bulma|Bulma]]',
					'Entregue 4 × Diamante para [[Special:MyLanguage/Bulma|Bulma]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × Vehicle Engine',
				},
				es = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × Motor de Vehículo',
				},
				pt = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × Motor de Veículo',
				},
			},
		},
		{
			id = 'mr_satan_autographs',
			category = 'collection',
			giver = 'mr_satan',
			turnin = 'mr_satan',
			ordered = true,
			repeatable = false,
			name = {
				en = 'The Champ\'s Autographs',
				es = 'Los Autógrafos del Campeón',
				pt = 'Os Autógrafos do Campeão',
			},
			desc = {
				en = 'Mr. Satan has run out of paper for his fans. Bring him paper and ink sacs so the World Champion can keep signing autographs.',
				es = 'Al Sr. Satán se le acabó el papel para sus fans. Llévale papel y bolsas de tinta para que el Campeón Mundial pueda seguir firmando autógrafos.',
				pt = 'O Mr. Satan ficou sem papel para os fãs. Leve papel e bolsas de tinta para que o Campeão Mundial possa continuar dando autógrafos.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				es = '[[Special:MyLanguage/Mr. Satan|Sr. Satán]]',
				pt = '[[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 15: \'\'Super Perfect Cell\'\'',
				},
				es = {
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 15: \'\'Cell Super Perfecto\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 15: \'\'Cell Super Perfeito\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 32 × Paper to [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
					'Deliver 8 × Ink Sac to [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
					'Talk to [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				},
				es = {
					'Entrega 32 × Papel a [[Special:MyLanguage/Mr. Satan|Sr. Satán]]',
					'Entrega 8 × Saco de tinta a [[Special:MyLanguage/Mr. Satan|Sr. Satán]]',
					'Habla con [[Special:MyLanguage/Mr. Satan|Sr. Satán]]',
				},
				pt = {
					'Entregue 32 × Papel para [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
					'Entregue 8 × Bolsa de Tinta para [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
					'Fale com [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				},
			},
			rewards = {
				en = {
					'×8 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×8 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×8 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'mr_satan_peace_offering',
			category = 'collection',
			giver = 'mr_satan',
			turnin = 'mr_satan',
			ordered = true,
			repeatable = false,
			name = {
				en = 'A Peace Offering',
				es = 'Una Ofrenda de Paz',
				pt = 'Uma Oferta de Paz',
			},
			desc = {
				en = 'Mr. Satan wants to stay on Majin Buu\'s good side. Take cakes and cookies to Buu at his house, then report back to the champ.',
				es = 'El Sr. Satán quiere seguir en buenos términos con Majin Buu. Llévale pasteles y galletas a su casa y después vuelve a contárselo al campeón.',
				pt = 'O Mr. Satan quer continuar de bem com o Majin Boo. Leve bolos e biscoitos para o Boo na casa dele e depois volte para contar ao campeão.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				es = '[[Special:MyLanguage/Mr. Satan|Sr. Satán]]',
				pt = '[[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 33: \'\'Satan and Majin Buu\'\'',
				},
				es = {
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 33: \'\'Satán y Majin Buu\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 33: \'\'Satan e Majin Boo\'\'',
				},
			},
			objectives = {
				en = {
					'Deliver 3 × Cake to [[Special:MyLanguage/Majin Buu|Majin Buu]]',
					'Deliver 16 × Cookie to [[Special:MyLanguage/Majin Buu|Majin Buu]]',
					'Talk to [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				},
				es = {
					'Entrega 3 × Tarta a [[Special:MyLanguage/Majin Buu|Majin Buu]]',
					'Entrega 16 × Galleta a [[Special:MyLanguage/Majin Buu|Majin Buu]]',
					'Habla con [[Special:MyLanguage/Mr. Satan|Sr. Satán]]',
				},
				pt = {
					'Entregue 3 × Bolo para [[Special:MyLanguage/Majin Buu|Majin Boo]]',
					'Entregue 16 × Biscoito para [[Special:MyLanguage/Majin Buu|Majin Boo]]',
					'Fale com [[Special:MyLanguage/Mr. Satan|Mr. Satan]]',
				},
			},
			rewards = {
				en = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Senzu Bean]]',
				},
				es = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Semilla del Ermitaño]]',
				},
				pt = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × [[Special:MyLanguage/Senzu Bean|Semente dos Deuses]]',
				},
			},
		},
		{
			id = 'turles_tree_sapling',
			category = 'collection',
			giver = 'piccolo',
			turnin = 'piccolo',
			ordered = false,
			repeatable = false,
			name = {
				en = 'Roots of Might',
				es = 'Raíces del Poder',
				pt = 'Raízes do Poder',
			},
			desc = {
				en = 'Turles planted the Tree of Might to drain the planet dry. Cut down the rogue Saiyan and gather the saplings and fruit it left behind so Piccolo can study how to stop it spreading.',
				es = 'Turles plantó el Árbol del Poder para secar el planeta. Abate al Saiyajin rebelde y recoge los plantones y el fruto que dejó para que Piccolo pueda estudiar cómo evitar que se extienda.',
				pt = 'Turles plantou a Árvore do Poder para drenar o planeta. Derrote o Saiyajin rebelde e reúna as mudas e os frutos que ele deixou para que Piccolo possa estudar como impedir que se espalhe.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				es = '[[Special:MyLanguage/Piccolo|Piccolo]]',
				pt = '[[Special:MyLanguage/Piccolo|Piccolo]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Movies Saga|Movies Saga]], quest 10: \'\'Turles\'\'',
				},
				es = {
					'[[Special:MyLanguage/Movies Saga|Saga Películas]], misión 10: \'\'Turles\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Movies Saga|Saga de Filmes]], missão 10: \'\'Turles\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat [[Special:MyLanguage/Turles|Turles]] (spawned by the quest, 6,500 health)',
					'Obtain 12 × Oak Sapling',
					'Obtain 16 × Apple',
					'Talk to [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				es = {
					'Derrota a [[Special:MyLanguage/Turles|Turles]] (aparece con la misión, 6 500 de vida)',
					'Consigue 12 × Brote de roble',
					'Consigue 16 × Manzana',
					'Habla con [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
				pt = {
					'Derrote [[Special:MyLanguage/Turles|Turles]] (surge com a missão, 6 500 de vida)',
					'Obtenha 12 × Muda de Carvalho',
					'Obtenha 16 × Maçã',
					'Fale com [[Special:MyLanguage/Piccolo|Piccolo]]',
				},
			},
			rewards = {
				en = {
					'×19 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×19 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×19 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'wheelo_frozen_rescue',
			category = 'collection',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = false,
			repeatable = false,
			name = {
				en = 'The Frozen Lab',
				es = 'El Laboratorio Helado',
				pt = 'O Laboratório Congelado',
			},
			desc = {
				en = 'Dr. Wheelo\'s bio-mech lab lies buried beneath the snow. Bulma wants you to brave the frozen wastes and recover the salvageable tech and circuitry before it\'s lost for good.',
				es = 'El laboratorio bio-mecánico del Dr. Wheelo yace enterrado bajo la nieve. Bulma quiere que te adentres en los páramos helados y recuperes la tecnología y los circuitos aprovechables antes de que se pierdan para siempre.',
				pt = 'O laboratório biomecânico do Dr. Wheelo está enterrado sob a neve. Bulma quer que você enfrente os ermos congelados e recupere a tecnologia e os circuitos recuperáveis antes que se percam para sempre.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Movies Saga|Movies Saga]], quest 6: \'\'Dr. Wheelo\'\'',
					'Be in a Snowy Plains biome',
				},
				es = {
					'[[Special:MyLanguage/Movies Saga|Saga Películas]], misión 6: \'\'Dr. Wheelo\'\'',
					'Estar en un bioma de Llanura nevada',
				},
				pt = {
					'[[Special:MyLanguage/Movies Saga|Saga de Filmes]], missão 6: \'\'Dr. Wheelo\'\'',
					'Estar em um bioma de Planícies nevadas',
				},
			},
			objectives = {
				en = {
					'Obtain 4 × [[Special:MyLanguage/Gete Tech|Gete Scrap]]',
					'Obtain 24 × Redstone Dust',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 4 × [[Special:MyLanguage/Gete Tech|Chatarra Gete]]',
					'Consigue 24 × Polvo de redstone',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 4 × [[Special:MyLanguage/Gete Tech|Sucata de Gete]]',
					'Obtenha 24 × Pó de Redstone',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×7 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×7 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×7 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_anti_ki_cloak',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Cloaking Device',
				es = 'Dispositivo de Camuflaje',
				pt = 'Dispositivo de Camuflagem',
			},
			desc = {
				en = 'Bulma reverse-engineers Android suppressor tech into a wearable cloak that hides your Battle Power from enemy scouters.',
				es = 'Bulma aplica ingeniería inversa a la tecnología supresora de los Androides para crear un camuflaje portátil que oculta tu Poder de Combate de los escáneres enemigos.',
				pt = 'Bulma aplica engenharia reversa na tecnologia de supressão de Androides para criar uma capa vestível que esconde seu Poder de Luta dos scouters inimigos.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_scouter_threat_db|Threat Database]]',
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 14: \'\'Cell Juniors\'\'',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_scouter_threat_db|Base de Datos de Amenazas]]',
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 14: \'\'Los Cell Jr.\'\'',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_scouter_threat_db|Banco de Dados de Ameaças]]',
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 14: \'\'Cell Jr.\'\'',
				},
			},
			objectives = {
				en = {
					'Defeat 5 × Cell Jr',
					'Obtain 3 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
					'Obtain 4 × Observer',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Derrota a 5 × Cell Jr.',
					'Consigue 3 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
					'Consigue 4 × Observador',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Derrote 5 × Cell Jr',
					'Obtenha 3 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
					'Obtenha 4 × Observador',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × [[Special:MyLanguage/Anti-Ki Cloaking Device|Anti-Ki Cloaking Device]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Anti-Ki Cloaking Device|Dispositivo de Camuflaje Anti-Ki]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Anti-Ki Cloaking Device|Dispositivo de Camuflagem Anti-Ki]]',
				},
			},
		},
		{
			id = 'bulma_capsule_tech',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Capsule Tech',
				es = 'Tecnología de Cápsula',
				pt = 'Tecnologia de Cápsula',
			},
			desc = {
				en = 'Bulma refines the Capsule Corp formula with Gete cores. Bring her ingots and diamonds and she\'ll teach you to craft premium Gete capsules that grant triple the stat points.',
				es = 'Bulma perfecciona la fórmula de Cápsula Corp. con núcleos Gete. Llévale lingotes y diamantes y te enseñará a fabricar cápsulas Gete premium que otorgan el triple de puntos de estadística.',
				pt = 'Bulma refina a fórmula da Corporação Cápsula com núcleos Gete. Leve a ela lingotes e diamantes, e ela ensinará você a fabricar cápsulas Gete premium que concedem o triplo de pontos de atributo.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_gete_discovery|Metal from the Big Star]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_gete_discovery|Metal de la Gran Estrella]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_gete_discovery|Metal da Grande Estrela]]',
				},
			},
			objectives = {
				en = {
					'Obtain 4 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
					'Obtain 4 × Diamond',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 4 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
					'Consigue 4 × Diamante',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 4 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
					'Obtenha 4 × Diamante',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×16 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × [[Special:MyLanguage/Gete Tech|Gete Red Capsule]]',
					'1 × [[Special:MyLanguage/Gete Tech|Gete Orange Capsule]]',
				},
				es = {
					'×16 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Gete Tech|Gete Red Capsule]]',
					'1 × [[Special:MyLanguage/Gete Tech|Gete Orange Capsule]]',
				},
				pt = {
					'×16 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Gete Tech|Gete Red Capsule]]',
					'1 × [[Special:MyLanguage/Gete Tech|Gete Orange Capsule]]',
				},
			},
		},
		{
			id = 'bulma_gete_armor',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Gete Forge',
				es = 'Forja Gete',
				pt = 'Forja Gete',
			},
			desc = {
				en = 'Bulma has cracked a post-netherite alloy. Bring her Gete ingots and Kikono cloth and she\'ll give you the pattern to craft Gete armor at the Kikono Station.',
				es = 'Bulma ha conseguido una aleación post-netherita. Llévale lingotes Gete y tela de Kikono y te dará el patrón para fabricar armadura Gete en la Estación Kikono.',
				pt = 'Bulma descobriu uma liga pós-netherita. Traga a ela lingotes de Gete e tecido Kikono, e ela lhe dará o padrão para fabricar armadura Gete na Estação Kikono.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_gete_discovery|Metal from the Big Star]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_gete_discovery|Metal de la Gran Estrella]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_gete_discovery|Metal da Grande Estrela]]',
				},
			},
			objectives = {
				en = {
					'Obtain 8 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
					'Obtain 4 × [[Special:MyLanguage/Kikono Materials|Kikono Cloth]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 8 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
					'Consigue 4 × [[Special:MyLanguage/Kikono Materials|Tela de Kikono]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 8 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
					'Obtenha 4 × [[Special:MyLanguage/Kikono Materials|Tecido de Kikono]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × [[Special:MyLanguage/Gete Tech|Gete Pattern]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Gete Tech|Patrón Gete]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Gete Tech|Padrão Gete]]',
				},
			},
		},
		{
			id = 'bulma_gete_discovery',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Metal from the Big Star',
				es = 'Metal de la Gran Estrella',
				pt = 'Metal da Grande Estrela',
			},
			desc = {
				en = 'Bulma is fascinated by the strange Gete metal. Bring her some Gete scrap and she\'ll start reverse-engineering its secrets — and reward you with refined ingots.',
				es = 'Bulma está fascinada con el extraño metal Gete. Tráele chatarra Gete y empezará a desvelar sus secretos con ingeniería inversa, recompensándote con lingotes refinados.',
				pt = 'Bulma está fascinada pelo estranho metal Gete. Traga a ela alguns fragmentos de Gete, e ela começará a fazer engenharia reversa de seus segredos — e recompensá-lo com lingotes refinados.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_gero_blueprints|Gero\'s Blueprints]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_gero_blueprints|Los Planos de Gero]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_gero_blueprints|Plantas de Gero]]',
				},
			},
			objectives = {
				en = {
					'Obtain 3 × [[Special:MyLanguage/Gete Tech|Gete Scrap]]',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 3 × [[Special:MyLanguage/Gete Tech|Chatarra Gete]]',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 3 × [[Special:MyLanguage/Gete Tech|Sucata de Gete]]',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'2 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
				},
				es = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
				},
				pt = {
					'×13 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'2 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
				},
			},
		},
		{
			id = 'bulma_gete_enhancements',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Gete Enhancements',
				es = 'Mejoras Gete',
				pt = 'Aprimoramentos Gete',
			},
			desc = {
				en = 'Bulma\'s finest work: special Gete-tech enchantments. Gather the materials and she\'ll hand you an enchanted book with Ki Conductivity, Gravity Forged and Gete Plating.',
				es = 'El mejor trabajo de Bulma: encantamientos especiales de tecnología Gete. Consigue los materiales y te entregará un libro encantado con Conductividad de Ki, Templado por Gravedad y Blindaje Gete.',
				pt = 'O melhor trabalho de Bulma: encantamentos especiais de tecnologia Gete. Reúna os materiais, e ela lhe entregará um livro encantado com Condutividade de Ki, Forjado em Gravidade e Revestimento Gete.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_gete_armor|Gete Forge]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_gete_armor|Forja Gete]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_gete_armor|Forja Gete]]',
				},
			},
			objectives = {
				en = {
					'Obtain 6 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
					'Obtain 4 × Block of Lapis Lazuli',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 6 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
					'Consigue 4 × Bloque de lapislázuli',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 6 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
					'Obtenha 4 × Bloco de Lápis-Lazúli',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×16 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'Gete-tech Enchanted Book',
				},
				es = {
					'×16 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'Libro Encantado de Tecnología Gete',
				},
				pt = {
					'×16 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'Livro Encantado de Tecnologia Gete',
				},
			},
		},
		{
			id = 'bulma_gete_retrofit',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Retrofit Kit',
				es = 'Kit de Retrofitting',
				pt = 'Kit de Retrofit',
			},
			desc = {
				en = 'Bring Bulma your worn netherite and she\'ll strip it for parts, handing back a spare Gete pattern for the Kikono Station.',
				es = '¿Para qué empezar desde cero? Bulma te da una plantilla de herrería para retrofitar equipo netherita existente directamente a armadura Gete en una mesa de herrería.',
				pt = 'Por que começar do zero? Bulma lhe dá um molde de ferraria para adaptar equipamentos de netherita existentes diretamente em armadura Gete em uma mesa de ferraria.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_gete_armor|Gete Forge]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_gete_armor|Forja Gete]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_gete_armor|Forja Gete]]',
				},
			},
			objectives = {
				en = {
					'Obtain 6 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
					'Obtain 1 × Netherite Ingot',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 6 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
					'Consigue 1 × Lingote de netherita',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 6 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
					'Obtenha 1 × Lingote de Netherita',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×16 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × [[Special:MyLanguage/Gete Tech|Gete Pattern]]',
				},
				es = {
					'×16 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Gete Tech|Patrón Gete]]',
				},
				pt = {
					'×16 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Gete Tech|Padrão Gete]]',
				},
			},
		},
		{
			id = 'bulma_gravity_mk2',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Gravity Room Mk.II',
				es = 'Sala de Gravedad Mk. II',
				pt = 'Sala de Gravidade Mk.II',
			},
			desc = {
				en = 'Bulma upgrades the Gravity Device with Capsule Corp dampeners. While inside an active device\'s field, they ease the strain of training under weights — though the stronger you get, the less the assist matters.',
				es = 'Bulma mejora el dispositivo de gravedad con amortiguadores de Capsule Corp. Al estar dentro del campo de un dispositivo activo, estos alivian la tensión del entrenamiento con pesas; aunque, cuanto más fuerte te vuelves, menos importa dicha ayuda.',
				pt = 'Bulma atualiza o Dispositivo de Gravidade com amortecedores da Capsule Corp. Dentro do campo do dispositivo ativo, eles aliviam o peso do treino — embora quanto mais forte você fique, menos o auxílio importa.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_gete_discovery|Metal from the Big Star]]',
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 11: \'\'Semi-Perfect Cell\'\'',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_gete_discovery|Metal de la Gran Estrella]]',
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 11: \'\'Cell Semi-Perfecto\'\'',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_gete_discovery|Metal da Grande Estrela]]',
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 11: \'\'Cell Semi-Perfeito\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Hyperbolic Time Chamber|Hyperbolic Time Chamber]]',
					'Obtain 4 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
					'Obtain 8 × Piston',
					'Obtain 4 × Heavy Weighted Pressure Plate',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Hyperbolic Time Chamber|Cámara Hiperbólica del Tiempo]]',
					'Consigue 4 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
					'Consigue 8 × Pistón',
					'Consigue 4 × Placa de presión para peso elevado',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Hyperbolic Time Chamber|Sala do Tempo]]',
					'Obtenha 4 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
					'Obtenha 8 × Pistão',
					'Obtenha 4 × Placa de Pressão de Pesagem Pesada',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×18 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×18 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×18 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_gravity_mk3',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Gravity Room Mk.III',
				es = 'Sala de Gravedad Mk. III',
				pt = 'Sala de Gravidade Mk.III',
			},
			desc = {
				en = 'Bulma tunes the Gravity Device dampeners to their limit, cutting far more of the weight strain inside its field and holding up better at high power — but even this fades as your might climbs.',
				es = 'Bulma ajusta al límite los amortiguadores del dispositivo de gravedad, reduciendo en mayor medida la carga de peso dentro de su campo y logrando una mayor estabilidad a alta potencia; sin embargo, incluso esto deja de ser suficiente a medida que tu poder aumenta.',
				pt = 'Bulma ajusta os amortecedores do Dispositivo de Gravidade ao limite, reduzindo muito mais o peso dentro do campo e resistindo melhor em alta potência — mas até isso diminui conforme seu poder aumenta.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_gravity_mk2|Gravity Room Mk.II]]',
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 1: \'\'Train with Goten and Gohan\'\'',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_gravity_mk2|Sala de Gravedad Mk. II]]',
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 1: \'\'Entrena con Goten y Gohan\'\'',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_gravity_mk2|Sala de Gravidade Mk.II]]',
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 1: \'\'Treine com Goten e Gohan\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 2 × [[Special:MyLanguage/Gete Tech|Gete Block]]',
					'Obtain 2 × Netherite Ingot',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 2 × [[Special:MyLanguage/Gete Tech|Bloque Gete]]',
					'Consigue 2 × Lingote de netherita',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 2 × [[Special:MyLanguage/Gete Tech|Bloco de Gete]]',
					'Obtenha 2 × Lingote de Netherita',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_ki_battery',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Ki Accumulator',
				es = 'Acumulador de Ki',
				pt = 'Acumulador de Ki',
			},
			desc = {
				en = 'Bulma builds Gete-cored energy cells. Bring the parts and she\'ll hand you Ki Accumulators that instantly restore a chunk of your ki on use.',
				es = 'Bulma fabrica células de energía con núcleo Gete. Lleva las piezas y te entregará Acumuladores de Ki que restauran al instante una porción de tu ki al usarlos.',
				pt = 'Bulma constrói células de energia com núcleo Gete. Traga as peças, e ela lhe entregará Acumuladores de Ki que restauram instantaneamente uma parte do seu ki ao serem usados.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_gete_enhancements|Gete Enhancements]]',
					'[[Special:MyLanguage/Buu Saga|Buu Saga]], quest 1: \'\'Train with Goten and Gohan\'\'',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_gete_enhancements|Mejoras Gete]]',
					'[[Special:MyLanguage/Buu Saga|Saga Buu]], misión 1: \'\'Entrena con Goten y Gohan\'\'',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_gete_enhancements|Aprimoramentos Gete]]',
					'[[Special:MyLanguage/Buu Saga|Saga Boo]], missão 1: \'\'Treine com Goten e Gohan\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 2 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
					'Obtain 32 × Lapis Lazuli',
					'Obtain 2 × Block of Redstone',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 2 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
					'Consigue 32 × Lapislázuli',
					'Consigue 2 × Bloque de redstone',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 2 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
					'Obtenha 32 × Lápis-Lazúli',
					'Obtenha 2 × Bloco de Redstone',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'3 × [[Special:MyLanguage/Ki Battery|Ki Battery]]',
				},
				es = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × [[Special:MyLanguage/Ki Battery|Acumulador de Ki]]',
				},
				pt = {
					'×25 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'3 × [[Special:MyLanguage/Ki Battery|Bateria de Ki]]',
				},
			},
		},
		{
			id = 'bulma_otherworld_drive',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Otherworld Drive',
				es = 'Motor del Otro Mundo',
				pt = 'Propulsor do Outro Mundo',
			},
			desc = {
				en = 'Bulma is certain she can retune a space pod\'s warp coils to punch a hole straight into the Otherworld. Bring her ender pearls, obsidian and redstone blocks and she\'ll upgrade your pod to make the trip.',
				es = 'Bulma está segura de que puede reajustar las bobinas de distorsión de una cápsula espacial para abrir un agujero directo al Otro Mundo. Llévale perlas de Ender, obsidiana y bloques de piedra roja y mejorará tu cápsula para hacer el viaje.',
				pt = 'Bulma tem certeza de que pode sintonizar as bobinas de dobra de uma cápsula espacial para abrir uma fenda diretamente para o Outro Mundo. Leve a ela pérolas de ender, obsidiana e blocos de redstone, e ela vai melhorar sua cápsula para fazer a viagem.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Saiyan Saga|Saiyan Saga]], quest 11: \'\'Face Vegeta\'\'',
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Radar Upgrade]]',
				},
				es = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], misión 11: \'\'Enfréntate a Vegeta\'\'',
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Mejora del Radar]]',
				},
				pt = {
					'[[Special:MyLanguage/Saiyan Saga|Saga Saiyajin]], missão 11: \'\'Enfrente Vegeta\'\'',
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Upgrade do Radar]]',
				},
			},
			objectives = {
				en = {
					'Obtain 8 × Ender Pearl',
					'Obtain 12 × Obsidian',
					'Obtain 4 × Block of Redstone',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 8 × Perla de ender',
					'Consigue 12 × Obsidiana',
					'Consigue 4 × Bloque de redstone',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 8 × Pérola de Ender',
					'Obtenha 12 × Obsidiana',
					'Obtenha 4 × Bloco de Redstone',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_proximity_hud',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Tracker Display',
				es = 'Pantalla de Seguimiento',
				pt = 'Display de Rastreamento',
			},
			desc = {
				en = 'Bulma adds a proximity display to your radar, reading out the distance to the closest Dragon Ball at a glance.',
				es = 'Bulma añade una pantalla de proximidad a tu radar que muestra de un vistazo la distancia a la Esfera del Dragón más cercana.',
				pt = 'Bulma adiciona um display de proximidade ao seu radar, mostrando a distância até a Esfera do Dragão mais próxima rapidamente.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_radar_fusion|Bi-Dimensional Radar]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_radar_fusion|Radar Bidimensional]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_radar_fusion|Radar Bidimensional]]',
				},
			},
			objectives = {
				en = {
					'Obtain 4 × Eye of Ender',
					'Obtain 4 × Diamond',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 4 × Ojo de ender',
					'Consigue 4 × Diamante',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 4 × Olho de Ender',
					'Obtenha 4 × Diamante',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×6 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_radar_amplifier',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Signal Amplifier',
				es = 'Amplificador de Señal',
				pt = 'Amplificador de Sinal',
			},
			desc = {
				en = 'Bulma wants to push the Dragon Radar\'s range further. Bring her amethyst, redstone and gold and she\'ll add a long-range tier you can cycle to with a right-click.',
				es = 'Bulma quiere ampliar aún más el alcance del Radar. Llévale amatista, piedra roja y oro, y añadirá un nivel de largo alcance que puedes activar con clic derecho.',
				pt = 'Bulma quer aumentar ainda mais o alcance do Radar do Dragão. Leve a ela ametista, redstone e ouro, e ela adicionará um nível de longo alcance que você pode alternar com um clique direito.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Radar Upgrade]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Mejora del Radar]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_radar_parts|Upgrade do Radar]]',
				},
			},
			objectives = {
				en = {
					'Obtain 16 × Amethyst Shard',
					'Obtain 24 × Redstone Dust',
					'Obtain 8 × Gold Ingot',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 16 × Fragmento de amatista',
					'Consigue 24 × Polvo de redstone',
					'Consigue 8 × Lingote de oro',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 16 × Fragmento de Ametista',
					'Obtenha 24 × Pó de Redstone',
					'Obtenha 8 × Lingote de Ouro',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_radar_fusion',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Bi-Dimensional Radar',
				es = 'Radar Bidimensional',
				pt = 'Radar Bidimensional',
			},
			desc = {
				en = 'Hand Bulma an Earth radar and a Namek radar together and she\'ll fuse them into a single radar that tracks the Dragon Balls of both worlds.',
				es = 'Entrega a Bulma un radar de la Tierra y uno de Namek a la vez y los fusionará en un único radar que rastrea las Esferas del Dragón de ambos mundos.',
				pt = 'Entregue a Bulma um radar da Terra e um radar de Namek juntos, e ela os fundirá em um único radar que rastreia as Esferas do Dragão de ambos os mundos.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_radar_amplifier|Signal Amplifier]]',
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_namek_research|Namekian Research]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_radar_amplifier|Amplificador de Señal]]',
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_namek_research|Investigación Namekiana]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_radar_amplifier|Amplificador de Sinal]]',
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_namek_research|Pesquisa Namekuseijin]]',
				},
			},
			objectives = {
				en = {
					'Obtain 1 × [[Special:MyLanguage/Dragon Radar|Dragon Radar (Earth)]]',
					'Obtain 1 × [[Special:MyLanguage/Dragon Radar|Dragon Radar (Namek)]]',
					'Obtain 8 × Diamond',
					'Obtain 3 × Block of Redstone',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 1 × [[Special:MyLanguage/Dragon Radar|Radar de Esferas del Dragón (Tierra)]]',
					'Consigue 1 × [[Special:MyLanguage/Dragon Radar|Radar de Esferas del Dragón (Namek)]]',
					'Consigue 8 × Diamante',
					'Consigue 3 × Bloque de redstone',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 1 × [[Special:MyLanguage/Dragon Radar|Radar do Dragão (Terra)]]',
					'Obtenha 1 × [[Special:MyLanguage/Dragon Radar|Radar do Dragão (Namek)]]',
					'Obtenha 8 × Diamante',
					'Obtenha 3 × Bloco de Redstone',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
					'1 × [[Special:MyLanguage/Dragon Radar|Bi-Dimensional Radar]]',
				},
				es = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Dragon Radar|Radar Bidimensional]]',
				},
				pt = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
					'1 × [[Special:MyLanguage/Dragon Radar|Radar Bidimensional]]',
				},
			},
		},
		{
			id = 'bulma_scouter_bioscan',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Bio-Scan Module',
				es = 'Módulo de Bio-Escáner',
				pt = 'Módulo de Bio-Scan',
			},
			desc = {
				en = 'Bulma needs field scans to build a bio-signature database. Defeat Frieza\'s soldiers, gather the components, and your scouter will start tagging whether a target is a fighter or a hostile.',
				es = 'Bulma necesita escáneos de campo para construir una base de datos de bio-firmas. Derrota a los soldados de Freezer, recoge los componentes y tu escáner empezará a identificar si un objetivo es un luchador o un hostil.',
				pt = 'Bulma precisa de escaneamentos de campo para construir um banco de dados de bioassinaturas. Derrote os soldados de Freeza, reúna os componentes, e seu scouter começará a identificar se um alvo é um lutador ou um hostil.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_scouter_calibration|Scouter Calibration]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_scouter_calibration|Calibración del Escáner]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_scouter_calibration|Calibração do Scouter]]',
				},
			},
			objectives = {
				en = {
					'Defeat 12 × [[Special:MyLanguage/Frieza Soldier|Frieza\'s soldiers]]',
					'Obtain 8 × Amethyst Shard',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Derrota a 12 × [[Special:MyLanguage/Frieza Soldier|soldados de Freezer]]',
					'Consigue 8 × Fragmento de amatista',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Derrote 12 × [[Special:MyLanguage/Frieza Soldier|soldados de Freeza]]',
					'Obtenha 8 × Fragmento de Ametista',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×11 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_scouter_calibration',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Scouter Calibration',
				es = 'Calibración del Escáner',
				pt = 'Calibração do Scouter',
			},
			desc = {
				en = 'A raw scouter reads gibberish. Bring Bulma the parts and she\'ll calibrate its firmware so it can display an enemy\'s Battle Power — on the HUD and in your quest enemy previews.',
				es = 'Un escáner sin calibrar no muestra nada útil. Lleva las piezas a Bulma y calibrará su firmware para que pueda mostrar el Poder de Combate de un enemigo, tanto en el HUD como en las vistas previas de misión.',
				pt = 'Um scouter bruto só mostra dados sem sentido. Leve as peças a Bulma e ela calibrará seu firmware para que ele possa exibir o Poder de Luta de um inimigo — no HUD e nas prévias de inimigos das missões.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'[[Special:MyLanguage/Frieza Saga|Frieza Saga]], quest 2: \'\'Cui\'s Pursuit\'\'',
				},
				es = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freezer]], misión 2: \'\'La Persecución de Cui\'\'',
				},
				pt = {
					'[[Special:MyLanguage/Frieza Saga|Saga Freeza]], missão 2: \'\'Perseguição de Cui\'\'',
				},
			},
			objectives = {
				en = {
					'Obtain 16 × Redstone Dust',
					'Obtain 8 × Iron Ingot',
					'Obtain 8 × Glass',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Consigue 16 × Polvo de redstone',
					'Consigue 8 × Lingote de hierro',
					'Consigue 8 × Cristal',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Obtenha 16 × Pó de Redstone',
					'Obtenha 8 × Lingote de Ferro',
					'Obtenha 8 × Vidro',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×4 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_scouter_threat_db',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Threat Database',
				es = 'Base de Datos de Amenazas',
				pt = 'Banco de Dados de Ameaças',
			},
			desc = {
				en = 'With enough combat data, Bulma can compile a threat database — your scouter will reveal an enemy\'s known attacks and abilities in the quest preview instead of \'???\'.',
				es = 'Con suficientes datos de combate, Bulma puede compilar una base de datos de amenazas: tu escáner revelará los ataques y habilidades conocidos del enemigo en la vista previa de misión en lugar de \'???\'.',
				pt = 'Com dados de combate suficientes, Bulma pode compilar um banco de dados de ameaças — seu scouter revelará os ataques e habilidades conhecidos de um inimigo na prévia da missão em vez de \'???\'.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_scouter_bioscan|Bio-Scan Module]]',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_scouter_bioscan|Módulo de Bio-Escáner]]',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_scouter_bioscan|Módulo de Bio-Scan]]',
				},
			},
			objectives = {
				en = {
					'Defeat 15 × [[Special:MyLanguage/Frieza Soldier|Frieza\'s soldiers]]',
					'Obtain 4 × Diamond',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Derrota a 15 × [[Special:MyLanguage/Frieza Soldier|soldados de Freezer]]',
					'Consigue 4 × Diamante',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Derrote 15 × [[Special:MyLanguage/Frieza Soldier|soldados de Freeza]]',
					'Obtenha 4 × Diamante',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×12 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
		{
			id = 'bulma_time_chamber_link',
			category = 'tech',
			giver = 'bulma',
			turnin = 'bulma',
			ordered = true,
			repeatable = false,
			name = {
				en = 'Temporal Comm-Link',
				es = 'Enlace Temporal',
				pt = 'Comunicador Temporal',
			},
			desc = {
				en = 'Bulma rigs a dimensional anchor so your space pod can travel straight to the Hyperbolic Time Chamber.',
				es = 'Bulma instala un ancla dimensional para que tu cápsula espacial pueda viajar directamente a la Cámara Hiperbólica del Tiempo.',
				pt = 'Bulma prepara uma âncora dimensional para que sua cápsula espacial possa viajar diretamente para a Sala do Tempo.',
			},
			giverText = {
				en = '[[Special:MyLanguage/Bulma|Bulma]]',
				es = '[[Special:MyLanguage/Bulma|Bulma]]',
				pt = '[[Special:MyLanguage/Bulma|Bulma]]',
			},
			unlock = {
				en = {
					'Complete [[Special:MyLanguage/Sidequests#sq-bulma_otherworld_drive|Otherworld Drive]]',
					'[[Special:MyLanguage/Android Saga|Android Saga]], quest 11: \'\'Semi-Perfect Cell\'\'',
				},
				es = {
					'Completa [[Special:MyLanguage/Sidequests#sq-bulma_otherworld_drive|Motor del Otro Mundo]]',
					'[[Special:MyLanguage/Android Saga|Saga Androides]], misión 11: \'\'Cell Semi-Perfecto\'\'',
				},
				pt = {
					'Conclua [[Special:MyLanguage/Sidequests#sq-bulma_otherworld_drive|Propulsor do Outro Mundo]]',
					'[[Special:MyLanguage/Android Saga|Saga Androide]], missão 11: \'\'Cell Semi-Perfeito\'\'',
				},
			},
			objectives = {
				en = {
					'Find [[Special:MyLanguage/Hyperbolic Time Chamber|Hyperbolic Time Chamber]]',
					'Obtain 3 × [[Special:MyLanguage/Gete Tech|Gete Ingot]]',
					'Obtain 4 × Clock',
					'Obtain 1 × Ender Chest',
					'Talk to [[Special:MyLanguage/Bulma|Bulma]]',
				},
				es = {
					'Encuentra [[Special:MyLanguage/Hyperbolic Time Chamber|Cámara Hiperbólica del Tiempo]]',
					'Consigue 3 × [[Special:MyLanguage/Gete Tech|Lingote Gete]]',
					'Consigue 4 × Reloj',
					'Consigue 1 × Cofre de ender',
					'Habla con [[Special:MyLanguage/Bulma|Bulma]]',
				},
				pt = {
					'Encontre [[Special:MyLanguage/Hyperbolic Time Chamber|Sala do Tempo]]',
					'Obtenha 3 × [[Special:MyLanguage/Gete Tech|Lingote de Gete]]',
					'Obtenha 4 × Relógio',
					'Obtenha 1 × Baú de Ender',
					'Fale com [[Special:MyLanguage/Bulma|Bulma]]',
				},
			},
			rewards = {
				en = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Attributes]]',
				},
				es = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
				pt = {
					'×20 [[Special:MyLanguage/Stats and Attributes|Atributos]]',
				},
			},
		},
	},
}
