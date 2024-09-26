local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 34)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 8)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.0, -100, -3, -150)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
