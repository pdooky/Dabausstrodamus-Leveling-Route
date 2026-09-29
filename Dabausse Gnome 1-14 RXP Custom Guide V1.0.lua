local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
<< Mage/Priest/Paladin/Shaman/Hunter
#group Leon-1-14_DwarfGnome
#subgroup Dwarf/Gnome
#name 1-5 Coldridge Valley
#next 5-7 Dun Morogh
#defaultfor Dwarf/Gnome

step
    .goto 1426,29.900,71.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Accept Dwarven Outfitters
    .target Sten Stoutarm
step
    #label WolfMeat
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Kill |cRXP_ENEMY_Ragged Young Wolves|r. Loot them for their |cRXP_LOOT_Tough Wolf Meat|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy EITHER 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_OR a|r |T135641:0|t[Skinning Knife]
    >>|cRXP_WARN_Choose whichever option you want for this run. The guide advances after visiting the vendor.|r
    .vendor >> Vendor Trash and buy either 15 Refreshing Spring Water or a Skinning Knife
    .target Adlin Pridedrift
step
    .goto 1426,29.900,71.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179 >> Turn in Dwarven Outfitters
    .accept 3107 >> Accept Consecrated Rune << Dwarf Paladin
    .accept 3108 >> Accept Etched Rune << Dwarf Hunter
    .accept 3110 >> Accept Hallowed Rune << Dwarf Priest
    .accept 3114 >> Accept Glyphic Memorandum << Gnome Mage
    .accept 98574 >> Accept Hallowed Memorandum << Gnome Priest
    .accept 98581 >> Accept Archaic Rune << Dwarf Shaman
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .target Sten Stoutarm
step
    .goto 1426,29.600,71.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .accept 170 >> Accept A New Threat
    .target Balir Frosthammer
step
    #loop
    .goto 1426,30.800,73.500,0
    .goto 1426,31.000,75.000,0
    .goto 1426,29.300,75.000,0
    .goto 1426,30.800,73.500,45,0
    .goto 1426,31.000,75.000,45,0
    .goto 1426,29.300,75.000,45,0
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r
    >>|cRXP_WARN_Only finish the Rockjaw Trogg objective for now. Leave the Burly Rockjaw Troggs for later while The Boar Hunter is active.|r
    .complete 170,1 --Rockjaw Trogg slain (x6)
    .mob Rockjaw Trogg

step
#season 0,1
    #label Talin
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
    .target Talin Keeneye
step
#season 0,1
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,24.358,72.591,0
    .goto 1426,24.878,71.191,0
    .goto 1426,25.600,72.000,0
    .goto 1426,26.117,72.733,0
    .goto 1426,23.595,72.462,45,0
    .goto 1426,24.358,72.591,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,25.600,72.000,45,0
    .goto 1426,26.117,72.733,45,0
    .goto 1426,25.200,70.500,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,22.276,72.549,45,0
    >>Kill |cRXP_ENEMY_Burly Rockjaw Troggs|r and |cRXP_ENEMY_Small Crag Boars|r around Talin's side of the valley
    >>|cRXP_WARN_Complete both objectives before returning to Talin. Do NOT turn in A New Threat yet.|r
    .complete 170,2 --Burly Rockjaw Trogg slain (x6)
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Burly Rockjaw Trogg
    .mob Small Crag Boar
step
#season 0,1
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Turn in The Boar Hunter
    .target Talin Keeneye

step << Paladin/Warlock/Shaman
    #loop
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >> Grind to 1130+/1400xp
step
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
    .target Grelin Whitebeard
step << Hunter
    #completewith next
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Grind to level 4
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_This will start a 5 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step << Paladin/Warlock/Hunter/Shaman
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_You have 5 minutes to return to Anvilmar before|r |T132791:0|t[Durnan's Scalding Mornbrew] |cRXP_WARN_expires|r
    .goto 1426,28.939,68.387,12 >> Enter Anvilmar
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r inside
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
    .isQuestAvailable 317
step << Hunter
    #season 0,1
    .goto 1426/0,365.21,-6091.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >> Turn in Etched Rune << Dwarf
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Thorgas Grimson
step << Warlock
    #season 0,1
    .goto 1426/0,391.07,-6048.84--c:Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm|r upstairs
    .turnin 3115 >> Turn in Tainted Memorandum
    .train 172 >>Train |T136118:0|t[Corruption]
    .target Alamar Grimm
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .turnin 98581 >> Turn in Archaic Rune << Dwarf
    .accept 94373 >> Accept Call of Earth
    .train 8042 >> Train |T136026:0|t[Earth Shock]
    .target Teo Hammerstorm::257446
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Accept Grund and Gozwin
step << Paladin
    #season 0,1
    .goto 1426/0,382.06,-6120.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bromos Grummner|r inside
    .turnin 3107 >> Turn in Consecrated Rune << Dwarf
    .train 19740 >> Train |T135906:0|t[Blessing of Might]
    .train 20271 >> Train |T135959:0|t[Judgement]
    .target Bromos Grummner
step << Warlock
#season 0,1
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step << Paladin/Warlock/Hunter/Shaman
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >> Travel up to the hills in northern Coldridge Valley
step << Paladin/Warlock/Hunter/Shaman
    >>Kill the |cRXP_ENEMY_Snow Leopard Prowler|r
    >>Loot |cRXP_PICK_Gozwin's Mechanic's Log|r on the ground
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << Paladin/Warlock/Hunter/Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
    .target Nori Pridedrift
step
    #loop
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r << !Shaman
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r. Loot them for their |cRXP_LOOT_Iceclaw Bear Pendants|r << Shaman
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .complete 94373,1 << Shaman--Iceclaw Bear Pendant (2)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,567.09,-6362.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 182 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_This will start a 5 minute timer for the quest. Do NOT go AFK or log out for the next 5 minutes|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    +|cRXP_WARN_You have 5 minutes to get |cRXP_LOOT_Grelin Whitebeard's Journal|r and return to Anvilmar before|r |T132791:0|t[Durnan's Scalding Mornbrew] |cRXP_WARN_expires|r
    >>|cRXP_WARN_If you fail the quest don't worry as you can get it again later|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Enter the Frostmane Cave
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Travel towards |cRXP_ENEMY_Grik'nir the Cold|r inside
step
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r inside. Loot him for |cRXP_LOOT_Grelin Whitebeard's Journal|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #optional
    #completewith Stolen
    .goto 1426,29.252,79.043,15,0
    .goto 1426,28.298,79.836,15,0
    .goto 1426,27.098,80.707,20 >> Exit the Frostmane Cave
    .subzoneskip 132
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .target Nori Pridedrift
step
    #hardcore << !Paladin !Warlock !Hunter !Shaman
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    >>|cRXP_WARN_If you failed the quest, skip this step|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter !Shaman
    #optional
    #softcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
    .isQuestAvailable 317
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #requires Grelin << Rogue
    .abandon 3364 >> Abandon Scalding Mornbrew Delivery. You'll pick it up again
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r and |cRXP_FRIENDLY_Grelin Whitebeard|r
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .goto 1426/0,567.14,-6363.06
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #optional
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
step << !Paladin !Warlock !Hunter !Shaman
    #hardcore
    .goto 1426/0,385.21,-6056.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durnan Furcutter|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .target Durnan Furcutter
    .isQuestAvailable 317

step << Mage
    #season 0,1
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .turnin 3114 >> Turn in Glyphic Memorandum << Gnome
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Marryk Nurribit
step << Rogue
    #season 0,1
    .goto 1426/0,404.91,-6093.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Turn in Encrypted Memorandum << Gnome
    .turnin 3109 >> Turn in Encrypted Rune << Dwarf
    .train 1784 >>Train |T132320:0|t[Stealth]
    .target Solm Hargrin
step << Priest
    #season 0,1
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .turnin 3110 >> Turn in Hallowed Rune << Dwarf
    .turnin 98574 >> Turn in Hallowed Memorandum << Gnome
    .trainer >> Train your class spells
    .target Branstock Khalder
step << Warrior
    #season 0,1
    .goto 1426/0,382.11,-6084.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Turn in Simple Rune << Dwarf
    .turnin 3112 >> Turn in Simple Memorandum << Gnome
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Thran Khorman

step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .accept 97277 >>Accept Grund and Gozwin
step << !Paladin !Warlock !Hunter !Shaman
    #optional
    #completewith Stolen
    .goto 1426,28.831,68.698,12 >> Exit Anvilmar
    .subzoneskip 77,1
step << !Paladin !Warlock !Hunter !Shaman
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20 >> Travel up to the hills in northern Coldridge Valley
step << !Paladin !Warlock !Hunter !Shaman
    >>Kill the |cRXP_ENEMY_Snow Leopard Prowler|r
    >>Loot |cRXP_PICK_Gozwin's Mechanic's Log|r on the ground
    .complete 97277,2 --|1/1 Snow Leopard Prowler slain
    .mob +Snow Leopard Prowler::269075
    .goto 1426/0,447.800,-5942.000
    .complete 97277,1 --|1/1 Gozwin's Mechanic's Log
    .goto 1426/0,458.700,-5940.600
