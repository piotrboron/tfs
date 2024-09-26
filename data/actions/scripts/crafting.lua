local config = {
	-- Window Config
		mainTitleMsg = "Crafting System", -- Main window title
		mainMsg = "Welcome to the crafting system. Please choose a vocation to begin.", -- Main window message
	
		craftTitle = "Crafting System: ", -- Title of the crafting screen after player picks of vocation
		craftMsg = "Here is a list of all items that can be crafted for the ", -- Message on the crafting screen after player picks of vocation
	-- End Window Config
	
	-- Player Notifications Config
		needItems = "You do not have all the required items to make ", -- This is the message the player recieves if he does not have all required items
	
	-- Crafting Config
		system = {
		[1] = {vocation = "All vocations", -- This is the category can be anything.
				items = {
					[1] = {item = "Mythical Ice Shield", -- item name (THIS MUST BE EXACT OR IT WILL NOT WORK!)
							itemID = 21697, -- item to be made
							reqItems = { -- items and the amounts in order to craft.
								[1] = {item = 8905, count = 1}, -- r shield
								[2] = {item = 8909, count = 1}, -- r shield
								[3] = {item = 8907, count = 1}, -- r shield
								[4] = {item = 8906, count = 1}, -- r shield
								[5] = {item = 8908, count = 1}, -- r shield
								[6] = {item = 9971, count = 6}, -- gold ingot		
								[7] = {item = 18413, count = 60}, -- b crystal shard
								[8] = {item = 18414, count = 60}, -- v crystal shard
								},
							},
						
					[2] = {item = "Mythical coat",
							itemID = 8821,		
							reqItems = {
								[1] = {item = 18418, count = 25}, -- b crystal splinter
								[2] = {item = 18417, count = 25}, -- br crystal splinter
								[3] = {item = 18416, count = 25}, -- green crystal splinter
								[4] = {item = 9971, count = 6}, -- gold ingot			
								[5] = {item = 5880, count = 100}, -- iron ore								
								},
							},					
					
					[3] = {item = "Visage of the end days",
							itemID = 25410,			
							reqItems = {
								[1] = {item = 2471, count = 1}, -- golden helmet
								[2] = {item = 9971, count = 6}, -- gold ingot			
								[3] = {item = 18418, count = 25}, -- b crystal splinter
								[4] = {item = 18417, count = 25}, -- br crystal splinter
								[5] = {item = 18416, count = 25}, -- green crystal splinter
								[6] = {item = 18413, count = 50}, -- blue crystal shard
								[7] = {item = 18414, count = 50}, -- violet crystal shard
							},
						},
						
					[4] = {item = "Pair of soft boots",
							itemID = 6132,				
							reqItems = {
								[1] = {item = 2195, count = 1}, -- boh
								[2] = {item = 2160, count = 50}, -- cc
							},
						},
						
					[5] = {item = "Mythical mask",
							itemID = 3967,				
							reqItems = {
								[1] = {item = 25410, count = 1}, -- VotED
								[2] = {item = 9971, count = 6}, -- gold ingot			
								[3] = {item = 18418, count = 25}, -- b crystal splinter
								[4] = {item = 18417, count = 25}, -- br crystal splinter
								[5] = {item = 18416, count = 25}, -- green crystal splinter
								[6] = {item = 18413, count = 25}, -- blue crystal shard
								[7] = {item = 18414, count = 25}, -- violet crystal shard
								[8] = {item = 2497, count = 1}, -- crusader helmet									
							},
						},
						
					[6] = {item = "Sweetheart ring",
							itemID = 24324,			
							reqItems = {
								[1] = {item = 21693, count = 1}, -- RoTF
								[2] = {item = 9971, count = 8}, -- gold ingot			
								[3] = {item = 5880, count = 100}, -- iron ore
								[4] = {item = 18417, count = 200}, -- br crystal splinter
								[5] = {item = 18416, count = 200}, -- green crystal splinter
								[6] = {item = 18413, count = 200}, -- blue crystal shard
								[7] = {item = 18414, count = 200}, -- violet crystal shard
							},
						},
					[7] = {item = "Panda pet ring",
						itemID = 7697,			
						reqItems = {
							[1] = {item = 24324, count = 1}, -- Sweetheart ring
							[2] = {item = 9971, count = 100}, -- gold ingot			
							[3] = {item = 5880, count = 50}, -- iron ore
							[4] = {item = 18417, count = 50}, -- br crystal splinter
							[5] = {item = 18416, count = 50}, -- green crystal splinter
							[6] = {item = 18413, count = 50}, -- blue crystal shard
							[7] = {item = 18414, count = 50}, -- violet crystal shard
						},
					},						
					[8] = {item = "Mythical legs",
						itemID = 15490,			
						reqItems = {
								[1] = {item = 15409, count = 1}, -- depth ocrea
								[2] = {item = 9971, count = 8}, -- gold ingot			
								[3] = {item = 5880, count = 100}, -- iron ore
								[4] = {item = 18417, count = 125}, -- br crystal splinter
								[5] = {item = 18416, count = 125}, -- green crystal splinter
								[6] = {item = 18413, count = 125}, -- blue crystal shard
								[7] = {item = 18414, count = 125}, -- violet crystal shard
								[8] = {item = 18421, count = 50}, -- green crystal fragment
								[9] = {item = 18420, count = 50}, -- red crystal fragment
								[10] = {item = 18419, count = 50}, -- b crystal fragment							
						},
					},
					[9] = {item = "Mythical rift shield",
						itemID = 25382,			
						reqItems = {
								[1] = {item = 21697, count = 1}, -- mythical ice shield
								[2] = {item = 9971, count = 13}, -- gold ingot			
								[3] = {item = 5880, count = 150}, -- iron ore
								[4] = {item = 18417, count = 200}, -- br crystal splinter
								[5] = {item = 18416, count = 200}, -- green crystal splinter
								[6] = {item = 18413, count = 200}, -- blue crystal shard
								[7] = {item = 18414, count = 200}, -- violet crystal shard
								[8] = {item = 18421, count = 50}, -- green crystal fragment
								[9] = {item = 18420, count = 50}, -- red crystal fragment
								[10] = {item = 18419, count = 50}, -- b crystal fragment							
						},
					},				
					[10] = {item = "Unholy teleport scroll",
						itemID = 21243,			
						reqItems = {
								[1] = {item = 13531, count = 1}, -- scorpion
								[2] = {item = 10562, count = 1}, -- xaloth
								[3] = {item = 10531, count = 1}, -- eerie
								[4] = {item = 5930, count = 1}, -- malgorth
								[5] = {item = 5893, count = 1}, -- vorkesh
								[6] = {item = 9971, count = 100}, -- gold ingot					
						},
					},				
					[11] = {item = "Mythical doll",
						itemID = 16107,			
						reqItems = {
								[1] = {item = 13291, count = 1}, -- mythical dragon fang
								[2] = {item = 9971, count = 1}, -- gold ingot
								[3] = {item = 5880, count = 1000}, -- iron ore							
						},
					},											
					},
				},
			
		[2] = {vocation= "ED / MS", 
				items = {

					[1] = {item = "Book of lies",
							itemID = 25411,		
							reqItems = {
								[1] = {item = 8918, count = 1}, -- SoDM
								[2] = {item = 2160, count = 50}, -- cc
								[3] = {item = 18413, count = 25}, -- blue crystal shard
							},
						},				

					[2] = {item = "Mythical wand of mayhem",
							itemID = 26318,
							reqItems = {
								[1] = {item = 7958, count = 1}, -- jester staff
								[2] = {item = 2453, count = 1}, -- arcane staff
								[3] = {item = 2160, count = 50}, -- cc
							},
						},
						
		
					
					[3] = {item = "MS ONLY Wand of everblazing",
							itemID = 18409,			
							reqItems = {
								[1] = {item = 26318, count = 1}, -- mythical wand of mayhem
								[2] = {item = 9971, count = 5}, -- gold ingot			
								[3] = {item = 5880, count = 75}, -- iron ore
								[4] = {item = 18417, count = 75}, -- br crystal splinter
								[5] = {item = 18416, count = 75}, -- green crystal splinter
								[6] = {item = 18413, count = 75}, -- blue crystal shard
								[7] = {item = 18414, count = 75}, -- violet crystal shard
							},
						},
						
					[4] = {item = "Wand of dimensions",
							itemID = 13760,				
							reqItems = {
								[1] = {item = 26318, count = 1}, -- wand of everblazing
								[2] = {item = 9971, count = 8}, -- gold ingot			
								[3] = {item = 18421, count = 150}, -- green crystal fragment
								[4] = {item = 18420, count = 150}, -- red crystal fragment
								[5] = {item = 18419, count = 150}, -- b crystal fragment									
							},
						},

					[5] = {item = "ED ONLY muck rod",
						itemID = 18411,				
						reqItems = {
								[1] = {item = 13760, count = 1}, -- wand of dimensions
								[2] = {item = 9971, count = 10}, -- gold ingot			
								[3] = {item = 18421, count = 250}, -- green crystal fragment
								[4] = {item = 18420, count = 250}, -- red crystal fragment
								[5] = {item = 18419, count = 250}, -- b crystal fragment								
							},
						},											
						
					[6] = {item = "MS ONLY Wand of defiance",
							itemID = 18390,				
							reqItems = {
								[1] = {item = 13760, count = 1}, -- wand of dimensions
								[2] = {item = 9971, count = 10}, -- gold ingot			
								[3] = {item = 18421, count = 250}, -- green crystal fragment
								[4] = {item = 18420, count = 250}, -- red crystal fragment
								[5] = {item = 18419, count = 250}, -- b crystal fragment
							},
						},
					[7] = {item = "Crystal wand",
						itemID = 2184,				
						reqItems = {
							[1] = {item = 9971, count = 50}, -- gold ingot
							[2] = {item = 5880, count = 300}, -- iron ore
							[3] = {item = 18421, count = 300}, -- green crystal fragment
							[4] = {item = 18420, count = 300}, -- red crystal fragment
							[5] = {item = 18419, count = 300}, -- b crystal fragment
							[6] = {item = 18427, count = 150}, -- pulverized ore		
							[7] = {item = 18429, count = 150}, -- vein of ore	
							[8] = {item = 13760, count = 1}, -- wand of dimensions																		
						},
					},						
					[8] = {item = "Shapechanger",
					itemID = 13238,			
					reqItems = {
						[1] = {item = 2184, count = 1}, -- crystal wand							
						[2] = {item = 9971, count = 300}, -- gold ingot
						[3] = {item = 5880, count = 500}, -- iron ore
						[4] = {item = 18421, count = 300}, -- green crystal fragment
						[5] = {item = 18420, count = 300}, -- red crystal fragment
						[6] = {item = 18419, count = 300}, -- b crystal fragment
						[7] = {item = 18427, count = 150}, -- pulverized ore		
						[8] = {item = 18429, count = 150}, -- vein of ore	
						[9] = {item = 2184, count = 1}, -- crystal wand																	
					},
				},					
					[9] = {item = "Wand of remedy",
				itemID = 25954,			
				reqItems = {
					[1] = {item = 13238, count = 1}, -- shapechanger
					[2] = {item = 9971, count = 1000}, -- gold ingot			
					[3] = {item = 18421, count = 300}, -- g crystal fragment
					[4] = {item = 18420, count = 300}, -- r crystal fragment
					[5] = {item = 18413, count = 300}, -- blue crystal shard
					[6] = {item = 18414, count = 300}, -- violet crystal shard																	
					[7] = {item = 5880, count = 700}, -- iron ore													
				},
			},														
					[10] = {item = "Mythical spellbook",
						itemID = 22422,				
						reqItems = {
								[1] = {item = 25411, count = 1}, -- book of lies
								[2] = {item = 9971, count = 8}, -- gold ingot			
								[3] = {item = 18421, count = 250}, -- green crystal fragment
								[4] = {item = 18420, count = 250}, -- red crystal fragment
								[5] = {item = 18419, count = 250}, -- b crystal fragment
								[6] = {item = 6120, count = 1}, -- dragha's spellbook							
							},
						},

					[11] = {item = "Mythical icy culottes",
						itemID = 21700,				
						reqItems = {
								[1] = {item = 15490, count = 1}, -- mythical legs
								[2] = {item = 9971, count = 8}, -- gold ingot			
								[3] = {item = 18421, count = 250}, -- green crystal fragment
								[4] = {item = 18420, count = 250}, -- red crystal fragment
								[5] = {item = 18419, count = 250}, -- b crystal fragment								
								},
							},	
					[12] = {item = "Mythical spirit cloak",
							itemID = 8870,				
							reqItems = {
									[1] = {item = 8821, count = 1}, -- mythical legs
									[2] = {item = 9971, count = 30}, -- gold ingot			
									[3] = {item = 10571, count = 20}, -- green crystal fragment
									[4] = {item = 18420, count = 250}, -- red crystal fragment
									[5] = {item = 18419, count = 250}, -- b crystal fragment								
									},
								},																		
					},
				},
				
			[3] = {vocation = "Royal Paladin", 
					items = {
						[1] = {item = "Crystal arrow",
								itemID = 2352,
								reqItems = {
								[1] = {item = 2544, count = 100}, -- arrow
								[2] = {item = 18413, count = 30}, -- blue crystal shard
								[3] = {item = 18414, count = 30}, -- violet crystal shard
								[4] = {item = 2160, count = 30}, -- cc
								},
							},
							
						[2] = {item = "Umbral Master Crossbow",
								itemID = 22421,		
								reqItems = {
								[1] = {item = 2455, count = 1}, -- crossbow
								[2] = {item = 5880, count = 25}, -- Iron Ore
								[3] = {item = 18413, count = 75}, -- blue crystal shard
								[4] = {item = 18414, count = 75}, -- violet crystal shard
								[5] = {item = 2160, count = 50}, -- cc
								},
							},						
							
						[3] = {item = "Crystal crossbow",
								itemID = 18453,				
								reqItems = {
								[1] = {item = 9971, count = 6}, -- gold ingot			
								[2] = {item = 18427, count = 50}, -- pulverized ore
								[3] = {item = 18421, count = 50}, -- g crystal fragment
								[4] = {item = 18420, count = 50}, -- r crystal fragment
								[5] = {item = 18429, count = 25}, -- vein of ore	
								[6] = {item = 22421, count = 1}, -- umbral master crossbow															
								},
							},
							
						[4] = {item = "Mythical crossbow",
								itemID = 15644,				
								reqItems = {
								[1] = {item = 9971, count = 10}, -- gold ingot			
								[2] = {item = 18427, count = 50}, -- pulverized ore
								[3] = {item = 18421, count = 50}, -- g crystal fragment
								[4] = {item = 18420, count = 50}, -- r crystal fragment
								[5] = {item = 18413, count = 50}, -- blue crystal shard
								[6] = {item = 18414, count = 50}, -- violet crystal shard																	
								[7] = {item = 18429, count = 50}, -- vein of ore
								[8] = {item = 18453, count = 1}, -- crystal crossbow						
								},
							},
						[5] = {item = "Magic crossbow",
							itemID = 21690,				
							reqItems = {
							[1] = {item = 15644, count = 1}, -- mythical crossbow
							[2] = {item = 9971, count = 15}, -- gold ingot			
							[3] = {item = 18421, count = 100}, -- g crystal fragment
							[4] = {item = 18420, count = 100}, -- r crystal fragment
							[5] = {item = 18413, count = 100}, -- blue crystal shard
							[6] = {item = 18414, count = 100}, -- violet crystal shard																	
							[7] = {item = 18429, count = 100}, -- vein of ore	
							[8] = {item = 5947, count = 1}, -- elane's crossbow							
							},
						},		
						[6] = {item = "Cursed magic crossbow",
							itemID = 16111,				
							reqItems = {
							[1] = {item = 21690, count = 1}, -- magic crossbow
							[2] = {item = 9971, count = 100}, -- gold ingot			
							[3] = {item = 18421, count = 300}, -- g crystal fragment
							[4] = {item = 18420, count = 300}, -- r crystal fragment
							[5] = {item = 18413, count = 300}, -- blue crystal shard
							[6] = {item = 18414, count = 300}, -- violet crystal shard																	
							[7] = {item = 18429, count = 300}, -- vein of ore	
							[8] = {item = 11218, count = 200}, -- beetle legs							
							},
						},		
						[7] = {item = "Modified crossbow",
							itemID = 8849,				
							reqItems = {
							[1] = {item = 16111, count = 1}, -- magic crossbow
							[2] = {item = 9971, count = 500}, -- gold ingot			
							[3] = {item = 18421, count = 300}, -- g crystal fragment
							[4] = {item = 18420, count = 300}, -- r crystal fragment
							[5] = {item = 18413, count = 300}, -- blue crystal shard
							[6] = {item = 18414, count = 300}, -- violet crystal shard																	
							[7] = {item = 18429, count = 1000}, -- vein of ore	
							},
						},	

						[8] = {item = "Crossbow of remedy",
							itemID = 25950,				
							reqItems = {
							[1] = {item = 8849, count = 1}, -- modified crossbow
							[2] = {item = 9971, count = 1000}, -- gold ingot			
							[3] = {item = 18421, count = 300}, -- g crystal fragment
							[4] = {item = 18420, count = 300}, -- r crystal fragment
							[5] = {item = 18413, count = 300}, -- blue crystal shard
							[6] = {item = 18414, count = 300}, -- violet crystal shard																	
							[7] = {item = 5880, count = 500}, -- iron ore	
							},
						},																								

						[9] = {item = "Depth lorica",
							itemID = 15407,			
							reqItems = {
							[1] = {item = 25188, count = 1}, -- thundersoul tabard
							[2] = {item = 9971, count = 4}, -- gold ingot			
							[3] = {item = 18413, count = 75}, -- blue crystal shard
							[4] = {item = 18414, count = 75}, -- violet crystal shard
							[5] = {item = 18415, count = 75}, -- violet crystal shard									

							},
						},		
						[10] = {item = "Mythical skirt",
							itemID = 3983,			
							reqItems = {
							[1] = {item = 2346, count = 1}, -- tear from quest
							[2] = {item = 2352, count = 1}, -- depth orcea							
							[3] = {item = 9971, count = 8}, -- gold ingot			
							[4] = {item = 18413, count = 75}, -- blue crystal shard
							[5] = {item = 18414, count = 75}, -- violet crystal shard
							[6] = {item = 18415, count = 75}, -- violet crystal shard		
							[7] = {item = 18421, count = 150}, -- g crystal fragment														

							},
						},													
						},
					},
			
			[4] = {vocation = "Elite Knight", 
					items = {
						[1] = {item = "Full mythical sword",
								itemID = 22403,
								reqItems = {
									[1] = {item = 2390, count = 1}, -- Magic longsword
									[2] = {item = 2160, count = 50}, -- cc
									[3] = {item = 2148, count = 50}, -- gc
									[4] = {item = 18427, count = 10}, -- Pulverized ore
									[5] = {item = 2152, count = 50}, -- pc
									[6] = {item = 18413, count = 25}, -- blue crystal shard
									[7] = {item = 18414, count = 25}, -- violet crystal shard									
								},
							},
							
						[2] = {item = "Red full mythical sword",
								itemID = 25416,		
								reqItems = {
									[1] = {item = 22403, count = 1}, -- fms
									[2] = {item = 9971, count = 5}, -- gold ingot			
									[3] = {item = 18427, count = 25}, -- Pulverized ore
									[4] = {item = 5880, count = 100}, -- iron ore									
									[5] = {item = 18413, count = 100}, -- blue crystal shard
									[6] = {item = 18414, count = 100}, -- violet crystal shard
									[7] = {item = 18420, count = 85}, -- r crystal fragment									
								},
							},						
						
						[3] = {item = "Shiny blade",
								itemID = 18465,		
								reqItems = {
									[1] = {item = 25416, count = 1}, -- red fms
									[2] = {item = 9971, count = 10}, -- gold ingot			
									[3] = {item = 5880, count = 100}, -- Iron ore
									[4] = {item = 18413, count = 100}, -- blue crystal shard
									[5] = {item = 18414, count = 100}, -- violet crystal shard
									[6] = {item = 18420, count = 100}, -- r crystal fragment
									[7] = {item = 18421, count = 100}, -- g crystal fragment									
								},
							},
							
						[4] = {item = "Icy blacksteel sword",
								itemID = 7766,				
								reqItems = {
									[1] = {item = 18465, count = 1}, -- shiny blade
									[2] = {item = 9971, count = 25}, -- gold ingot			
									[3] = {item = 5880, count = 150}, -- Iron ore
									[4] = {item = 18429, count = 100}, -- vein of ore									
									[5] = {item = 18413, count = 150}, -- blue crystal shard
									[6] = {item = 18414, count = 150}, -- violet crystal shard
									[7] = {item = 18420, count = 150}, -- r crystal fragment
									[8] = {item = 18421, count = 150}, -- g crystal fragment	
									[9] = {item = 8980, count = 1}, -- mexcalibur									
								},
							},
						[5] = {item = "Icy dragon slayer",
							itemID = 7767,				
							reqItems = {
								[1] = {item = 9971, count = 50}, -- gold ingot
								[2] = {item = 5880, count = 300}, -- iron ore
								[3] = {item = 18421, count = 300}, -- green crystal fragment
								[4] = {item = 18420, count = 300}, -- red crystal fragment
								[5] = {item = 18419, count = 300}, -- b crystal fragment
								[6] = {item = 18427, count = 150}, -- pulverized ore		
								[7] = {item = 18429, count = 150}, -- vein of ore	
								[8] = {item = 7766, count = 1}, -- icy blacksteel sword																				
							},
						},			
						[6] = {item = "Mythical blacksteel sword",
							itemID = 7872,				
							reqItems = {
								[1] = {item = 7767, count = 1}, -- icy dragon slayer							
								[2] = {item = 9971, count = 500}, -- gold ingot
								[3] = {item = 5880, count = 500}, -- iron ore
								[4] = {item = 18421, count = 300}, -- green crystal fragment
								[5] = {item = 18420, count = 300}, -- red crystal fragment
								[6] = {item = 18419, count = 300}, -- b crystal fragment
								[7] = {item = 18427, count = 150}, -- pulverized ore		
								[8] = {item = 18429, count = 150}, -- vein of ore																		
							},
						},					
						[7] = {item = "Blade of remedy",
							itemID = 25922,				
							reqItems = {
								[1] = {item = 7872, count = 1}, -- mythical blacksteel sword							
								[2] = {item = 9971, count = 250}, -- gold ingot
								[3] = {item = 5880, count = 250}, -- iron ore
								[4] = {item = 18421, count = 100}, -- green crystal fragment
								[5] = {item = 18420, count = 100}, -- red crystal fragment
								[6] = {item = 18419, count = 100}, -- b crystal fragment
								[7] = {item = 18427, count = 100}, -- pulverized ore		
								[8] = {item = 18429, count = 150}, -- vein of ore																		
							},
						},			
						[8] = {item = "Slayer of remedy",
							itemID = 25926,				
							reqItems = {
								[1] = {item = 25922, count = 1}, -- blade of remedy
								[2] = {item = 9971, count = 1500}, -- gold ingot			
								[3] = {item = 18421, count = 300}, -- g crystal fragment
								[4] = {item = 18420, count = 300}, -- r crystal fragment
								[5] = {item = 18413, count = 300}, -- blue crystal shard
								[6] = {item = 18414, count = 300}, -- violet crystal shard																	
								[7] = {item = 5880, count = 1000}, -- iron ore																	
							},
						},		
						[9] = {item = "Chopper of remedy",
							itemID = 25934,				
							reqItems = {
								[1] = {item = 25922, count = 1}, -- blade of remedy
								[2] = {item = 9971, count = 1500}, -- gold ingot			
								[3] = {item = 18421, count = 300}, -- g crystal fragment
								[4] = {item = 18420, count = 300}, -- r crystal fragment
								[5] = {item = 18413, count = 300}, -- blue crystal shard
								[6] = {item = 18414, count = 300}, -- violet crystal shard																	
								[7] = {item = 5880, count = 1000}, -- iron ore																	
							},
						},			
						[10] = {item = "Hammer of remedy",
							itemID = 25942,				
							reqItems = {
								[1] = {item = 25922, count = 1}, -- blade of remedy
								[2] = {item = 9971, count = 1500}, -- gold ingot			
								[3] = {item = 18421, count = 300}, -- g crystal fragment
								[4] = {item = 18420, count = 300}, -- r crystal fragment
								[5] = {item = 18413, count = 300}, -- blue crystal shard
								[6] = {item = 18414, count = 300}, -- violet crystal shard																	
								[7] = {item = 5880, count = 1000}, -- iron ore																	
							},
						},																																			
					
						[11] = {item = "Fiery war axe",
								itemID = 7753,
								reqItems = {
									[1] = {item = 25930, count = 1}, -- AoR
									[2] = {item = 9971, count = 5}, -- gold ingot			
									[3] = {item = 18427, count = 50}, -- Pulverized ore
									[4] = {item = 5880, count = 200}, -- iron ore									
									[5] = {item = 18413, count = 100}, -- blue crystal shard
									[6] = {item = 18414, count = 100}, -- violet crystal shard
									[7] = {item = 18420, count = 85}, -- r crystal fragment	
								},
							},	

						[12] = {item = "Fiery headchopper",
							itemID = 7752,
							reqItems = {
								[1] = {item = 7753, count = 1}, -- fiery war axe
								[2] = {item = 9971, count = 10}, -- gold ingot			
								[3] = {item = 18427, count = 25}, -- Pulverized ore
								[4] = {item = 5880, count = 100}, -- iron ore									
								[5] = {item = 18413, count = 50}, -- blue crystal shard
								[6] = {item = 18414, count = 50}, -- violet crystal shard
								[7] = {item = 18420, count = 50}, -- r crystal fragment	
							},
						},		

						[13] = {item = "Fiery war hammer",
								itemID = 7758,				
								reqItems = {
								[1] = {item = 2421, count = 1}, -- thunder hammer
								[2] = {item = 9971, count = 5}, -- gold ingot			
								[3] = {item = 18427, count = 25}, -- Pulverized ore
								[4] = {item = 5880, count = 100}, -- iron ore									
								[5] = {item = 18413, count = 100}, -- blue crystal shard
								[6] = {item = 18414, count = 100}, -- violet crystal shard
								[7] = {item = 18420, count = 85}, -- r crystal fragment	
								},
							},						

						[14] = {item = "Fiery orcish maul",
							itemID = 7757,
							reqItems = {
								[1] = {item = 7758, count = 1}, -- fiery war hammer
								[2] = {item = 9971, count = 10}, -- gold ingot			
								[3] = {item = 18427, count = 25}, -- Pulverized ore
								[4] = {item = 5880, count = 100}, -- iron ore									
								[5] = {item = 18413, count = 50}, -- blue crystal shard
								[6] = {item = 18414, count = 50}, -- violet crystal shard
								[7] = {item = 18420, count = 50}, -- r crystal fragment	
							},
						},																									

						[15] = {item = "Mythical ornate legs",
							itemID = 15412,
							reqItems = {
								[1] = {item = 15490, count = 1}, -- mythical legs
								[2] = {item = 9971, count = 8}, -- gold ingot			
								[3] = {item = 5880, count = 100}, -- iron ore
								[4] = {item = 18417, count = 75}, -- br crystal splinter
								[5] = {item = 18416, count = 75}, -- green crystal splinter
								[6] = {item = 18413, count = 75}, -- blue crystal shard
								[7] = {item = 18414, count = 75}, -- violet crystal shard
								[8] = {item = 18421, count = 75}, -- green crystal fragment
								[9] = {item = 18420, count = 75}, -- red crystal fragment
								[10] = {item = 18419, count = 75}, -- b crystal fragment	
							},
						},		
						[16] = {item = "Mythical platemail",
							itemID = 25176,
							reqItems = {
								[1] = {item = 23537, count = 1}, -- moohtah plate
								[2] = {item = 9971, count = 10}, -- gold ingot		
								[3] = {item = 5880, count = 100}, -- iron ore
								[4] = {item = 18417, count = 75}, -- br crystal splinter
								[5] = {item = 18416, count = 75}, -- green crystal splinter
								[6] = {item = 18413, count = 75}, -- blue crystal shard
								[7] = {item = 18414, count = 75}, -- violet crystal shard
								[8] = {item = 18421, count = 75}, -- green crystal fragment
								[9] = {item = 18420, count = 75}, -- red crystal fragment
								[10] = {item = 18419, count = 75}, -- b crystal fragment	
							},
						},			
						[17] = {item = "Mythical ornate shield",
							itemID = 15413,
							reqItems = {
								[1] = {item = 25382, count = 1}, -- mythical rift shield
								[2] = {item = 9971, count = 30}, -- gold ingot		
								[3] = {item = 5880, count = 400}, -- iron ore
								[4] = {item = 18417, count = 150}, -- br crystal splinter
								[5] = {item = 18416, count = 150}, -- green crystal splinter
								[6] = {item = 18413, count = 150}, -- blue crystal shard
								[7] = {item = 18414, count = 150}, -- violet crystal shard
								[8] = {item = 18421, count = 150}, -- green crystal fragment
								[9] = {item = 18420, count = 150}, -- red crystal fragment
								[10] = {item = 18419, count = 150}, -- b crystal fragment	
							},
						},			
						[18] = {item = "Shield of honour",
							itemID = 2517,
							reqItems = {
								[1] = {item = 15413, count = 1}, -- mythical ornate shield
								[2] = {item = 9971, count = 750}, -- gold ingot
								[3] = {item = 5880, count = 1000}, -- iron ore
								[4] = {item = 18417, count = 150}, -- br crystal splinter
								[5] = {item = 18416, count = 150}, -- green crystal splinter
								[6] = {item = 18413, count = 150}, -- blue crystal shard
								[7] = {item = 18414, count = 150}, -- violet crystal shard
								[8] = {item = 18421, count = 150}, -- green crystal fragment
								[9] = {item = 18420, count = 150}, -- red crystal fragment
								[10] = {item = 18419, count = 150}, -- b crystal fragment	
								[11] = {item = 12505, count = 20}, -- old iron									
							},
						},																										
					},
				},
			},
		}
	
	function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
		player:sendMainCraftWindow(config)
		return true
	end
