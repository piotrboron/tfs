function onCastSpell(creature, var)

local pets = {"Tazuna", "Katsuyu", "[Pet] Gamakichi", "Pakkun", "Kumo"} --[[ MONSTERS THAT WON'T BE HIDDEN, FOR EXAMPLE PETS ]]--

local creatureSummons = creature:getSummons(summonName)
local creaturePosition = creature:getPosition()

-- ====== COUNTING SUMMONS =================
local summonCount = creature:getSummons()
if #summonCount < 1 then
    creaturePosition:sendMagicEffect(CONST_ME_POFF)
    creature:sendCancelMessage("You don't have any summons!")-- error msg
    return false
end
-- ====== REMOVING SUMMONS =================
for _,creature in pairs(creatureSummons) do
    if (isInArray(pets, creature:getName())) then
    else
        creature:getPosition():sendMagicEffect(6) -- 3 = poff, 6 = explosion
        doRemoveCreature(creature:getId())
    end
end

return true
end