step << !Paladin !Warlock !Hunter !Shaman
    #softcore
    #label Stolen
    .goto 1426/0,567.14,-6363.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter !Shaman
    .goto 1426/0,571.82,-6371.20--c:Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 3365 >> Turn in Bring Back the Mug
    .target Nori Pridedrift
step << Dwarf Priest/Gnome Priest
    #optional
    .xp 4+1690 >> Grind to 1690+/2100xp
step
    .goto 1426/0,390.000,-6093.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grund Drokda::2756|r
    .target Grund Drokda::2756
    .turnin 97277 >>Turn in Grund and Gozwin
step << Shaman
    .goto 1426/0,384.000,-6050.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 94373 >>Turn in Call of Earth
    .accept 94374 >>Accept Call of Earth
step << Shaman
    #completewith next
    .goto 1426/0,497.300,-6118.500,20,0
    .goto 1426/0,467.700,-6012.800,20,0
    .goto 1426/0,468.000,-5972.100,20 >> Travel up to the hills in northern Coldridge Valley once again
step << Shaman
    .isOnQuest 94374
    .goto 1426/0,582.100,-5907.800
    .cast 8202 >> |cRXP_WARN_Use the|r |T134743:0|t[Earth Sapta] |cRXP_WARN_at the |cRXP_PICK_Spirit Stone|r to summon the|r |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .use 6635
step << Shaman
    .goto 1426/0,576.500,-5908.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth::5891|r
    .target Minor Manifestation of Earth::5891
    .turnin 94374 >>Turn in Call of Earth
    .accept 94375 >>Accept Call of Earth
step << Shaman
    .isOnQuest 94375
    .hs >> Hearth to Coldridge Valley
    .subzoneskip 77,1
    .cooldown item,6948,>2,1
step << Shaman
    #optional
    #completewith next
    .goto 1426/0,383.800,-6133.700,10 >> Return to |cRXP_FRIENDLY_Teo Hammerstorm|r in Anvilmar
    .subzoneskip 77,1
step << Shaman
    .goto 1426/0,383.900,-6050.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teo Hammerstorm::257446|r
    .target Teo Hammerstorm::257446
    .turnin 94375 >>Turn in Call of Earth
step << Dwarf Priest/Gnome Priest
    .goto 1426/0,393.53,-6056.72--c:Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Branstock Khalder|r
    .accept 5626 >> Accept In Favor of the Light
    .target Branstock Khalder
step
    .goto 1426,29.600,71.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170 >> Turn in A New Threat
    .target Balir Frosthammer
step
    .goto 1426/0,152.900,-6235.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Thalos::1965|r
    .target Mountaineer Thalos::1965
    .turnin 282 >>Turn in Senir's Observations
    .accept 420 >>Accept Senir's Observations
    .accept 96628 >>Accept The Adventurer
step
    .goto 1426/0,135.100,-6248.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket::6782|r
    .target Hands Springsprocket::6782
    .accept 2160 >>Accept Supplies to Tannok
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >> Travel through Coldridge Pass
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
<< Mage/Priest/Paladin/Shaman/Hunter
#group Leon-1-14_DwarfGnome
#subgroup Dwarf/Gnome
#name 5-7 Dun Morogh
#next 7-10 Elwynn
#defaultfor Dwarf/Gnome

step
    .goto 1426/0,315.42,-5372.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r in Brewnall Village
    .accept 310 >> Accept Bitter Rivals
    .target Marleth Barleybrew
step
    .goto 1426,31.600,44.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretta Ganter|r near Iceflow Lake
    .accept 98326 >> Accept Frosthowl
    .target Gretta Ganter
step
    #softcore
    .goto 1426,33.200,42.900
    >>|cRXP_WARN_Die to a |cRXP_ENEMY_Winter Wolf|r around 33.2,42.9, then release to respawn at the Kharanos graveyard|r
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r in Kharanos
    .mob Winter Wolf
    .target Spirit Healer
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .turnin 96628 >> Turn in The Adventurer
    .accept 96608 >> Accept The Great Outdoors
    .target Eric Brighthammer::265813
step
    .goto 1426/0,-498.400,-5648.400
    >>|cRXP_WARN_Type "/sit" in chat and remain seated at the campfire for one minute|r
    .complete 96608,1 -- /sit emote in chat 1/1
    .complete 96608,2 -- Gain boosted rest buff 1/1
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tWhile waiting at the campfire, talk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .turnin 420 >> Turn in Senir's Observations
    .accept 98322 >> Accept Secure the Mountain
    .target Senir Whitebeard::1252
step
    .goto 1426/0,-498.400,-5648.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric Brighthammer::265813|r
    .turnin 96608 >> Turn in The Great Outdoors
    .accept 96056 >> Accept Camping 101: Skinning
    .accept 96629 >> Accept Camping 101: Cooking
    .target Eric Brighthammer::265813
step
    .goto 1426/0,-464.45,-5573.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone|r
    .accept 400 >> Accept Tools for Steelgrill
    .target Tharek Blackstone
step
    .goto 1426/0,-431.000,-5582.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire::1241|r
    .accept 98321 >> Accept Flintfire's Shipment
    .target Tognus Flintfire::1241
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Enter the Thunderbrew Distillery
step
    .goto 1426/0,-523.35,-5590.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tannok Frosthammer|r
    .turnin 2160 >> Turn in Supplies to Tannok
    .target Tannok Frosthammer
step
    .goto 1426/0,-529.600,-5590.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maxan Anvol::1226|r
    .accept 99158 >> Accept Dawn in the Mountains
    .target Maxan Anvol::1226
step
    .goto 1426/0,-521.97,-5597.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Empty and unequip your|r |T133634:0|t[Canvas Latchbag]|cRXP_WARN_, then vendor it for 8 Silver 75 Copper.|r
    >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_for about 5 Silver.|r
    .vendor >> Sell the Canvas Latchbag and buy a Small Brown Pouch
    .target Kreg Bilmn
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .target Innkeeper Belm
    .bindlocation 2102
step
    .goto 1426/0,-531.23,-5601.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r inside
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .collect 2686,1,308 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
step
    .goto 1426/0,-545.800,-5594.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor::1699|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .turnin 96629 >> Turn in Camping 101: Cooking
    .target Gremlock Pilsnor::1699
step
    #label Distracting
    #completewith next
    .goto 1426/0,-551.03,-5598.40,6,0
    .goto 1426/0,-544.38,-5605.92,3 >> Go downstairs to |cRXP_FRIENDLY_Jarven Thunderbrew|r
step
    .goto 1426/0,-544.38,-5605.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarven Thunderbrew|r downstairs
    .turnin 308 >> Turn in Distracting Jarven
    .target Jarven Thunderbrew
step
    .goto 1426/0,-547.93,-5607.27
    >>Click the |cRXP_PICK_Unguarded Thunder Ale Barrel|r next to Jarven
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto 1426/0,-641.80,-5473.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear::1377|r
    .accept 313 >> Accept The Grizzled Den
    .target Pilot Stonegear::1377
step
    .goto 1426/0,-682.23,-5488.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill|r
    .turnin 400 >> Turn in Tools for Steelgrill
    .target Beldin Steelgrill
step
    .goto 1426/0,-664.55,-5499.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loslor Rudge|r
    .accept 5541 >> Accept Ammo for Rumbleshot
    .target Loslor Rudge
step
    .goto 1426/0,-371.400,-5746.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen::271546|r
    .turnin 98322 >> Turn in Secure the Mountain
    .accept 98319 >> Accept Secure the Mountain
    .target Mountaineer Gretchen::271546
step
    .goto 1426/0,-371.400,-5746.900
    >>Open the |cRXP_PICK_Ammo Crate|r next to Mountaineer Gretchen. Loot it for |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    .goto 1426/0,-275.000,-5623.200,20 >> Enter the Grizzled Den cave
step
    .goto 1426/0,-221.800,-5516.300,20,0
    .goto 1426/0,-312.500,-5506.300
    >>Travel to the corpse of |cRXP_FRIENDLY_Mountaineer Cornelius|r inside the Grizzled Den cave
    >>|cRXP_WARN_Be careful of the higher level |cRXP_ENEMY_Wendigos|r deeper in the cave|r
    .complete 98319,1 --Mountaineer Cornelius found
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    .goto 1426/0,-274.900,-5423.500,40,0
    .goto 1426/0,-312.500,-5506.300,40,0
    .goto 1426/0,-275.000,-5623.200,40,0
    >>Kill all types of |cRXP_ENEMY_Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    >>Loot |cRXP_PICK_Flintfire's Shipments|r on the ground throughout the Grizzled Den
    .complete 313,1 --Collect Wendigo Mane (x8)
    .complete 98321,1 --Collect Flintfire's Shipment (x8)
    .mob +Wendigo
    .mob +Young Wendigo
