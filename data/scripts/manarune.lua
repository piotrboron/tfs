local runeTest = Spell(SPELL_RUNE)
function runeTest.onCastSpell(creature, variant)
    local target = Tile(variant:getPosition()):getTopVisibleCreature(creature)
    if not target or not target:isPlayer() then
        creature:getPosition():sendMagicEffect(CONST_ME_POFF)
        return false
    end
    local maxMana = creature:getMaxMana() / 100
    target:addMana(math.random(maxMana * 4, maxMana * 8))
    target:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    target:say("Aaahh!")
    return true
end

runeTest:name("Mana Rune")
runeTest:isAggressive(false)
runeTest:runeId(2270)
runeTest:blockWalls(true)
runeTest:magicLevel(1)
runeTest:level(1)
runeTest:group("support")
runeTest:id(24)
runeTest:cooldown(1 * 850)
runeTest:groupCooldown(1 * 850)
runeTest:isPremium(false)
runeTest:register()
