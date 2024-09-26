local rookVocations = { 0 }
local sorcererVocations = { 1, 5 }
local druidVocations = { 2, 6 }
local paladinVocations = { 3, 7 }
local knightVocations = { 4, 8 }
local mainVocations = { 1, 2, 3, 4, 5, 6, 7, 8 }
local allVocations = { 1, 2, 3, 4, 5, 6, 7, 8, 9 }

local rewardsConfig = {
    -- wand of dragonbreath for 13 sorc
    {
        level = 13,
        vocations = sorcererVocations,
        storage = 25101,
        items = {
            { 2191, 1 },
        }
    },
    -- wand of draconia for 22 sorc
    {
        level = 22,
        vocations = sorcererVocations,
        storage = 25102,
        items = {
            { 8921, 1 },
        }
    },
    -- woce for 26 sorc
    {
        level = 26,
        vocations = sorcererVocations,
        storage = 25103,
        items = {
            { 2189, 1 },
        }
    },
    -- woi for 33 sorc
    {
        level = 33,
        vocations = sorcererVocations,
        storage = 25104,
        items = {
            { 2187, 1 },
        }
    },
    -- moonlight rod for 13 druid
    {
        level = 13,
        vocations = druidVocations,
        storage = 25105,
        items = {
            { 2186, 1 },
        }
    },
    -- northwind rod for 22 druid
    {
        level = 22,
        vocations = druidVocations,
        storage = 25106,
        items = {
            { 8911, 1 },
        }
    },
    -- hailstorm rod for 33 druid
    {
        level = 33,
        vocations = druidVocations,
        storage = 25107,
        items = {
            { 2183, 1 },
        }
    },
    -- plate armor for 13 knight
    {
        level = 13,
        vocations = knightVocations,
        storage = 25108,
        items = {
            { 2463, 1 },
        }
    },
    -- plate legs for 22 knight
    {
        level = 22,
        vocations = knightVocations,
        storage = 25109,
        items = {
            { 2647, 1 },
        }
    },
    -- epee for 30 knight
    {
        level = 30,
        vocations = knightVocations,
        storage = 25110,
        items = {
            { 2438, 1 },
        }
},
    -- royal spears for 25 paladin
    {
        level = 25,
        vocations = paladinVocations,
        storage = 25111,
        items = {
            { 7378, 8 },
        }
    },
    -- 1 cc
    {
        level = 10,
        vocations = allVocations,
        storage = 25112,
        items = {
            { 2160, 1 },
        }
    },
    -- 2 cc 
    {
        level = 20,
        vocations = allVocations,
        storage = 25113,
        items = {
            { 2160, 2 },
        }
    },
    -- dwarven shield for all
    {
        level = 15,
        vocations = allVocations,
        storage = 25114,
        items = {
            { 2525, 1 },
        }
    },
    -- 1 SDs for sorc level 50
    {
        level = 50,
        vocations = sorcererVocations,
        storage = 25115,
        items = {
            { 2268, 1 },
        }
    },
    -- 1 GFBs for sorc level 40
    {
        level = 40,
        vocations = sorcererVocations,
        storage = 25116,
        items = {
            { 2304, 1 },
        }
    },
    -- 20 cc for level 100
    {
        level = 100,
        vocations = allVocations,
        storage = 25117,
        items = {
            { 2160, 20 },
        }
    },
    -- burning heart for level 200
    {
        level = 200,
        vocations = allVocations,
        storage = 25118,
        items = {
            { 2353, 1 },
        }
    },
    -- 100cc cc for level 300
    {
        level = 300,
        vocations = allVocations,
        storage = 25119,
        items = {
            { 2160, 100 },
        }
    },
    -- pulverized ores for level 400
    {
        level = 400,
        vocations = allVocations,
        storage = 25120,
        items = {
            { 18427, 25 },
        }
    },
    -- iron ores for level 500
    {
        level = 500,
        vocations = allVocations,
        storage = 25121,
        items = {
            { 5880, 50 },
        }
    },
    -- iron ores for level 750
    {
        level = 750,
        vocations = allVocations,
        storage = 25122,
        items = {
            { 5880, 200 },
        }
    },    
    -- cake cabinet kit for level 1000
    {
        level = 1000,
        vocations = allVocations,
        storage = 25123,
        items = {
            { 16099, 1 },
        }
    },      
    -- certificate for level 2000
    {
        level = 2000,
        vocations = allVocations,
        storage = 25124,
        items = {
            { 6499, 1 },
        }
    },              
}

local advanceReward = CreatureEvent("AdvanceReward")

function advanceReward.onAdvance(player, skill, oldLevel, newLevel)
    if skill ~= SKILL_LEVEL then
        return true
    end

    for i1, rewardConfig in pairs(rewardsConfig) do
        if newLevel >= rewardConfig.level then
            if table.contains(rewardConfig.vocations, player:getVocation():getId()) then
                if player:getStorageValue(rewardConfig.storage) < 1 then
                    player:setStorageValue(rewardConfig.storage, os.time())
                    for i2, item in pairs(rewardConfig.items) do
                        player:addItem(item[1], item[2])
                    end
                    player:getPosition():sendMagicEffect(CONST_ME_CRAPS)
                    player:sendTextMessage(TALKTYPE_MONSTER_SAY, "You received reward for getting " .. rewardConfig.level .. " level.")
                end
            end
        end
    end

    return true
end

advanceReward:register()