step
    .goto 1426,42.000,54.000
    >>Travel deep into the Grizzled Den and kill |cRXP_ENEMY_Frosthowl|r
    >>Loot him for the |cRXP_LOOT_Sack of Fish|r
    .complete 98326,1 --Collect Sack of Fish (x1)
    .mob Frosthowl
step
    .goto 1426/0,-370.000,-5750.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gretchen::271546|r
    .turnin 98319 >> Turn in Secure the Mountain
    .accept 98323 >> Accept Secure the Mountain
    .target Mountaineer Gretchen::271546
step
    .goto 1426/0,-201.51,-6015.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hegnar Rumbleshot|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .target Hegnar Rumbleshot
step
    .goto 1426/0,-501.400,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .turnin 98323 >> Turn in Secure the Mountain
    .target Senir Whitebeard::1252
step
    .goto 1426/0,-429.700,-5582.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tognus Flintfire::1241|r
    .turnin 98321 >> Turn in Flintfire's Shipment
    .target Tognus Flintfire::1241
step
    .goto 1426/0,-641.900,-5471.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Stonegear::1377|r
    .turnin 313 >> Turn in The Grizzled Den
    .target Pilot Stonegear::1377
step
    .goto 1426/0,-1041.000,-5350.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Father Gavin::1253|r
    .turnin 99158 >> Turn in Dawn in the Mountains
    .target Father Gavin::1253
step
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >> Go up the dirt path toward Amberstill Ranch
step
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for his |cRXP_LOOT_Fang of Vagash|r
    >>|cRXP_WARN_Kite him toward the guard south of the ranch if needed. Make sure you do 51%+ of the damage.|r
    .complete 314,1 --Collect Fang of Vagash (x1)
    .mob Vagash
step
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rudra Amberstill|r
    .turnin 314 >> Turn in Protecting the Herd
    .target Rudra Amberstill
step
    .xp 7 >> Grind to level 7 if needed
step
    >>|cRXP_WARN_Die, release, and resurrect at the Kharanos Spirit Healer|r
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r in Kharanos
    .target Spirit Healer
step
    .goto 1426/0,-501.500,-5643.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .accept 287 >> Accept Frostmane Hold
    .target Senir Whitebeard::1252
step
    .goto 1426,36.368,52.354,20,0
    .goto 1426,35.942,52.030,15,0
    .goto 1426/0,99.17,-5572.99,20 >> Travel toward |cRXP_FRIENDLY_Tundra MacGrann|r
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    .goto 1426/0,-94.88,-5647.69
    >>Open |cRXP_PICK_MacGrann's Meat Locker|r inside the cave. Loot it for |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Wait for |cRXP_ENEMY_Old Icebeard|r to patrol out of the cave if needed, then run in and loot the locker.|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto 1426/0,99.17,-5572.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Turn in Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    #completewith FrostmaneExplore
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r inside Frostmane Hold
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Run up the side of the cave entrance and jump down into Frostmane Hold
step
    #label FrostmaneExplore
    .goto 1426,21.000,53.000
    >>Travel to approximately |cRXP_WARN_21.0, 53.0|r inside Frostmane Hold to trigger the exploration objective
    .complete 287,2 --Fully explore Frostmane Hold
step
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .goto 1426,22.067,50.215,30,0
    .goto 1426,23.136,50.886,30,0
    .goto 1426,23.373,51.385,30,0
    .goto 1426,23.568,50.924,30,0
    .goto 1426,24.301,50.898,30,0
    >>Finish killing |cRXP_ENEMY_Frostmane Headhunters|r inside the cave
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    .goto 1426/0,315.42,-5372.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marleth Barleybrew|r in Brewnall Village
    .turnin 311 >> Turn in Return to Marleth
    .target Marleth Barleybrew
step
    .goto 1426,31.600,44.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gretta Ganter|r near Iceflow Lake
    .turnin 98326 >> Turn in Frosthowl
    .target Gretta Ganter
step
    #softcore
    #label WetlandsDS1
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    >>|cRXP_WARN_Do the Dun Morogh -> Wetlands deathskip. Follow the arrow closely and do NOT jump off yet.|r
    .zone Wetlands >> Climb the mountain and continue until your zone changes to Wetlands
step
    #softcore
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415,44.733,51.882,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Jump off the mountain toward the north or north-west and die in Wetlands|r
    .deathskip >> Die and resurrect at the Baradin Bay |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
step
    #softcore
    #requires WetlandsDS2
    .goto 1437,11.95,50.24,60 >> Swim to shore toward Menethil Harbor
step
    #softcore
    .goto 1437,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Get the Wetlands flight path
    .target Shellei Brondir
step
    +|cRXP_WARN_IF THE BOAT TO SOUTHSHORE IS THERE: take it now, get the Southshore flight path, then fly back to Ironforge from Southshore.|r
    +|cRXP_WARN_IF THE BOAT IS NOT THERE: immediately manually skip this step and continue. Do NOT wait for the boat.|r
step
    #softcore
    .goto 1437,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Ironforge >> Fly to Ironforge
    .target Shellei Brondir
    .zoneskip Ironforge
step
    .goto 1455/0,-1330.28,-4840.430
    >>|cRXP_WARN_RUN NORTH to the Deeprun Tram immediately.|r
    >>|cRXP_WARN_DO NOT stop to turn in Camping 101: Skinning. Only train a profession if the trainer is directly on your route. Do not detour or you may miss the tram and fall behind.|r
    .subzone 2257 >> Enter the Deeprun Tram
step
    >>|cRXP_WARN_Take the Deeprun Tram to the Stormwind side. Do not miss the tram.|r
    .zone Stormwind City >> Take the Deeprun Tram to Stormwind City
step
    .zone Stormwind City >> Enter Stormwind
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
<< Mage/Priest/Paladin/Shaman/Hunter
#group Leon-1-14_DwarfGnome
#subgroup Dwarf/Gnome
#name 7-10 Elwynn
#next 10-12 Dun Morogh
#defaultfor Dwarf/Gnome

step
    .goto Stormwind City,71.7,72.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Get the Stormwind City flight path
    .target Dungar Longdrink
step
    .goto 1429/0,74.02,-9465.52
    .zone Elwynn Forest >> Exit Stormwind and run to Goldshire
step
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r
    .accept 60 >> Accept Kobold Candles
    .target William Pestle
step
    .goto 1429,43.770,65.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r inside the Lion's Pride Inn
    .home >> Set your Hearthstone to the Lion's Pride Inn
    .vendor >> Stock up on food and water as needed
    .target Innkeeper Farley
step << Mage
    .goto 1429/0,34.28,-9471.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r upstairs in the Inn
    .trainer >> Train your class spells
    .target Zaldimar Wefhellt
step << Priest
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .trainer >> Train your class spells
    .target Priestess Josetta
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Josephine Carson|r
    .trainer >> Train your class spells
    .target Josephine Carson
step
    .goto 1429/0,73.95,-9465.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .accept 62 >> Accept The Fargodeep Mine
    .target Marshal Dughan
step
    .goto 1429/0,72.81,-9496.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .accept 40 >> Accept A Fishy Peril
    .accept 47 >> Accept Gold Dust Exchange
    .target Remy "Two Times"
step
    .goto 1429/0,73.92,-9465.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .target Marshal Dughan
step
    .goto 1429,43.000,89.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r at the Maclure Vineyards
    .accept 106 >> Accept Young Lovers
    .target Maybell Maclure
step
    #completewith FargodeepExplore
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r in and around Fargodeep Mine. Loot them for |cRXP_LOOT_Kobold Candles|r and |cRXP_LOOT_Gold Dust|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto 1429/0,193.00,-9832.40,50,0
    .goto 1429/0,129.73,-9844.49
    >>|cRXP_WARN_Enter Fargodeep Mine and explore deep enough to complete The Fargodeep Mine.|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #label FargodeepExplore
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    .goto 1429/0,129.73,-9844.49,25,0
    .goto 1429/0,226.57,-9878.28,25,0
    >>Finish killing |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r until both collection quests are complete
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto 1429,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tommy Joe Stonefield|r by the river
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
    .target Tommy Joe Stonefield
step
    .goto 1429,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Auntie" Bernice Stonefield|r
    .accept 85 >> Accept Lost Necklace
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.660,84.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .accept 88 >> Accept Princess Must Die!
    .target Ma Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gramma Stonefield|r inside the Stonefield farmhouse
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
    .target Gramma Stonefield
