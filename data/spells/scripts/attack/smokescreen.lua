local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_BLACKSMOKE)
combat:setArea(createCombatArea(AREA_CIRCLE5X5))

function onGetFormulaValues(player, level, magicLevel)
	local min = (level / 5) + (magicLevel * 5) + 25
	local max = (level / 5) + (magicLevel * 6.2) + 45
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
