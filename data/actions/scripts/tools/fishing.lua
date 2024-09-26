local waterIds = {493, 4608, 4609, 4610, 4611, 4612, 4613, 4614, 4615, 4616, 4617, 4618, 4619, 4620, 4621, 4622, 4623, 4624, 4625, 7236}
local useWorms = true


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local targetId = target.itemid
    if not table.contains(waterIds, targetId) then
        return false
    end

    local fishChance = math.random(1, player:getSkillLevel(SKILL_FISHING))
    local breakRodChance = math.random(1, 100)

    toPosition:sendMagicEffect(CONST_ME_LOSEENERGY)
    player:addSkillTries(SKILL_FISHING, 1)
    if math.random(1, 100) <= math.min(math.max(10 + (player:getEffectiveSkillLevel(SKILL_FISHING) - 10) * 0.597, 10), 50) then
        if useWorms and not player:removeItem(3976, 1) then
            return true
        end
       
        if breakRodChance < 15 then
            item:remove()
            player:sendTextMessage(MESSAGE_STATUS_SMALL, "Your fishing rod broke.")
            return true
        end
       
        if fishChance < 15 then
            player:addItem(2670, 1)
        elseif fishChance > 14 and fishChance < 30 then
            player:addItem(7698, 1)
        elseif fishChance > 29 and fishChance < 45 then
            player:addItem(7159, 1)
        elseif fishChance > 44 and fishChance < 60 then
            player:addItem(2669, 1)
        elseif fishChance > 59 and fishChance < 75 then
            player:addItem(7158, 1)
        elseif fishChance > 74 and fishChance < 90 then
            player:addItem(15405, 1)
        elseif fishChance > 89 then
            player:addItem(7963, 1)
        end
    end
    return true
end