step
    .goto 1429,24.548,74.672
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 176 >> Accept Wanted: "Hogger"
step
    #loop
    .goto 1429,27.0,86.7,0
    .goto 1429,26.1,89.9,0
    .goto 1429,25.2,92.7,0
    .goto 1429,27.0,93.9,0
    .goto 1429,27.0,86.7,70,0
    .goto 1429,26.1,89.9,70,0
    .goto 1429,25.2,92.7,70,0
    .goto 1429,27.0,93.9,70,0
    >>Kill |cRXP_ENEMY_Hogger|r. Loot him for the |cRXP_LOOT_Huge Gnoll Claw|r
    >>|cRXP_WARN_Hogger can spawn at several locations in this area. Group up if needed.|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #softcore
    >>|cRXP_WARN_Die and release after killing Hogger to spirit-resurrect at Goldshire.|r
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r in Goldshire
    .target Spirit Healer
step
    .goto 1429/0,73.92,-9465.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 176 >> Turn in Wanted: "Hogger"
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
    .target Marshal Dughan
step
    .goto 1429/0,72.81,-9496.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy "Two Times"|r
    .turnin 47 >> Turn in Gold Dust Exchange
    .target Remy "Two Times"
step
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r inside the Lion's Pride Inn
    .turnin 107 >> Turn in Note to William
    .turnin 60 >> Turn in Kobold Candles
    .accept 112 >> Accept Collecting Kelp
    .target William Pestle
step
    .goto 1429,43.770,65.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r inside the Lion's Pride Inn
    >>|cRXP_BUY_Sell junk and stock up on food and water as needed.|r
    .vendor >> Sell junk and buy food/water as needed
    .target Innkeeper Farley
step << Mage
    .goto 1429/0,34.28,-9471.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r upstairs in the Inn
    .trainer >> Train your level 8 class spells if you have not already
    .target Zaldimar Wefhellt
step << Priest
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
    .trainer >> Train your level 8 class spells if you have not already
    .target Priestess Josetta
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your level 8 class spells if you have not already
    .target Brother Wilhelm
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Josephine Carson|r
    .trainer >> Train your level 8 class spells if you have not already
    .target Josephine Carson
step
    .abandon 96056 >> Abandon the Dun Morogh version of Camping 101: Skinning
step
    .goto 1429,44.800,63.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .accept 97924 >> Accept Camping 101: Skinning
    .target Sam Sarsaparilla
step
    .goto 1429,44.800,63.200
    >>|cRXP_WARN_Type "/sit" next to Sam Sarsaparilla's camp and stay seated for one full minute to receive the next rest buff.|r
    .timer 60,Stay seated by Sam for 1 minute
    +|cRXP_WARN_Remain seated until the one-minute rest buff triggers, then manually skip this step.|r
step
    .goto 1429,46.200,62.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helene Peltskinner|r
    .turnin 97924 >> Turn in Camping 101: Skinning
    .target Helene Peltskinner
step
    .goto 1429,47.600,62.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lee Brown|r near Crystal Lake
    .accept 99143 >> Accept Bottles and Baubles
    .target Lee Brown
step
    .goto 1429,54.400,66.900
    >>Loot |cRXP_LOOT_Shiny Junk|r around the Murloc camp while killing nearby Murlocs for |cRXP_LOOT_Crystal Kelp Fronds|r
    .complete 99143,1 --Collect Shiny Junk
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob Murloc
    .mob Murloc Streamrunner
step
    .goto 1429,61.600,54.100,25,0
    >>Enter |cRXP_WARN_Jasperlode Mine|r
    .complete 76,1 --Explore Zone
step
    .goto 1429,61.000,50.000
    >>Travel deeper into Jasperlode Mine until the scouting objective completes
    .complete 76,2 --Scout through the Jasperlode Mine
step
    .goto 1429/0,-869.87,-9768.10
    >>Kill |cRXP_ENEMY_Princess|r and loot her |cRXP_LOOT_Brass Collar|r
    >>|cRXP_WARN_Princess pulls with her Porcine Entourage, so be ready for multiple mobs.|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 35 >> Turn in Further Concerns
    .accept 52 >> Accept Protect the Frontier
    .accept 37 >> Accept Find the Lost Guards
    .target Guard Thomas
step
    #completewith BundleTurnin
    >>Kill |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r whenever you see them while doing the next objectives
    >>|cRXP_WARN_Prioritize Young Forest Bears when convenient, but do NOT stop to finish these kills yet.|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto 1429/0,-986.35,-9336.06
    >>Click |cRXP_PICK_A half-eaten body|r on the ground
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .accept 5545 >> Accept A Bundle of Trouble
    .target Supervisor Raelen
step
    #loop
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1230.14,-9150.34,40,0
    .goto 1429/0,-1271.10,-9147.10,40,0
    .goto 1429/0,-1232.92,-9251.950,40,0
    .goto 1429/0,-1246.46,-9329.03,40,0
    .goto 1429/0,-1249.58,-9362.13,40,0
    .goto 1429/0,-1285.33,-9365.14,40,0
    .goto 1429/0,-1296.09,-9389.44,40,0
    .goto 1429/0,-1338.09,-9331.11,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    >>Loot |cRXP_LOOT_Bundles of Wood|r beneath the trees while continuing to kill Prowlers and Young Forest Bears
    >>|cRXP_WARN_Once you have all 8 Bundles of Wood, continue the route. You do NOT need to finish the Prowler/Bear kills yet.|r
    .complete 5545,1 --Bundle of Wood (8)
step
    .goto 1429/0,-1234.31,-9224.180
    >>Click |cRXP_PICK_Rolf's corpse|r on the ground
    >>|cRXP_WARN_Nearby Murlocs may aggro when you click the corpse.|r
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
    #loop
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1246.46,-9329.03,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    >>Finish looting |cRXP_LOOT_Bundles of Wood|r if you somehow still need any
    .complete 5545,1 --Bundle of Wood (8)
step
    #label BundleTurnin
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Supervisor Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
    .target Supervisor Raelen
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>Run south toward the bridge and talk to |cRXP_FRIENDLY_Ormin Pelford|r
    .accept 91733 >> Accept Downstream
    .target Ormin Pelford
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .target Guard Thomas
step
    #loop
    .goto 1429,75.000,72.000,0
    .goto 1429,79.000,72.000,0
    .goto 1429,80.000,77.000,0
    .goto 1429,76.000,78.000,0
    .goto 1429,75.000,72.000,60,0
    .goto 1429,79.000,72.000,60,0
    .goto 1429,80.000,77.000,60,0
    .goto 1429,76.000,78.000,60,0
    >>Finish killing |cRXP_ENEMY_Prowlers|r and |cRXP_ENEMY_Young Forest Bears|r
    >>|cRXP_WARN_While killing Prowlers and Bears, keep an eye out for |cRXP_ENEMY_Elmpaw|r around 84.9, 82.9. If you find him, kill him, loot |cRXP_LOOT_Elmpaw's Head|r, use it, and accept |cRXP_ACCEPT_Elmpaw's Head|r.|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .unitscan Elmpaw
step
    #optional
    .itemcount 247862,1
    .use 247862 >> Use |cRXP_LOOT_Elmpaw's Head|r
    .accept 91746 >> Accept Elmpaw's Head
step
    .goto 1429,74.400,76.300
    >>Loot the |cRXP_PICK_Waterlogged Saw|r
    .complete 91733,2 --Waterlogged Saw (1)
step
    .goto 1429,76.600,82.500
    >>Loot the |cRXP_PICK_Waterlogged Axe|r
    .complete 91733,1 --Waterlogged Axe (1)
step
    .goto 1429,77.200,86.700
    >>Loot the |cRXP_PICK_Waterlogged Toolbox|r
    .complete 91733,3 --Waterlogged Toolbox (1)
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >> Turn in Downstream
    .target Ormin Pelford
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .target Guard Thomas
step
    .goto 1433,17.400,69.600,60,0
    .zone Redridge Mountains >> Run east into Redridge Mountains
step
    #softcore
    >>|cRXP_WARN_Die in Redridge Mountains and resurrect at the Spirit Healer to skip ahead to Lakeshire.|r
    .deathskip >> Die and resurrect at the Redridge Mountains Spirit Healer
    .target Spirit Healer
step
    .goto 1433,25.5,59.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step
    >>Run south from Redridge Mountains into Duskwood
    .zone Duskwood >> Enter Duskwood
step
    #softcore
    >>|cRXP_WARN_Die in Duskwood and resurrect at the Spirit Healer in Darkshire.|r
    .deathskip >> Die and resurrect at the Darkshire Spirit Healer
    .target Spirit Healer
step
    .goto 1431,77.600,44.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Darkshire Flight Master
    .fp Darkshire >> Get the Darkshire flight path
step
    .hs >> Hearth to Goldshire
    .subzoneskip 87
