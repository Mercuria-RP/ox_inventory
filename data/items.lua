return {
	['testburger'] = {
		label = 'Burger Test',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lecher',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Ecraser',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'Comment appelle-t-on un burger vegan ?',
				group = 'Blagues Burger',
				action = function(slot)
					print('Une erreur de steak.')
				end
			},
			{
				label = 'Qu\'est-ce que les grenouilles mangent avec leurs burgers ?',
				group = 'Blagues Burger',
				action = function(slot)
					print('Des mouches frites.')
				end
			},
			{
				label = 'Pourquoi le burger et les frites couraient ?',
				group = 'Blagues Burger',
				action = function(slot)
					print('Parce que c\'est du fast food.')
				end
			}
		},
		consume = 0.3
	},
	['wallet'] = {
		label = 'Porte-Feuille',
		weight = 220,
		stack = false,
		consume = 0,
		client = {
			export = 'bpt_wallet.openWallet'
		}
	},
	['warehouse_key'] = {
		label = 'Clés d\'entrepôt',
		weight = 100,
	},
	['contract'] = {
		label = 'Contrat',
		weight = 100,
		stack = true
	},
	['radio'] = {
		label = 'Radio',
		weight = 100,
		stack = true,
		close = true,
		client = {
			export = 'ac_radio.openRadio',
			remove = function(total)
				-- Disconnets a player from the radio when all his radio items are removed.
				if total < 1 and GetConvar('radio:disconnectWithoutRadio', 'true') == 'true' then
					exports.ac_radio:leaveRadio()
				end
			end
		}
	},
	['key'] = {
		label = 'Clé',
		weight = 300,
		stack = false
	},
	['carkey'] = {
		label = 'Clé de voiture',
		weight = 300,
		stack = false
	},
	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
	['medicalbag'] = {
		label = 'Sac Médical',
		weight = 220,
		stack = true,
		description = "Un kit médical complet pour traiter les blessures et les maladies.",
		client = {
			export = 'ND_Ambulance.useBag'
		}
	},

	['defibrillator'] = {
		label = 'Défibrillateur',
		weight = 100,
		stack = true,
		description = "Utilisé pour réanimer les patients.",
	},

	['condom'] = {
		label = 'Préservatif',
		weight = 100,
		stack = true,
		description = "Pour la baise, la bonne.",
	},

	['tweezers'] = {
		label = 'Pince à épiler',
		weight = 100,
		stack = true,
		description = "Pince de précision pour retirer les corps étrangers, comme les balles, des plaies.",
	},

	['burncream'] = {
		label = 'Crème anti-brûlure',
		weight = 100,
		stack = true,
		description = "Crème spécialisée pour traiter et apaiser les brûlures mineures et irritations cutanées.",
	},

	['suturekit'] = {
		label = 'Kit de suture',
		weight = 100,
		stack = true,
		description = "Un kit contenant des outils chirurgicaux et du matériel pour suturer et refermer les plaies.",
	},

	['icepack'] = {
		label = 'Poche de glace',
		weight = 200,
		stack = true,
		description = "Une poche de glace utilisée pour réduire les gonflements et soulager la douleur.",
	},

	['stretcher'] = {
		label = 'Brancard',
		weight = 15000,
		stack = false,
		consume = 1,
		description = "Un brancard pour transporter les patients.",
		server = {
			export = 'ND_Ambulance.createStretcher'
		}
	},

	['emstablet'] = {
		label = 'Tablette EMS',
		weight = 200,
		stack = true,
		client = {
			-- export = 'ars_ambulancejob.openDistressCalls' -- TODO: integrate with SnailyCAD later
		}
	},
	-- ND_Ambulance items
	['defib'] = {
		label = 'Moniteur/Defibrillateur',
		weight = 8000,
		stack = false,
		consume = 1,
		client = {
			export = 'ND_Ambulance.useDefib',
			add = function(total)
				if total > 0 then
					pcall(function()
						return exports['ND_Ambulance']:hasDefib(true)
					end)
				end
			end,
			remove = function(total)
				if total < 1 then
					pcall(function()
						return exports['ND_Ambulance']:hasDefib(false)
					end)
				end
			end
		}
	},
	['medbag'] = {
		label = 'Sac Trauma',
		weight = 1000,
		stack = false,
		consume = 1,
		server = {
			export = 'ND_Ambulance.useBag'
		},
		client = {
			export = 'ND_Ambulance.useBag',
			add = function(total)
				if total > 0 then
					pcall(function()
						return exports['ND_Ambulance']:bag(true)
					end)
				end
			end,
			remove = function(total)
				if total < 1 then
					pcall(function()
						return exports['ND_Ambulance']:bag(false)
					end)
				end
			end
		}
	},
	['gauze'] = {
		label = 'Compresses',
		weight = 80,
		server = {
			export = 'ND_Ambulance.treatment'
		},
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500
		}
	},
	['tourniquet'] = {
		label = 'Garrot',
		weight = 85,
		server = {
			export = 'ND_Ambulance.treatment'
		},
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500
		}
	},
	['splint'] = {
		label = 'Attelle',
		weight = 500,
		server = {
			export = 'ND_Ambulance.treatment'
		},
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500
		}
	},
	['burndressing'] = {
		label = 'Pansement Brulure',
		weight = 50,
		server = {
			export = 'ND_Ambulance.treatment'
		},
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_toilet_roll_01`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500
		}
	},

	['handcuffs'] = {
		label = 'Menottes',
		weight = 200,
		stack = true,
		description = "Des menottes pour arrêter les malfaiteurs.",
	},
	['handcuffkey'] = {
		label = 'Clé de menottes',
		weight = 50,
		stack = true,
		description = "Une clé pour retirer les menottes.",
	},
	['spikestrip'] = {
		label = 'Herse',
		weight = 5000,
		stack = true,
		description = "Une herse pour crever les pneus des véhicules.",
		consume = 0,
		client = {
			event = 'ox_police:useSpikestrip'
		}
	},
	['slug'] = {
		label = 'Projectile',
		weight = 10,
		stack = true,
		description = "Un projectile récupéré sur une scène de crime.",
	},
	['case'] = {
		label = 'Douille',
		weight = 5,
		stack = true,
		description = "Une douille récupérée sur une scène de crime.",
	},
	['black_money'] = {
		label = 'Argent sale',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Vous avez mangé un délicieux burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Vous vous êtes désaltéré avec un Sprunk'
		}
	},
	['cola'] = {
		label = 'Coca-Cola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'Vous vous êtes désaltéré avec un Coca'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Déchet',
	},

	['paperbag'] = {
		label = 'Sac en papier',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['driver_license'] = {
		label = 'Permis de conduire',
		weight = 0,
		stack = false,
		close = true,
		description = "Pas ouf la photo",
		client = { image = 'driverlicense.png' }
	},

	['weaponlicense'] = {
		label = "Permis de port d'armes",
		weight = 0,
		stack = false,
		close = true,
		description = "T'as la permission",
		client = { image = 'weaponlicense.png' }
	},
	['lawyerpass'] = {
		label = "Badge d'avocat",
		weight = 0,
		stack = false,
		close = true,
		description = "Votre badge d'avocat",
		client = { image = 'lawyerpass.png' }
	},

	['panties'] = {
		label = 'Culotte',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Crochet',
		weight = 160,
	},

	['screwdriver'] = {
		label = 'Tournevis',
		weight = 160,
	},

	['phone'] = {
		label = 'Téléphone',
		weight = 190,
		stack = false,
		consume = 0,
	},

	['money'] = {
		label = 'Argent',
	},

	['mustard'] = {
		label = 'Moutarde',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = "T'as bu... de la moutarde ??"
		}
	},
	["mdt"] = {
		label = "MDT",
		weight = 250,
		client = {
			export = "ox_mdt.openMDT"
		}
	},
	['water'] = {
		label = 'Eau',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'Vous avez bu de l\'eau fraîche'
		}
	},
	['armour'] = {
		label = 'Gilet par balle',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Vêtements',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Carte bancaire',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},
	['meth_bag'] = {
		label = 'Sac de Meth',
		weight = 100,
	},
	['scrapmetal'] = {
		label = 'Morceau de métal',
		weight = 10,
	},

	["alive_chicken"] = {
		label = "Poulet vivant",
		stack = true,
		close = true,
	},

	["blowpipe"] = {
		label = "Chalumeau",
		weight = 2,
		stack = true,
		close = true,
	},

	["bread"] = {
		label = "Pain",
		weight = 1,
		stack = true,
		close = true,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'Vous avez mangé du bon pain'
		},
	},

	["carokit"] = {
		label = "Kit carrosserie",
		weight = 3,
		stack = true,
		close = true,
	},

	["carotool"] = {
		label = "Outils",
		weight = 2,
		stack = true,
		close = true,
	},

	["clothe"] = {
		label = "Tissu",
		weight = 1,
		stack = true,
		close = true,
	},

	["copper"] = {
		label = "Cuivre",
		weight = 1,
		stack = true,
		close = true,
	},
	['cigarettebox'] = {
		label = 'Paquet de Malbaré',
		canUse = true,
		weight = 10,
		stack = false,
		close = true,
		description = nil
	},
	['cigarette'] = {
		label = 'Cigarette Malbaré',
		weight = 5,
		stack = false,
		close = true,
		description = nil,
		buttons = {
			{
				label = "Allumer la cigarette",
				action = function(slot, inventoryId)
					exports.mcb_smoke:cigarette(slot, inventoryId)
				end
			},
		}
	},
	['cigarbox'] = {
		label = 'Boîte à cigares',
		canUse = true,
		weight = 200,
		stack = false,
		close = true,
		description = nil
	},
	['cigar'] = {
		label = 'Cigare',
		weight = 10,
		stack = false,
		close = true,
		description = nil,
		buttons = {
			{
				label = "Allumer le cigare",
				action = function(slot, inventoryId)
					exports.mcb_smoke:cigar(slot, inventoryId)
				end
			},
		}
	},
	['joint'] = {
		label = 'Joint',
		weight = 5,
		stack = true,
		close = true,
		description = 'Un joint roulé à la main',
		buttons = {
			{
				label = "Allumer le joint",
				action = function(slot, inventoryId)
					exports.mcb_smoke:joint(slot, inventoryId)
				end
			},
		}
	},
	['lighter'] = {
		label = 'Briquet',
		weight = 5,
		stack = true,
		close = true,
		description = 'Un briquet pour allumer vos cigarettes, cigares et joints',
	},
	["cutted_wood"] = {
		label = "Bois découpé",
		weight = 1,
		stack = true,
		close = true,
	},
	["wooden_handle"] = {
		label = "Manche en bois",
		weight = 1,
		stack = true,
		close = true,
	},

	['diagnostic_tool'] = {
		label = 'Outil de diagnostic',
		weight = 1,
		stack = true,
		close = true,
	},

	['repair_kit'] = {
		label = 'Kit de réparation',
		weight = 1,
		stack = true,
		close = true,
	},

	['sponge'] = {
		label = 'Éponge',
		weight = 1,
		stack = true,
		close = true,
	},

	["diamond"] = {
		label = "Diamant",
		weight = 1,
		stack = true,
		close = true,
	},

	["essence"] = {
		label = "Essence",
		weight = 1,
		stack = true,
		close = true,
	},

	["fabric"] = {
		label = "Tissu brut",
		weight = 1,
		stack = true,
		close = true,
	},

	["fish"] = {
		label = "Poisson",
		weight = 1,
		stack = true,
		close = true,
	},

	["fixkit"] = {
		label = "Kit de réparation",
		weight = 3,
		stack = true,
		close = true,
	},

	["fixtool"] = {
		label = "Outils de réparation",
		weight = 2,
		stack = true,
		close = true,
	},

	["gazbottle"] = {
		label = "Bouteille de gaz",
		weight = 2,
		stack = true,
		close = true,
	},

	["gold"] = {
		label = "Or",
		weight = 1,
		stack = true,
		close = true,
	},

	["iron"] = {
		label = "Lingot de métal",
		weight = 1,
		stack = true,
		close = true,
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
	},
	["mecanism"] = {
		label = "Mécanisme",
		weight = 2,
		stack = true,
		close = true,
		description = "Un mécanisme de la taille d'une pièce, ne peut pas être fabriqué"
	},

	["medikit"] = {
		label = "Trousse de soins",
		weight = 2,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Filet de poulet",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_plank"] = {
		label = "Bois emballé",
		weight = 1,
		stack = true,
		close = true,
	},
	["cylinder_head"] = {
		label = "Culasse",
		weight = 1,
		stack = true,
		close = true,
	},
	["iron_ore"] = {
		label = "Minerai de Fer",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol"] = {
		label = "Pétrole brut",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol_raffin"] = {
		label = "Pétrole raffiné",
		weight = 1,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Poulet abattu",
		weight = 1,
		stack = true,
		close = true,
	},

	["stone"] = {
		label = "Pierre",
		weight = 1,
		stack = true,
		close = true,
	},

	["washed_stone"] = {
		label = "Pierre lavée",
		weight = 1,
		stack = true,
		close = true,
	},

	["wood"] = {
		label = "Bois",
		weight = 1,
		stack = true,
		close = true,
	},

	["wool"] = {
		label = "Laine",
		weight = 1,
		stack = true,
		close = true,
	},
	['corn_seed'] = {
		label = 'Graine de maïs',
		weight = 1,
		stack = true,
		close = true,
		description = "Une graine qui fait pousser du maïs."
	},

	['corn_raw'] = {
		label = 'Maïs brut',
		weight = 1,
		stack = true,
		close = true,
		description = "Doit être transformé."
	},

	['corn'] = {
		label = 'Maïs',
		weight = 1,
		stack = true,
		close = true,
	},

	['tomato_seed'] = {
		label = 'Graine de tomate',
		weight = 1,
		stack = true,
		close = true,
		description = "Une graine qui fait pousser une tomate."
	},

	['tomato_raw'] = {
		label = 'Tomate brute',
		weight = 1,
		stack = true,
		close = true,
		description = "Doit être transformée."
	},

	['tomato'] = {
		label = 'Tomate',
		weight = 1,
		stack = true,
		close = true,
	},

	['wheat_seed'] = {
		label = 'Graine de blé',
		weight = 1,
		stack = true,
		close = true,
		description = "Une graine qui fait pousser du blé."
	},

	['wheat_raw'] = {
		label = 'Blé brut',
		weight = 1,
		stack = true,
		close = true,
		description = "Doit être transformé."
	},

	['wheat'] = {
		label = 'Blé',
		weight = 1,
		stack = true,
		close = true,
	},

	['broccoli_seed'] = {
		label = 'Graine de brocoli',
		weight = 1,
		stack = true,
		close = true,
		description = "Une graine qui fait pousser du brocoli."
	},

	['broccoli_raw'] = {
		label = 'Brocoli brut',
		weight = 1,
		stack = true,
		close = true,
		description = "Doit être transformé."
	},

	['broccoli'] = {
		label = 'Brocoli',
		weight = 1,
		stack = true,
		close = true,
	},

	['carrot_seed'] = {
		label = 'Graine de carotte',
		weight = 1,
		stack = true,
		close = true,
		description = "Une graine qui fait pousser une carotte."
	},

	['carrot_raw'] = {
		label = 'Carotte brute',
		weight = 1,
		stack = true,
		close = true,
		description = "Doit être transformée."
	},

	['carrot'] = {
		label = 'Carotte',
		weight = 1,
		stack = true,
		close = true,
	},

	['potato_seed'] = {
		label = 'Graine de pomme de terre',
		weight = 1,
		stack = true,
		close = true,
		description = "Une graine qui fait pousser une pomme de terre."
	},

	['potato_raw'] = {
		label = 'Pomme de terre brute',
		weight = 1,
		stack = true,
		close = true,
		description = "Doit être transformée."
	},

	['potato'] = {
		label = 'Pomme de terre',
		weight = 1,
		stack = true,
		close = true,
	},

	['pickle_seed'] = {
		label = 'Graine de cornichon',
		weight = 1,
		stack = true,
		close = true,
		description = "Une graine qui fait pousser un cornichon."
	},

	['pickle_raw'] = {
		label = 'Cornichon brut',
		weight = 1,
		stack = true,
		close = true,
		description = "Doit être transformé."
	},

	['pickle'] = {
		label = 'Cornichon',
		weight = 1,
		stack = true,
		close = true,
	},

	['weed_seed'] = {
		label = 'Graine de weed',
		weight = 1,
		stack = true,
		close = true,
		description = "Une belle graine pour une belle plante."
	},

	['weed_raw'] = {
		label = 'Weed brute',
		weight = 1,
		stack = true,
		close = true,
		description = "Doit être transformée."
	},


	['cocaine_seed'] = {
		label = 'Graine de coca',
		weight = 1,
		stack = true,
		close = true,
		description = "Une graine qui fait pousser de la coca."
	},

	['cocaine_raw'] = {
		label = 'Cocaïne brute',
		weight = 1,
		stack = true,
		close = true,
		description = "Doit être transformée."
	},


	['heroine'] = {
		label = 'Héroïne',
		weight = 10,
		stack = true,
		close = true,
		description = 'De l\'héroïne pure',
		client = {
			export = 'mcb_drugs.PackageHeroine'
		}
	},

	['seringue'] = {
		label = 'Seringue vide',
		weight = 2,
		stack = true,
		close = true,
		description = 'Une seringue vide, peut être remplie'
	},

	['seringue_heroine'] = {
		label = 'Seringue d\'héroïne',
		weight = 12,
		stack = true,
		close = true,
		description = 'Une seringue remplie d\'héroïne'
	},

	['feuille_ocb'] = {
		label = 'Feuille OCB',
		weight = 1,
		stack = true,
		close = true,
		description = 'Une feuille à rouler',
		client = {
			export = 'mcb_drugs.RollJoint'
		}
	},

	['garden_pitcher'] = {
		label = 'Arrosoir',
		weight = 1,
		stack = true,
		durability = 0.3,
		close = true,
	},

	['garden_shovel'] = {
		label = 'Pelle de jardin',
		weight = 1,
		stack = true,
		close = true,
	},

	['weed'] = {
		label = 'Weed',
		weight = 10,
		stack = true,
		close = true,
		description = 'De la bonne weed',
		client = {
			export = 'mcb_drugs.PackageWeed' -- Assurez-vous que ceci correspond au nom de votre ressource
		}
	},

	['cocaine'] = {
		label = 'Cocaïne',
		weight = 10,
		stack = true,
		close = true,
		description = 'De la bonne blanche',
		client = {
			export = 'mcb_drugs.PackageCocaine'
		}
	},

	['pochon'] = {
		label = 'Pochon',
		weight = 1,
		stack = true,
		close = true,
		description = 'Un pochon vide pour emballer la drogue'
	},

	['poocho_weed'] = {
		label = 'Pochon de Weed',
		weight = 15,
		stack = true,
		close = true,
		description = 'Un pochon rempli de weed'
	},

	['poocho_cocaine'] = {
		label = 'Pochon de Cocaïne',
		weight = 15,
		stack = true,
		close = true,
		description = 'Un pochon rempli de cocaïne'
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
	},
}
