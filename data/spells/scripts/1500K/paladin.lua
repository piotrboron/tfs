local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE,COMBAT_HOLYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 61) -- spell effect (/z)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 30) -- distance effect (/x)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -1, -1, -2, -2) -- min magic, min lvl, max magic, max level

local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE,COMBAT_HOLYDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 39) -- spell effect (/z)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 30) -- distance effect (/x)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -1, -1, -2, -2) -- min magic, min lvl, max magic, max level

local arr1 = {  
	{0, 0, 0, 0, 0, 0, 0}, 
	{0, 1, 1, 0, 1, 1, 0}, 
	{0, 0, 1, 1, 1, 0, 0}, 
	{0, 1, 1, 1, 1, 1, 0}, 
	{1, 1, 1, 2, 1, 1, 1}, 
	{0, 1, 1, 1, 1, 1, 0}, 
	{0, 0, 1, 1, 1, 0, 0}, 
	{0, 0, 0, 1, 0, 0, 0},
}

local arr2 = {  
	{0, 0, 0, 0, 0, 0, 0}, 
	{0, 1, 1, 0, 1, 1, 0}, 
	{0, 0, 1, 1, 1, 0, 0}, 
	{0, 1, 1, 1, 1, 1, 0}, 
	{1, 1, 1, 2, 1, 1, 1}, 
	{0, 1, 1, 1, 1, 1, 0}, 
	{0, 0, 1, 1, 1, 0, 0}, 
	{0, 0, 0, 1, 0, 0, 0},
}

setCombatArea(combat1, createCombatArea(arr1))
setCombatArea(combat2, createCombatArea(arr2))

function onCastSpell(cid, var)
	addEvent(doCombat, 0, cid, combat1, var)
	addEvent(doCombat, 250, cid, combat2, var)
return TRUE
end
