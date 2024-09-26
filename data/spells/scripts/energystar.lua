local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 48)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC,  -1.0, -28, -1.6, -35)
local arr = {
{1, 0, 0, 0, 1, 0, 0, 0, 1},
{0, 1, 0, 0, 1, 0, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{1, 1, 1, 1, 2, 1, 1, 1, 1},
{0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 0, 1, 0, 0, 0, 0},
{1, 0, 0, 0, 1, 0, 0, 0, 1},
}
local area = createCombatArea(arr)
setCombatArea(combat, area)
function onCastSpell(cid, var)
    return doCombat(cid, combat, var)
end
