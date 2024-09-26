local config = {
     ['rat'] = {amount = 150, storage = 19000, startstorage = 5010, startvalue = 1},
     ['skeleton'] = {amount = 150, storage = 19001, startstorage = 5011, startvalue = 1},
     ['orc'] = {amount = 150, storage = 19002, startstorage = 5012, startvalue = 1},
     ['rotworm'] = {amount = 400, storage = 19003, startstorage = 5013, startvalue = 1},
     ['minotaur'] = {amount = 150, storage = 19004, startstorage = 5014, startvalue = 1},
     ['tortoise'] = {amount = 200, storage = 19005, startstorage = 5015, startvalue = 1},
     ['nomad'] = {amount = 250, storage = 19006, startstorage = 5016, startvalue = 1},
     ['cyclops'] = {amount = 200, storage = 19007, startstorage = 5017, startvalue = 1},
     ['weak hero'] = {amount = 200, storage = 19008, startstorage = 5018, startvalue = 1},
     ['wyvern'] = {amount = 100, storage = 19009, startstorage = 5019, startvalue = 1},
     ['dragon'] = {amount = 300, storage = 19010, startstorage = 5020, startvalue = 1},
     ['dragon lord'] = {amount = 300, storage = 19011, startstorage = 5021, startvalue = 1},
     ['assassin'] = {amount = 100, storage = 19012, startstorage = 5022, startvalue = 1},
     ['ancient scarab'] = {amount = 100, storage = 19013, startstorage = 5023, startvalue = 1},
     ['bog raider'] = {amount = 300, storage = 19014, startstorage = 5024, startvalue = 1},
     ['wyrm'] = {amount = 200, storage = 19015, startstorage = 5025, startvalue = 1},
     ['vampire'] = {amount = 100, storage = 19016, startstorage = 5026, startvalue = 1},
     ['mutated rat'] = {amount = 300, storage = 19017, startstorage = 5027, startvalue = 1},
     ['mutated human'] = {amount = 300, storage = 19018, startstorage = 5028, startvalue = 1},
     ['frost dragon'] = {amount = 300, storage = 19019, startstorage = 5029, startvalue = 1},
     ['hydra'] = {amount = 300, storage = 19020, startstorage = 5030, startvalue = 1},
     ['warlock'] = {amount = 300, storage = 19021, startstorage = 5031, startvalue = 1},
     ['fury'] = {amount = 500, storage = 19022, startstorage = 5032, startvalue = 1},
     ['black knight'] = {amount = 300, storage = 19023, startstorage = 5033, startvalue = 1},
     ['hellspawn'] = {amount = 300, storage = 19024, startstorage = 5034, startvalue = 1},
     ['grim reaper'] = {amount = 500, storage = 19025, startstorage = 5035, startvalue = 1},
     ['enslaved dwarf'] = {amount = 300, storage = 19026, startstorage = 5036, startvalue = 1}
}
function onKill(player, target)
     local monster = config[target:getName():lower()]
     if target:isPlayer() or not monster or target:getMaster() then
         return true
     end
     local stor = player:getStorageValue(monster.storage)+1
     if stor < monster.amount and player:getStorageValue(monster.startstorage) >= monster.startvalue then
         player:setStorageValue(monster.storage, stor)
         player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'Task message: '..(stor +1)..' of '..monster.amount..' '..target:getName()..'s killed.')
     end
     if (stor +1) == monster.amount then
         player:sendTextMessage(MESSAGE_INFO_DESCR, 'Congratulations, you have killed '..(stor +1)..' '..target:getName()..'s and completed the '..target:getName()..'s mission.')
         player:setStorageValue(monster.storage, stor +1)
     end
     return true
end