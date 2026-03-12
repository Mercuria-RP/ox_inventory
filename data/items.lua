return {
	['testburger'] = {
		label = 'Test Burger',
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
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
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
		label = 'Portes Clés',
		weight = 100,
	},
	['contract'] = {
		label = 'Contract',
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
		label = 'Medical Bag',
		weight = 220,
		stack = true,
		description = "A comprehensive medical kit for treating injuries and ailments.",
		client = {
			export = 'ars_ambulancejob.placeMedicalBag'
		}
	},
	
	['defibrillator'] = {
		label = 'Defibrillator',
		weight = 100,
		stack = true,
		description = "Used for reviving patients.",
	},

	['condom'] = {
		label = 'Préservatif',
		weight = 100,
		stack = true,
		description = "Pour la baise, la bonne.",
	},
	
	['tweezers'] = {
		label = 'Tweezers',
		weight = 100,
		stack = true,
		description = "Precision tweezers for safely removing foreign objects, such as bullets, from wounds.",
	},
	
	['burncream'] = {
		label = 'Burn Cream',
		weight = 100,
		stack = true,
		description = "Specialized cream for treating and soothing minor burns and skin irritations.",
	},
	
	['suturekit'] = {
		label = 'Suture Kit',
		weight = 100,
		stack = true,
		description = "A kit containing surgical tools and materials for stitching and closing wounds.",
	},
	
	['icepack'] = {
		label = 'Ice Pack',
		weight = 200,
		stack = true,
		description = "An ice pack used to reduce swelling and provide relief from pain and inflammation.",
	},
	
	['stretcher'] = {
		label = 'Ice Pack',
		weight = 200,
		stack = true,
		description = "An ice pack used to reduce swelling and provide relief from pain and inflammation.",
	},
	
	['emstablet'] = {
		label = 'Ems tablet',
		weight = 200,
		stack = true,
		client = {
			export = 'ars_ambulancejob.openDistressCalls'
		}
	},
	['handcuffs'] = {
		label = 'HandCuffs',
		weight = 200,
		stack = true,
		description = "A nice handcuffs for arrest bad people.",
	},
	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
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
			notification = 'You quenched your thirst with a sprunk'
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
			notification = 'You quenched your thirst with a coca'
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
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['id_card'] = {
		label = 'Id Card',
		weight = 0,
		stack = false,
		close = true,
		description = 'Type of this ID card: Identity',
		client = {image = 'card_id.png'}
  	},

	['driver_license'] = {
        label = 'Drivers License',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'driverlicense.png'}
    },
    ['weaponlicense'] = {
        label = 'Weapon License',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'weaponlicense.png'}
    },
    ['lawyerpass'] = {
        label = 'Lawyer Pass',
        weight = 0,
        stack = false,
        close = true,
        description = "Your Description",
        client = {image = 'lawyerpass.png'}
    },

	['panties'] = {
		label = 'Knickers',
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
		label = 'Lockpick',
		weight = 160,
	},
	
	['screwdriver'] = {
		label = 'Tournevis',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
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
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},
	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
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
		label = "Living chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["blowpipe"] = {
		label = "Blowtorch",
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
			notification = 'You ate a delicious burger'
		},
	},

	["carokit"] = {
		label = "Body Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["carotool"] = {
		label = "Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["clothe"] = {
		label = "Cloth",
		weight = 1,
		stack = true,
		close = true,
	},

	["copper"] = {
		label = "Copper",
		weight = 1,
		stack = true,
		close = true,
	},
	['cigarettebox'] = {
		label = 'Paquet de Marlbaré',
		canUse = true,
		weight = 10,
		stack = false,
		close = true,
		description = nil
	},
	['cigarette'] = {
		label = 'Cigarette Marlbaré',
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
		label = "Cut wood",
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
		label = 'Diagnostic Tool',
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
		label = 'Eponge',
		weight = 1,
		stack = true,
		close = true,
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1,
		stack = true,
		close = true,
	},

	["essence"] = {
		label = "Gas",
		weight = 1,
		stack = true,
		close = true,
	},

	["fabric"] = {
		label = "Fabric",
		weight = 1,
		stack = true,
		close = true,
	},

	["fish"] = {
		label = "Fish",
		weight = 1,
		stack = true,
		close = true,
	},

	["fixkit"] = {
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["fixtool"] = {
		label = "Repair Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["gazbottle"] = {
		label = "Gas Bottle",
		weight = 2,
		stack = true,
		close = true,
	},

	["gold"] = {
		label = "Gold",
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
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Chicken fillet",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_plank"] = {
		label = "Packaged wood",
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
		label = "Oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol_raffin"] = {
		label = "Processed oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Slaughtered chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["stone"] = {
		label = "Stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["washed_stone"] = {
		label = "Washed stone",
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
		label = 'Corn Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows corn."
	},
	
	['corn_raw'] = {
		label = 'Raw Corn',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['corn'] = {
		label = 'Corn',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['tomato_seed'] = {
		label = 'Tomato Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows a tomato."
	},
	
	['tomato_raw'] = {
		label = 'Raw Tomato',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['tomato'] = {
		label = 'Tomato',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['wheat_seed'] = {
		label = 'Wheat Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows Wheat."
	},
	
	['wheat_raw'] = {
		label = 'Raw Wheat',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['wheat'] = {
		label = 'Wheat',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['broccoli_seed'] = {
		label = 'Broccoli Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows broccoli."
	},
	
	['broccoli_raw'] = {
		label = 'Raw Broccoli',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['broccoli'] = {
		label = 'Broccoli',
		weight = 1,
		stack = true,
		close = true,
	},

	['carrot_seed'] = {
		label = 'Carrot Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows a carrot."
	},
	
	['carrot_raw'] = {
		label = 'Raw Carrot',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['carrot'] = {
		label = 'Carrot',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['potato_seed'] = {
		label = 'Potato Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows a potato."
	},
	
	['potato_raw'] = {
		label = 'Raw Potato',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['potato'] = {
		label = 'Potato',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['pickle_seed'] = {
		label = 'Pickle Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows a pickle."
	},
	
	['pickle_raw'] = {
		label = 'Raw Pickle',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	['pickle'] = {
		label = 'Pickle',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['weed_seed'] = {
		label = 'Weed Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "Une belle graine pour une belle plante."
	},
	
	['weed_raw'] = {
		label = 'Raw Weed',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	
	['cocaine_seed'] = {
		label = 'Cocaine Seed',
		weight = 1,
		stack = true,
		close = true,
		description = "This is a seed that grows cocaine."
	},
	
	['cocaine_raw'] = {
		label = 'Raw Cocaine',
		weight = 1,
		stack = true,
		close = true,
		description = "You will need to process this."
	},
	
	
	['heroin'] = {
		label = 'Heroin',
		weight = 1,
		stack = true,
		close = true,
	},
	
	['garden_pitcher'] = {
		label = 'Garden Pitcher',
		weight = 1,
		stack = true,
		durability = 0.3,
		close = true,
	},
	
	['garden_shovel'] = {
		label = 'Garden Shovel',
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
			export = 'mcb_drugs.PackageWeed'  -- Assurez-vous que ceci correspond au nom de votre ressource
		}
	},
	
	['cocaine'] = {
		label = 'Cocaine',
		weight = 10,
		stack = true,
		close = true,
		description = 'De la bonne blanche',
		client = {
			export = 'mcb_drugs.PackageCocaine'  -- Assurez-vous que ceci correspond au nom de votre ressource
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
		label = 'Pochon de Cocaine',
		weight = 15,
		stack = true,
		close = true,
		description = 'Un pochon rempli de cocaine'
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
	},
}