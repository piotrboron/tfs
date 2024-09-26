local summonName = "[Pet] Panda"

function onEquip(player, item, slot, isCheck)
    if isCheck then
        return true
    end
 
    local playerSummons = player:getSummons(summonName)
    local playerPosition = player:getPosition()
    local summonsCountGamakichi = 0

   
     if Tile(playerPosition):hasFlag(TILESTATE_PROTECTIONZONE) then
        return player:sendCancelMessage("You mustn't be in PZ!")-- error msg
    end
 
    for _,player in pairs(playerSummons) do
        if player:getName() == summonName then
            summonsCountGamakichi = 1
        end
    end
 
    if summonsCountGamakichi == 0 then
        local summon = Game.createMonster(summonName, playerPosition)
        summon:setMaster(player)
        summon:setDropLoot(false)
        summon:registerEvent('SummonThink')
        -- what will player say upon summoning: player:say("Go " .. summonName .. "!", TALKTYPE_MONSTER_SAY)
    else
        player:sendCancelMessage("Panda is already summoned.")-- error msg
    end
 
    return true
end

function onDeEquip(creature, item, slot)

local creatureSummons = creature:getSummons(summonName)
local creaturePosition = creature:getPosition()
 
for _,creature in pairs(creatureSummons) do
    if creature:getName() == summonName  then
        creature:getPosition():sendMagicEffect(6) -- 3 = poff, 6 = explosion
        doRemoveCreature(creature:getId())
    else
        -- nothing happens
    end
end

return true
end