step
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William Pestle|r inside the Lion's Pride Inn
    .turnin 112 >> Turn in Collecting Kelp
    .accept 114 >> Accept The Escape
    .target William Pestle
step
    .goto 1429/0,73.92,-9465.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .turnin 76 >> Turn in The Jasperlode Mine
    .turnin 39 >> Turn in Deliver Thomas' Report
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .target Marshal Dughan
step
    .goto 1429,41.710,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r at the Goldshire forge
    .accept 1097 >> Accept Elmore's Task
    .target Smith Argus
step
    #optional
    .isOnQuest 91746
    .goto 1429,46.200,62.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helene Peltskinner|r
    .turnin 91746 >> Turn in Elmpaw's Head
    .target Helene Peltskinner
step
    .goto 1429,47.600,62.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lee Brown|r near Crystal Lake
    .turnin 99143 >> Turn in Bottles and Baubles
    .target Lee Brown
step
    .goto 1429,43.800,65.800
    >>|cRXP_BUY_If you have enough money, talk to |cRXP_FRIENDLY_Brog Hamfist|r inside the Lion's Pride Inn and buy one or two additional bags.|r
    .vendor >> Buy additional bags if affordable
    .target Brog Hamfist
step
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Turn in Lost Necklace
    .target Billy Maclure
step
    .goto 1429,43.000,89.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Turn in The Escape
    .target Maybell Maclure
step
    .goto 1429/0,332.43,-9895.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma Stonefield|r
    .turnin 88 >> Turn in Princess Must Die!
    .target Ma Stonefield
step
    +|cRXP_WARN_While running toward Westbrook Garrison, open your Quest Log and abandon Rough Wolf Pelts, Pie for Billy, and Cloth and Leather Armor if they are still in your log.|r
step
    .goto 1429,24.548,74.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Rainer|r at Westbrook Garrison
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer
step
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >> Run west into Westfall
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
    .target Verna Furlbrow
step
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
    >>|cRXP_WARN_DO NOT accept any follow-up quests from Salma. If you accidentally pick them up, abandon them.|r
    .target Salma Saldean
step
    .goto 1436/0,1055.27,-10128.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 9 >> Accept The Killing Fields
    .target Farmer Saldean
step
    .goto 1436,49.300,19.200,40,0
    .goto 1436,49.400,19.300
    >>Run north to the Furlbrow farmhouse
    >>Open the chest inside and loot |cRXP_LOOT_Furlbrow's Pocket Watch|r
    >>|cRXP_WARN_Stay together until everyone in the group has looted the Pocket Watch. Benny Blanco can kill people quickly.|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .target Farmer Furlbrow
step
    #softcore
    >>|cRXP_WARN_Die and resurrect at the Westfall Spirit Healer to skip to Sentinel Hill.|r
    .deathskip >> Die and respawn at the Westfall Spirit Healer
    .target Spirit Healer
step
    .goto 1436,52.900,53.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Innkeeper at Sentinel Hill
    .home >> Set your Hearthstone to the Westfall inn
step << Mage
    .goto 1436,52.900,53.700
    >>|cRXP_WARN_Pick up the book next to the Innkeeper. Keep it for later.|r
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .target Gryan Stoutmantle
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Westfall flight path
    .target Thor
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind City
    .target Thor
step
    .goto Stormwind City,56.2,64.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Pestle|r
    .turnin 61,1 >> Turn in Shipment to Stormwind
    >>|cRXP_WARN_Take the Explosive Rockets reward.|r
    .target Morgan Pestle
step << Mage
    .goto Stormwind City,49.6,85.8
    >>Run to the |cRXP_FRIENDLY_Wizard's Sanctum|r in the Mage Quarter and go to the upper level
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTrain your class spells from a Mage Trainer
    >>|cRXP_WARN_Remember to turn in the research book you looted in Westfall while you are at the Mage Tower.|r
    .trainer >> Train your class spells
step << !Mage
    +|cRXP_WARN_Train your class spells now ONLY if your trainer is nearby. Otherwise, wait and train in Ironforge.|r
step
    +|cRXP_WARN_Remember to trade the Explosive Rockets to Boku.|r
step
    .goto Stormwind City,57.7,47.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
step
    .goto Stormwind City,59.6,34.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Turn in Elmore's Task
    .accept 353 >> Accept Stormpike's Delivery
    .target Grimand Elmore
step
    >>Run to the Deeprun Tram entrance
    .subzone 2257 >> Enter the Deeprun Tram
