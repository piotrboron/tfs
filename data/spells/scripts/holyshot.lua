local acombat1 = createCombatObject() 
local acombat2 = createCombatObject() 
local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE,COMBAT_HOLYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 39) -- spell effect (/z)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 28) -- distance effect (/x)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -1, -1, -2, -2) -- min magic, min lvl, max magic, max level
local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE,COMBAT_HOLYDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 29) -- spell effect (/z)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 29) -- distance effect (/x)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -1, -1, -2, -2) -- min magic, min lvl, max magic, max level

local arr1 = {  
{0, 0, 0, 0, 0, 0, 0}, 
{0, 0, 0, 0, 0, 0, 0}, 
{0, 0, 1, 1, 1, 0, 0}, 
{0, 0, 1, 2, 1, 0, 0}, 
{0, 0, 1, 1, 1, 0, 0}, 
{0, 0, 0, 0, 0, 0, 0}, 
{0, 0, 0, 0, 0, 0, 0},
} 

local arr2 = {  
{1, 1, 1, 1, 1, 1, 1}, 
{1, 1, 1, 1, 1, 1, 1}, 
{1, 1, 0, 0, 0, 1, 1}, 
{1, 1, 0, 2, 0, 1, 1}, 
{1, 1, 0, 0, 0, 1, 1}, 
{1, 1, 1, 1, 1, 1, 1}, 
{1, 1, 1, 1, 1, 1, 1},
}   
  
local area1 = createCombatArea(arr1) 
local area2 = createCombatArea(arr2) 
setCombatArea(acombat1, area1) 
setCombatArea(acombat2, area2) 

function onTargetTile(cid, pos) 
    doCombat(cid,combat1,positionToVariant(pos)) 
end
function onTargetTile2(cid, pos) 
    doCombat(cid,combat2,positionToVariant(pos)) 
end

setCombatCallback(acombat1, CALLBACK_PARAM_TARGETTILE, "onTargetTile") 
setCombatCallback(acombat2, CALLBACK_PARAM_TARGETTILE, "onTargetTile2") 

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, acombat1, parameters.var) 
end 
local function onCastSpell2(parameters) 
    doCombat(parameters.cid, acombat2, parameters.var) 
end 

function onCastSpell(cid, var) 
local parameters = {cid = cid, var = var}
	addEvent(onCastSpell1, 0, parameters)
	addEvent(onCastSpell2, 250, parameters)
	return true
end 