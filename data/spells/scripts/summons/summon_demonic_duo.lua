local summonName = "Frost Troll"
local summonNamex = "Furious Troll"

function onCastSpell(creature, var)
 
    local creatureSummons = creature:getSummons(summonName)
    local creaturePosition = creature:getPosition()
    local summonscountFuriousTroll = 0
    local summonscountFrostTroll = 0
 
    for _,creature in pairs(creatureSummons) do
        if creature:getName() == "Frost Troll" then
            summonscountFrostTroll = 1
        end
        if creature:getName() == "Furious Troll" then
            summonscountFuriousTroll = 1
        end
    end
    if summonscountFrostTroll == 0 then
        local summon = Game.createMonster(summonName, creaturePosition)
        summon:setMaster(creature)
        summon:setDropLoot(false)
        summon:registerEvent('SummonThink')
        -- co player powie gdy przywola: creature:say("Go " .. summonName .. "!", TALKTYPE_MONSTER_SAY)
    else
        creature:sendCancelMessage("Frost Troll is already summoned.")-- error msg
    end
 
    if summonscountFuriousTroll == 0 then
        local summonx = Game.createMonster(summonNamex, creaturePosition)
        summonx:setMaster(creature)
        summonx:setDropLoot(false)
        summonx:registerEvent('SummonThink')
    else
        creature:sendCancelMessage("Furious Troll is already summoned.")-- error msg
    end
 
    return true
end