step
    >>|cRXP_WARN_Take the Deeprun Tram to the Ironforge side.|r
    .zone Ironforge >> Take the Deeprun Tram to Ironforge
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
<< Mage/Priest/Paladin/Shaman/Hunter
#group Leon-1-14_DwarfGnome
#subgroup Dwarf/Gnome
#name 10-11 Dun Morogh
#next 11-13 Loch Modan
#defaultfor Dwarf/Gnome

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r on the middle platform of the Deeprun Tram
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty
step
    >>Use the |T133942:0|t[Rat Catcher's Flute] on |cRXP_FRIENDLY_Deeprun Rats|r in the Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .target Monty
step
    .zone Ironforge >> Enter Ironforge
step
    .goto 1426/0,-501.400,-5643.900
    >>Run through Dun Morogh to |cRXP_FRIENDLY_Senir Whitebeard|r in Kharanos
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senir Whitebeard::1252|r
    .turnin 287 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports
    .target Senir Whitebeard::1252
step
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldin Steelgrill::1376|r
    .accept 96408 >> Accept A Visitor to Dun Morogh
    .target Beldin Steelgrill::1376
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96408 >> Turn in A Visitor to Dun Morogh
    .accept 96392 >> Accept Farsen's Watch
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    .isOnQuest 96392
    .gossipoption 139831 >> Talk to |cRXP_FRIENDLY_Earthseer Farsen|r to view his farsight
    >>|cRXP_WARN_You can cancel the Farsight once the objective completes.|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Press ESCAPE to cancel the Farsight once the objective completes.|r
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96392 >> Turn in Farsen's Watch
    .accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Mehr Stonehallow|r and |cRXP_FRIENDLY_Foreman Stonebrow|r at Gol'Bolar Quarry
    .goto 1426/0,-1579.96,-5714.73
    .accept 433 >> Accept The Public Servant
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1600.30,-5726.590
    .accept 432 >> Accept Those Blasted Troggs!
    .target +Foreman Stonebrow
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r for |cRXP_QUEST_Nip 'Em in the Bud|r
    >>Loot the |cRXP_LOOT_Dark Iron Map|r if it drops, use it, and accept |cRXP_ACCEPT_Underground Map|r
    .complete 96390,1 --Dark Iron Spy slain (10)
    .collect 274268,1,96391,1 --Dark Iron Map (1)
    .use 274268
    .accept 96391 >> Accept Underground Map
    .mob Dark Iron Spy
step
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.073,57.030,45,0
    .goto 1426,69.223,58.242,45,0
    .goto 1426,68.533,58.372,45,0
    .goto 1426,67.687,60.059,45,0
    .goto 1426,68.958,59.357,45,0
    .goto 1426,70.475,59.420,45,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r in or outside the mine
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    .goto 1426,70.750,56.219,20 >> Enter the Gol'Bolar Quarry Mine
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r inside the mine
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTurn in both quarry quests
    .goto 1426/0,-1600.30,-5726.590
    .turnin 432 >> Turn in Those Blasted Troggs!
    .target +Foreman Stonebrow
    .goto 1426/0,-1579.96,-5714.73
    .turnin 433 >> Turn in The Public Servant
    .target +Senator Mehr Stonehallow
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Turn in Nip 'Em in the Bud
    .turnin 96391 >> Turn in Underground Map
    .accept 96393 >> Accept Old Ironforge Incursion
    .target Earthseer Farsen
step
    .goto 1426/0,-2197.02,-5279.07,45,0
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2121.76,-5064.70
    >>Click the |cRXP_PICK_Dwarven Corpse|r on the ground
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    .goto 1426/0,-2087.19,-5096.51
    >>Kill |cRXP_ENEMY_Mangeclaw|r and loot his |cRXP_LOOT_Mangy Claw|r
    .complete 417,1 --Collect Mangy Claw (1)
    .mob Mangeclaw
step
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Hammerfoot|r
    .turnin 417 >> Turn in A Pilot's Revenge
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2353.100,-4897.100,15,0
    .goto 1432/0,-2503.500,-4815.300,15,0
    >>Run north through the North Gate Pass into Loch Modan
    .zone Loch Modan >> Enter Loch Modan through the North Gate Pass
step
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12
    >>Enter the Algaz Station bunker and go to the top floor
step
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery
    .accept 307 >> Accept Filthy Paws
    .accept 1338 >> Accept Stormpike's Order
    .target Mountaineer Stormpike
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
<< Mage/Priest/Paladin/Shaman/Hunter
#group Leon-1-14_DwarfGnome
#subgroup Dwarf/Gnome
#name 11-13 Loch Modan
#next 13-14 Westfall
#defaultfor Dwarf/Gnome

step
    .goto 1432,35.273,47.750
    >>Run straight south to |cRXP_WARN_Thelsamar|r. Do NOT complete Filthy Paws yet.
    .subzone 144 >> Enter Thelsamar
step
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grenhild Darktalon|r
    .accept 86667 >> Accept Snowbound
    .target Grenhild Darktalon
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r inside the southern guard tower bunker
    .accept 267 >> Accept The Trogg Threat
    .target Captain Rugelfuss
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #loop
    .goto 1432,29.600,72.500,0
    .goto 1432,31.000,73.000,0
    .goto 1432,33.000,73.500,0
    .goto 1432,29.600,72.500,45,0
    .goto 1432,31.000,73.000,45,0
    .goto 1432,33.000,73.500,45,0
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r
    >>|cRXP_WARN_Only finish In Defense of the King's Lands here. Keep The Trogg Threat for later.|r
    .complete 224,1 -- Stonesplinter Trogg (10)
    .mob +Stonesplinter Trogg
    .complete 224,2 -- Stonesplinter Scout (10)
    .mob +Stonesplinter Scout
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    .goto 1432,23.500,76.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gravelgaw|r inside the southern guard tower
    .accept 237 >> Accept In Defense of the King's Lands
    .target Mountaineer Gravelgaw
step
    #loop
    .goto 1432,31.000,73.000,0
    .goto 1432,33.000,73.500,0
    .goto 1432,35.000,78.000,0
    .goto 1432,36.000,80.000,0
    .goto 1432,31.000,73.000,45,0
    .goto 1432,33.000,73.500,45,0
    .goto 1432,35.000,78.000,45,0
    .goto 1432,36.000,80.000,45,0
    >>Kill |cRXP_ENEMY_Stonesplinter Skullthumpers|r and |cRXP_ENEMY_Stonesplinter Seers|r while working north toward the cave
    >>|cRXP_WARN_Do not leave the area until In Defense of the King's Lands is complete.|r
    .complete 237,1 -- Stonesplinter Skullthumper slain (10)
    .mob +Stonesplinter Skullthumper
    .complete 237,2 -- Stonesplinter Seer slain (10)
    .mob +Stonesplinter Seer
step
    .goto 1432,36.000,80.000,20
    >>Go north into the Stonesplinter cave and find |cRXP_FRIENDLY_Mountaineer Ylva|r
    .accept 86585 >> Accept Banner of the Fallen
    .target Mountaineer Ylva
step
    .goto 1432,36.000,80.000
    >>Use the |cRXP_LOOT_Banner of Ironforge|r on the ground beside |cRXP_FRIENDLY_Mountaineer Ylva|r
    >>Kill the waves of troggs, then kill |cRXP_ENEMY_Headsplitter|r when he spawns
    >>|cRXP_WARN_If someone misses the tag, the banner can be used again after its short cooldown.|r
    .complete 86585,1 -- Headsplitter slain
    .mob Headsplitter
step
    >>Finish any remaining |cRXP_ENEMY_Stonesplinter Skullthumpers|r or |cRXP_ENEMY_Stonesplinter Seers|r before leaving
    .complete 237,1 -- Stonesplinter Skullthumper slain (10)
    .complete 237,2 -- Stonesplinter Seer slain (10)
step
    .goto 1432,23.500,76.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Gravelgaw|r
    .turnin 237 >> Turn in In Defense of the King's Lands
    .target Mountaineer Gravelgaw
step
    .goto 1432,23.400,76.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Wallbang|r inside the Southern Guard Tower
    .accept 263 >> Accept In Defense of the King's Lands
    .target Mountaineer Wallbang
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 86585 >> Turn in Banner of the Fallen
    .target Captain Rugelfuss
step
    .goto 1432/0,-2634.59,-5842.81
    >>|cRXP_WARN_GROUP CHECK: Turn in The Trogg Threat ONLY if everyone in the group has completed it. Call this out before turning it in.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    .goto 1432/0,-2534.38,-5648.28
    >>Travel to the snowy patch just outside the South Gate Pass tunnel
    .use 279380 >> Use the |cRXP_LOOT_Ceramic Jar|r while standing on the snow to collect a |cRXP_LOOT_Jar of Snow|r
    >>|cRXP_WARN_The Jar of Snow lasts only 10 minutes, so head north to turn it in immediately.|r
    .complete 86667,1 -- Jar of Snow (1)
step
    .goto 1432/0,-3146.73,-4837.02
    #arrowtext |cRXP_WARN_10 minute timer to turn in Snowbound!|r
    >>Run north and talk to |cRXP_FRIENDLY_Norric Lochthane|r
    .turnin 86667 >> Turn in Snowbound
    .target Norric Lochthane
step
    .goto 1432/0,-2972.96,-4835.187,20
    >>Enter the |cRXP_WARN_Silver Stream Mine|r
step
    .goto 1432/0,-2984.82,-4902.33
    >>Open |cRXP_PICK_Miners' League Crates|r throughout the mine and loot |cRXP_LOOT_Miners' Gear|r
    .complete 307,1 -- Miners' Gear (4)
step
    .goto 1432/0,-2676.99,-4825.980
    >>Return to |cRXP_FRIENDLY_Mountaineer Stormpike|r in the Algaz Station bunker
    .turnin 307 >> Turn in Filthy Paws
    .target Mountaineer Stormpike
step
    .goto 1432/0,-3783.63,-5713.77,80
    .goto 1432/0,-3812.43,-5694.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 298 >> Accept Excavation Progress Report
    .target Prospector Ironband
step
    .goto 1432/0,-4280.96,-5579.66,80,0
    .goto 1432/0,-4290.89,-5645.89,25
    >>Travel to the Farstrider Lodge
step
    .goto 1432/0,-4296.68,-5690.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .accept 257 >> Accept A Hunter's Boast
    .target Daryl the Youngling
step
    .goto 1432/0,-4202.90,-5667.78,60,0
    .goto 1432/0,-4122.08,-5877.67,60,0
    .goto 1432/0,-3946.10,-5828.74,60,0
    .goto 1432/0,-4108.01,-5633.01,60,0
    .goto 1432/0,-4100.01,-5518.59,60,0
    .goto 1432/0,-4202.90,-5667.78,60,0
    .goto 1432/0,-4122.08,-5877.67,60,0
    .goto 1432/0,-3946.10,-5828.74,60,0
    .goto 1432/0,-4108.01,-5633.01,60,0
    .goto 1432/0,-4100.01,-5518.59,60,0
    .goto 1432/0,-4202.90,-5667.78
    >>Kill |cRXP_ENEMY_Mountain Buzzards|r
    >>|cRXP_WARN_You have 15 minutes. If the quest fails, abandon it and pick it up again from Daryl.|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step
    .goto 1432/0,-4296.68,-5690.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .turnin 257 >> Turn in A Hunter's Boast
    .accept 258 >> Accept A Hunter's Challenge
    .target Daryl the Youngling
step
    #loop
    .goto 1432,76.36,56.05,0
    .goto 1432,76.65,62.27,0
    .goto 1432,80.09,64.16,0
    .goto 1432,77.16,75.57,0
    .goto 1432,70.78,72.91,0
    .goto 1432,76.36,56.05,60,0
    .goto 1432,76.65,62.27,60,0
    .goto 1432,80.09,64.16,60,0
    .goto 1432,77.16,75.57,60,0
    .goto 1432,70.78,72.91,60,0
    >>Kill |cRXP_ENEMY_Elder Mountain Boars|r
    >>|cRXP_WARN_You have 12 minutes to kill 5 and return to Daryl.|r
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar
step
    .goto 1432/0,-4296.68,-5690.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryl the Youngling|r
    .turnin 258 >> Turn in A Hunter's Challenge
    .target Daryl the Youngling
step
    #softcore
    >>Die to a nearby mob and resurrect at the |cRXP_FRIENDLY_Thelsamar Spirit Healer|r
    .deathskip >> Die and respawn at the Thelsamar Spirit Healer
    .target Spirit Healer
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3020.95,-5359.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >> Turn in Excavation Progress Report
    .accept 301 >> Accept Report to Ironforge
    .target Jern Hornhelm
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .accept 6387 >> Accept Honor Students
    .target Brock Stoneseeker
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Turn in Honor Students
    .accept 6391 >> Accept Ride to Ironforge
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step
    .goto 1455/0,-1303.75,-4631.19
    >>Run to the Hall of Explorers and talk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 301 >> Turn in Report to Ironforge
    .accept 302 >> Accept Powder to Ironband
    .target Prospector Stormpike
step << Mage
    >>|cRXP_WARN_Pick up the Archmage book from the nearby table for the later Stormwind turn-in.|r
step
    .goto 1455/0,-1120.93,-4708.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe|r
    .turnin 6391 >> Turn in Ride to Ironforge
    .accept 6388 >> Accept Gryth Thurden
    .target Golnir Bouldertoe
step
    .goto 1455/0,-1026.28,-4872.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Turn in The Reports
    .target Senator Barin Redstone
step << Mage
    .goto 1455/0,-928.48,-4614.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells
    .target Dink
step << Priest
    .goto 1455/0,-912.88,-4625.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r
    .trainer >> Train your class spells
    .target Toldren Deepiron
step << Paladin
    .goto 1455/0,-907.69,-4592.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldruk Doombrow|r
    .trainer >> Train your class spells
    .target Beldruk Doombrow
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldrun Stormbreaker::258098|r
    .trainer >> Train your class spells
    .target Eldrun Stormbreaker::258098
step << Hunter
    .goto 1455/0,-1266.100,-5006.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r
    .trainer >> Train your class spells
    .target Regnus Thundergranite
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r at the Ironforge flight master
    .turnin 6388 >> Turn in Gryth Thurden
    .accept 6392 >> Accept Return to Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Fly back to Thelsamar
    .target Gryth Thurden
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3020.95,-5359.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jern Hornhelm|r in Thelsamar
    .turnin 302 >> Turn in Powder to Ironband
    .target Jern Hornhelm
step
    .goto 1432/0,-3019.02,-5369.40,8,0
    .goto 1432/0,-3014.86,-5366.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brock Stoneseeker|r
    .turnin 6392 >> Turn in Return to Brock
    .target Brock Stoneseeker
step
    .hs >> Hearth to Sentinel Hill
    .subzoneskip 108 >> Arrive at Sentinel Hill
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
<< Mage/Priest/Paladin/Shaman/Hunter
#group Leon-1-14_DwarfGnome
#subgroup Dwarf/Gnome
#name 13-14 Westfall
#next 14-20 Dungeon Fun Begins
#defaultfor Dwarf/Gnome

step
    .goto 1436/0,1126.67,-10636.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .accept 153 >> Accept Red Leather Bandanas
    .target Scout Galiaan
step
    .goto 1436,50.000,45.400
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r around the farms and Jangolode area
    >>Loot them for |cRXP_LOOT_Red Leather Bandanas|r while completing The People's Militia
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 12 >> Turn in The People's Militia
    .accept 13 >> Accept The People's Militia
    .target Gryan Stoutmantle
step
    #loop
    .goto 1436,53.500,31.500,0
    .goto 1436,56.000,31.000,0
    .goto 1436,57.500,35.000,0
    .goto 1436,43.000,26.000,0
    .goto 1436,41.000,40.000,0
    .goto 1436,36.000,54.000,0
    .goto 1436,53.500,31.500,55,0
    .goto 1436,56.000,31.000,55,0
    .goto 1436,57.500,35.000,55,0
    .goto 1436,43.000,26.000,55,0
    .goto 1436,41.000,40.000,55,0
    .goto 1436,36.000,54.000,55,0
    >>Complete |cRXP_WARN_The Killing Fields|r and |cRXP_WARN_The People's Militia|r Part 2 together
    >>Kill |cRXP_ENEMY_Harvest Watchers|r, |cRXP_ENEMY_Defias Pillagers|r, and |cRXP_ENEMY_Defias Looters|r as you move through the farms
    >>|cRXP_WARN_While you're in the Alexston Farmstead area, grab |cRXP_LOOT_A Simple Compass|r for Humble Beginnings from the nearby ruined house.|r
    .complete 9,1 -- Harvest Watcher slain (20)
    .mob +Harvest Watcher
    .complete 13,1 -- Defias Pillager slain (15)
    .mob +Defias Pillager
    .complete 13,2 -- Defias Looter slain (15)
    .mob +Defias Looter
step
    .goto 1436,36.000,54.000
    >>Search the ruined Alexston Farmstead house and loot |cRXP_LOOT_A Simple Compass|r for Humble Beginnings if you haven't already
    .complete 399,1 -- A Simple Compass (1)
step
    .goto 1436/0,1055.27,-10128.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .turnin 9 >> Turn in The Killing Fields
    .target Farmer Saldean
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 13 >> Turn in The People's Militia
    .target Gryan Stoutmantle
step
    #optional
    .xp <14,1
    +|cRXP_WARN_If you are not level 14, complete any of the following 3 quests: Patrolling Westfall, Harvesting the Harvesters, or Keeper of the Flame to ding level 14.|r
step
    .xp 14 >> Reach level 14 before starting the Defias Brotherhood chain
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r at the Sentinel Hill flight master
    .fly Redridge Mountains >> Fly to Lakeshire
    .target Thor
step
    .goto 1433,24.10,53.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shawn|r next to Hilary by the lake
    .accept 3741 >> Accept Hilary's Necklace
    .target Shawn
step
    #loop
    .goto 1433,31.29,54.27,0
    .goto 1433,27.80,56.05,0
    .goto 1433,26.56,50.63,0
    .goto 1433,23.96,55.17,0
    .goto 1433,19.16,51.75,0
    .goto 1433,34.03,55.34,0
    .goto 1433,38.09,54.49,0
    .goto 1433,31.29,54.27,90,0
    .goto 1433,27.80,56.05,90,0
    .goto 1433,26.56,50.63,90,0
    .goto 1433,23.96,55.17,90,0
    .goto 1433,19.16,51.75,90,0
    .goto 1433,34.03,55.34,90,0
    .goto 1433,38.09,54.49,90,0
    >>Swim underwater in Lake Everstill and open |cRXP_PICK_Glinting Mud|r until you loot |cRXP_LOOT_Hilary's Necklace|r
    .complete 3741,1 -- Hilary's Necklace (1)
step
    .goto 1433,24.10,53.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >> Turn in Hilary's Necklace
    .target Hilary
step
    .goto 1433,24.90,44.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r in Lakeshire Town Hall
    >>|cRXP_WARN_Pick this up now so we can turn it in during the upcoming Stormwind leg of the Defias Brotherhood chain.|r
    .accept 120 >> Accept Messenger to Stormwind
    .target Magistrate Solomon
step
    .goto 1433,27.00,45.00
    >>Go upstairs in the Lakeshire inn and talk to |cRXP_FRIENDLY_Wiley the Black|r
    .turnin 65 >> Turn in The Defias Brotherhood
    .accept 132 >> Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto 1433,25.5,59.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Fly to Sentinel Hill
    .target Ariena Stormfeather
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Turn in The Defias Brotherhood
    .accept 135 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind City
    .target Thor
step
    .goto Stormwind City,69.3,82.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r in the Valley of Heroes
    .turnin 120 >> Turn in Messenger to Stormwind
    >>|cRXP_WARN_Accept any follow-up quest offered.|r
    .target General Marcus Jonathan
step
    .goto Stormwind City,60.4,75.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Stormwind
    .target Innkeeper Allison
step << Mage
    .goto Stormwind City,48.3,82.4
    >>Train your class spells at the Wizard's Sanctum
    .trainer >> Train your class spells
step << Priest
    .goto Stormwind City,49.5,44.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Priestess Laurena|r
    .trainer >> Train your class spells
    .target High Priestess Laurena
step << Paladin
    .goto Stormwind City,49.6,49.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Hunter
    .goto Stormwind City,67.4,36.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .target Einris Brightspear
step
    .goto Stormwind City,57.7,47.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Turn in Humble Beginnings
    >>|cRXP_WARN_Accept any follow-up quest offered.|r
    .target Baros Alexston
step
    .goto Stormwind City,64.8,36.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
    >>|cRXP_WARN_Accept any follow-up quest offered.|r
    .target Furen Longbeard
step
    .goto Stormwind City,77.8,70.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r in SI:7
    .turnin 135 >> Turn in The Defias Brotherhood
    .accept 141 >> Accept The Defias Brotherhood
    .target Master Mathias Shaw
step
    .goto Stormwind City,71.7,72.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Sentinel Hill
    .target Dungar Longdrink
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Turn in The Defias Brotherhood
    .accept 142 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto Westfall,42.9,69.3
    >>Head to the |cRXP_ENEMY_Defias Messenger|r spawn area around 42.9, 69.3, then follow his patrol if needed
    >>Loot him for |cRXP_LOOT_A Mysterious Message|r
    .complete 142,1 -- A Mysterious Message (1)
    .mob Defias Messenger
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >> Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436,55.60,47.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Defias Traitor|r at the bottom of the Sentinel Hill tower
    .accept 155 >> Accept The Defias Brotherhood
    .target Defias Traitor
step
    >>Escort the |cRXP_FRIENDLY_Defias Traitor|r from Sentinel Hill to Moonbrook and protect him until he reveals the Defias hideout
    .complete 155,1 -- Escort The Defias Traitor
    .target Defias Traitor
step
    >>|cRXP_WARN_Hearth to Stormwind as soon as the escort completes. Do NOT turn in The Defias Brotherhood yet; save that turn-in for the later Deadmines trip.|r
    .hs >> Hearth to Stormwind
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
<< Mage/Priest/Paladin/Shaman/Hunter
#group Leon-1-14_DwarfGnome
#subgroup Dwarf/Gnome
#name 14-20 Dungeon Fun Begins
#defaultfor Dwarf/Gnome

step
    .goto Stormwind City,71.7,72.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Ironforge >> Fly to Ironforge
    .target Dungar Longdrink
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eldrun Stormbreaker::258098|r
    .trainer >> Train your class spells
    .target Eldrun Stormbreaker::258098
step
    .goto Ironforge,33.2,47.6
    >>Talk to |cRXP_FRIENDLY_Afadra Dunwall|r near the Hall of Thanes entrance
    .accept 96394 >> Accept The Restless Dead
    .target Afadra Dunwall
step
    .goto Ironforge,32.6,44.6
    >>Then go to |cRXP_FRIENDLY_Thom Filch|r in Old Ironforge
    .accept 96403 >> Accept Important Heirlooms
    .target Thom Filch
step
    .goto Ironforge,43.5,52.0
    >>Enter the High Seat, take the left passage down into Old Ironforge, and continue to the Hall of Thanes entrance
    >>|cRXP_WARN_You should already have Old Ironforge Incursion from Earthseer Farsen.|r
step
    >>Inside Hall of Thanes, talk to the |cRXP_FRIENDLY_Ghostly Attendant|r in Anvilmar's Rest
    .accept 96395 >> Accept An Ancient Grudge
    .target Ghostly Attendant
step
    >>Kill |cRXP_ENEMY_Faldrim Anvilmar|r
    .complete 96395,1 -- Faldrim Anvilmar slain
    .mob Faldrim Anvilmar
step
    >>Turn in An Ancient Grudge to the |cRXP_FRIENDLY_Ghostly Attendant|r
    .turnin 96395 >> Turn in An Ancient Grudge
    .target Ghostly Attendant
step
    >>Continue through Hall of Thanes
    >>Kill |cRXP_ENEMY_Enraged Apparitions|r and |cRXP_ENEMY_Tormented Souls|r and loot |cRXP_LOOT_Dwarven Heirlooms|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    >>Kill |cRXP_ENEMY_Durgen Dirgehammer|r and loot his head for Old Ironforge Incursion
    .complete 96393,1 -- Durgen Dirgehammer's Head
    .mob Durgen Dirgehammer
step
    >>In the Reliquary of Kings, loot the |cRXP_LOOT_Treaty of Understanding|r from one of the vaults and use it
    .use 281030
    .accept 98423 >> Accept The Treaty of Understanding
step
    .goto Ironforge,33.2,47.6
    >>After finishing Hall of Thanes, talk to |cRXP_FRIENDLY_Afadra Dunwall|r
    .turnin 96394 >> Turn in The Restless Dead
    .target Afadra Dunwall
step
    .goto Ironforge,32.6,44.6
    >>Talk to |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >> Turn in Important Heirlooms
    .target Thom Filch
step
    .goto Ironforge,39.1,56.2
    >>Talk to |cRXP_FRIENDLY_King Magni Bronzebeard|r in the High Seat
    .turnin 98423 >> Turn in The Treaty of Understanding
    .target King Magni Bronzebeard
step
    +|cRXP_WARN_Hall of Thanes is complete. Next: Ruins of Lordaeron (RoL).|r
step
    +|cRXP_WARN_Travel to the Ruins of Lordaeron dungeon above Undercity. Alliance players can route through Southshore, around Dalaran, then swim north through Lordamere Lake into Tirisfal Glades.|r
step
    >>At the RoL entrance, talk to |cRXP_FRIENDLY_Captain Truman|r
    .accept 95250 >> Accept Abominable Creatures
    .target Captain Truman
step
    >>Run Ruins of Lordaeron and complete all Alliance dungeon quests
    >>Kill |cRXP_ENEMY_The Baron|r and loot his head for Abominable Creatures
    .complete 95250,1 -- Head of the Baron (1)
step
    >>Loot undead mobs until you obtain a |cRXP_LOOT_Bloodied Insignia|r, start the quest, then collect 10 total
    .accept 95195 >> Accept Bloodied Insignia
    .complete 95195,1 -- Bloodied Insignia (10)
step
    >>Near Rath'mael, loot the |cRXP_LOOT_Blood-Stained Letter|r and start Remember That I Love You
    .accept 92415 >> Accept Remember That I Love You
step
    >>Search the known RoL Crest spawn points and pick up the |cRXP_LOOT_Crest of Lordaeron|r
    .accept 95189 >> Accept Crest of Lordaeron
step
    >>Return to |cRXP_FRIENDLY_Captain Truman|r at the dungeon entrance
    .turnin 95250 >> Turn in Abominable Creatures
    .target Captain Truman
step
    +|cRXP_WARN_Return to Stormwind and turn in the three Alliance RoL delivery quests: Bloodied Insignia, Remember That I Love You, and Crest of Lordaeron. Accept any follow-ups offered.|r
step
    .goto Stormwind City,69.3,82.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 95195 >> Turn in Bloodied Insignia
    .target General Marcus Jonathan
step
    +|cRXP_WARN_Turn in Remember That I Love You to Orphan Matron Nightingale near the Stormwind Cathedral and accept its follow-up.|r
    .turnin 92415 >> Turn in Remember That I Love You
step
    +|cRXP_WARN_Turn in Crest of Lordaeron to Lady Dena Kennedy in Stormwind.|r
    .turnin 95189 >> Turn in Crest of Lordaeron
step
    .goto Stormwind City,71.7,72.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Sentinel Hill
    .target Dungar Longdrink
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >> Turn in The Defias Brotherhood
    .accept 166 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
    >>Hearth back to Stormwind to collect the remaining Deadmines quests
    .hs >> Hearth to Stormwind
step
    .goto Stormwind City,65.2,21.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r in the Dwarven District
    .accept 168 >> Accept Collecting Memories
    .accept 167 >> Accept Oh Brother...
    .target Wilder Thistlenettle
step
    .goto Stormwind City,55.4,12.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r in the Dwarven District
    .accept 2040 >> Accept Underground Assault
    .target Shoni the Shilent
step
    .goto Stormwind City,71.7,72.0
    >>Fly back to Sentinel Hill
    .fly Westfall >> Fly to Sentinel Hill
    .target Dungar Longdrink
step
    .goto 1436,56.30,47.50
    >>Talk to |cRXP_FRIENDLY_Scout Riell|r at Sentinel Hill
    .accept 214 >> Accept Red Silk Bandanas
    .target Scout Riell
step
    +|cRXP_WARN_Run Deadmines and complete all remaining dungeon quests together.|r
step
    >>Kill Defias elites throughout Deadmines and loot |cRXP_LOOT_Red Silk Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
step
    >>Loot |cRXP_LOOT_Miners' Union Cards|r for Collecting Memories
    .complete 168,1 -- Miners' Union Card (4)
step
    >>Kill |cRXP_ENEMY_Foreman Thistlenettle|r and loot his badge
    .complete 167,1 -- Thistlenettle's Badge (1)
    .mob Foreman Thistlenettle
step
    >>Kill |cRXP_ENEMY_Sneed's Shredder|r and loot the |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r and loot his head
    .complete 166,1 -- Head of VanCleef (1)
    .mob Edwin VanCleef
step
    +|cRXP_WARN_Loot and accept The Unsent Letter from VanCleef if it drops.|r
step
    .goto 1436/0,1045.12,-10508.80
    >>Return to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 166 >> Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
step
    .goto 1436,56.30,47.50
    >>Turn in Red Silk Bandanas to |cRXP_FRIENDLY_Scout Riell|r
    .turnin 214 >> Turn in Red Silk Bandanas
    .target Scout Riell
step
    +|cRXP_WARN_Return to Stormwind's Dwarven District and turn in Collecting Memories, Oh Brother..., and Underground Assault.|r
step
    .goto Stormwind City,65.2,21.6
    .turnin 168 >> Turn in Collecting Memories
    .turnin 167 >> Turn in Oh Brother...
    .target Wilder Thistlenettle
step
    .goto Stormwind City,55.4,12.6
    .turnin 2040 >> Turn in Underground Assault
    .target Shoni the Shilent
step
    +|cRXP_WARN_This dungeon circuit should put the group around level 20-21. Continue the leveling guide from here.|r
]])

