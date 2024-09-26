local acombat1 = createCombatObject() 
local acombat2 = createCombatObject() 
local acombat3 = createCombatObject() 
local combat1 = createCombatObject() 
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE) 
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 31) 
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 30)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -1, -1, -2, -2)
local combat2 = createCombatObject() 
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE) 
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 39) 
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 30)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -1, -1, -2, -2)
local combat3 = createCombatObject() 
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE) 
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 49) 
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 30)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -1, -1, -2, -2)

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
{0, 0, 0, 0, 0, 0, 0}, 
{0, 0, 0, 1, 0, 0, 0}, 
{0, 0, 1, 1, 1, 0, 0}, 
{0, 0, 1, 2, 1, 0, 0}, 
{0, 0, 1, 1, 1, 0, 0}, 
{0, 0, 0, 1, 0, 0, 0}, 
{0, 0, 0, 0, 0, 0, 0}, 
} 

local arr3 = {  
{0, 0, 0, 0, 0, 0, 0}, 
{0, 0, 0, 0, 0, 0, 0}, 
{0, 0, 1, 1, 1, 0, 0}, 
{0, 1, 1, 2, 1, 1, 0}, 
{0, 0, 1, 1, 1, 0, 0}, 
{0, 0, 0, 0, 0, 0, 0}, 
{0, 0, 0, 0, 0, 0, 0}, 
} 
  
local area1 = createCombatArea(arr1) 
local area2 = createCombatArea(arr2) 
local area3 = createCombatArea(arr3) 
setCombatArea(acombat1, area1) 
setCombatArea(acombat2, area2) 
setCombatArea(acombat3, area3) 

function onTargetTile(cid, pos) 
    doCombat(cid,combat1,positionToVariant(pos)) 
end
function onTargetTile2(cid, pos) 
    doCombat(cid,combat2,positionToVariant(pos)) 
end
function onTargetTile3(cid, pos) 
    doCombat(cid,combat3,positionToVariant(pos)) 
end

setCombatCallback(acombat1, CALLBACK_PARAM_TARGETTILE, "onTargetTile") 
setCombatCallback(acombat2, CALLBACK_PARAM_TARGETTILE, "onTargetTile2") 
setCombatCallback(acombat3, CALLBACK_PARAM_TARGETTILE, "onTargetTile3") 

local function onCastSpell1(parameters) 
    doCombat(parameters.cid, acombat1, parameters.var) 
end 
local function onCastSpell2(parameters) 
    doCombat(parameters.cid, acombat2, parameters.var) 
end 
local function onCastSpell3(parameters) 
    doCombat(parameters.cid, acombat3, parameters.var) 
end 

function onCastSpell(cid, var) 
local parameters = {cid = cid, var = var}
	addEvent(onCastSpell1, 0, parameters)
	addEvent(onCastSpell2, 400, parameters)
	addEvent(onCastSpell3, 800, parameters)
	return true
end 
