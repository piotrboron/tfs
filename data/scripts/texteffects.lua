local config = {
    interval = 3000,
    texts = {
        { pos = Position(993, 996, 7), text = "Island!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(999, 1012, 10), text = "Suggested level : 1-45", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(998, 1003, 10), text = "Suggested level : 45-100", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(982, 996, 9), text = "Suggested level : 130+", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(999, 999, 7), text = "Current Mythoria patch : 1.092", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } }, 
        { pos = Position(1133, 608, 10), text = "Get ores from bosses / mythical stones !", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } }, 
        { pos = Position(1146, 608, 10), text = "Get crystals from med XP/Hard XP mobs !", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(994, 996, 7), text = "Dice Game!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(1031, 1001, 7), text = "Upper floor depo uses different depo slot!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(1031, 1001, 6), text = "Upper floor depo uses different depo slot!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },    
        { pos = Position(1035, 1007, 8), text = "Upper floor depo uses different depo slot!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },             
        { pos = Position(1009, 997, 7), text = "Beach!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(1010, 997, 7), text = "Pumpkins!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(1011, 997, 7), text = "Ship!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(992, 999, 7), text = "EXP EASY!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },        
        { pos = Position(992, 998, 7), text = "EXP MEDIUM!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(992, 997, 7), text = "EXP HARD!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(991, 996, 7), text = "EXP VERY HARD!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(995, 996, 7), text = "Quests!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(996, 996, 7), text = "Trainers!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(997, 996, 7), text = "Bosses!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },
        { pos = Position(1019, 994, 9), text = "More bosses!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },        
        { pos = Position(1006, 689, 7), text = "I need something to get up here!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },           
        { pos = Position(999, 996, 7), text = "Spells!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } },          
        { pos = Position(998, 996, 7), text = "Crafting!", effects = { CONST_ME_MAGIC_BLUE, CONST_ME_DRAWBLOOD } }
    }
}

local textOnMap = GlobalEvent("TextOnMap")

function textOnMap.onThink(interval)
    local player = Game.getPlayers()[1]
    if not player then
        return true
    end

    for k, info in pairs(config.texts) do
        player:say(info.text, TALKTYPE_MONSTER_SAY, false, nil, info.pos)
        info.pos:sendMagicEffect(info.effects[math.random(1, #info.effects)])
    end
    return true
end

textOnMap:interval(config.interval)
textOnMap:register()
