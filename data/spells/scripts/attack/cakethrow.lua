local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, 1)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 51)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 41)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, -1, 0, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
