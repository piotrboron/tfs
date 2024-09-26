-- Monster Tasks by Limos
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local xmsg = {}

function onCreatureAppear(cid)  npcHandler:onCreatureAppear(cid)  end
function onCreatureDisappear(cid)  npcHandler:onCreatureDisappear(cid)  end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)  end
function onThink()  npcHandler:onThink()  end

local storage = 62003

local monsters = {
   ["Rats"] = {storage = 5010, mstorage = 19000, amount = 150, exp = 200000, items = {{id = 7620, count = 100}, {id = 2152, count = 40}}},
   ["Skeletons"] = {storage = 5011, mstorage = 19001, amount = 150, exp = 400000, items = {{id = 2518, count = 1}, {id = 2152, count = 60}}},
   ["Orcs"] = {storage = 5012, mstorage = 19002, amount = 150, exp = 420000, items = {{id = 2268, count = 50}, {id = 2152, count = 80}}},
   ["Rotworms"] = {storage = 5013, mstorage = 19003, amount = 400, exp = 1000000, items = {{id = 2268, count = 100}, {id = 2160, count = 2}}},
   ["Minotaurs"] = {storage = 5014, mstorage = 19004, amount = 150, exp = 600000, items = {{id = 11244, count = 1}, {id = 2152, count = 70}}},
   ["Tortoises"] = {storage = 5015, mstorage = 19005, amount = 200, exp = 900000, items = {{id = 10223, count = 1}, {id = 2160, count = 1}}},
   ["Nomads"] = {storage = 5016, mstorage = 19006, amount = 250, exp = 1100000, items = {{id = 2393, count = 1}, {id = 2160, count = 1}}},
   ["Cyclops"] = {storage = 5017, mstorage = 19007, amount = 200, exp = 900000, items = {{id = 8866, count = 1}, {id = 2160, count = 1}}},
   ["Weak Heros"] = {storage = 5018, mstorage = 19008, amount = 200, exp = 1700000, items = {{id = 2498, count = 1}, {id = 2160, count = 2}}},
   ["Wyverns"] = {storage = 5019, mstorage = 19009, amount = 100, exp = 1100000, items = {{id = 8473, count = 100}, {id = 2160, count = 1}}},
   ["Dragons"] = {storage = 5020, mstorage = 19010, amount = 300, exp = 2700000, items = {{id = 7368, count = 100}, {id = 2160, count = 5}}},
   ["Dragon Lords"] = {storage = 5021, mstorage = 19011, amount = 300, exp = 11000000, items = {{id = 2495, count = 1}, {id = 2160, count = 10}}},
   ["Assasins"] = {storage = 5022, mstorage = 19012, amount = 100, exp = 7000000, items = {{id = 8473, count = 100}, {id = 2160, count = 1}}},
   ["Ancient Scarabs"] = {storage = 5023, mstorage = 19013, amount = 100, exp = 4000000, items = {{id = 2454, count = 1}, {id = 2160, count = 1}}},
   ["Bog Raiders"] = {storage = 5024, mstorage = 19014, amount = 300, exp = 7000000, items = {{id = 11243, count = 1}, {id = 2160, count = 2}}},
   ["Wyrms"] = {storage = 5025, mstorage = 19015, amount = 200, exp = 8000000, items = {{id = 2195, count = 1}, {id = 2160, count = 2}}},
   ["Vampires"] = {storage = 5026, mstorage = 19016, amount = 100, exp = 5000000, items = {{id = 8879, count = 1}, {id = 2160, count = 2}}}
}


local function getItemsFromTable(itemtable)
     local text = ""
     for v = 1, #itemtable do
         count, info = itemtable[v].count, ItemType(itemtable[v].id)
         local ret = ", "
         if v == 1 then
             ret = ""
         elseif v == #itemtable then
             ret = " and "
         end
         text = text .. ret
         text = text .. (count > 1 and count or info:getArticle()).." "..(count > 1 and info:getPluralName() or info:getName())
     end
     return text
end

local function Cptl(f, r)
     return f:upper()..r:lower()
end

function creatureSayCallback(cid, type, msg)

     local player, cmsg = Player(cid), msg:gsub("(%a)([%w_']*)", Cptl)
     if not npcHandler:isFocused(cid) then
         if msg == "hi" or msg == "hello" then
             npcHandler:addFocus(cid)
             if player:getStorageValue(storage) == -1 then
                 local text, n = "",  0
                 for k, x in pairs(monsters) do
                     if player:getStorageValue(x.mstorage) < x.amount then
                         n = n + 1
                         text = text .. ", "
                         text = text .. ""..x.amount.." {"..k.."}"
                     end
                 end
                 if n > 1 then
                     npcHandler:say("I have several tasks for you to kill monsters"..text..", which one do you choose? I can also show you a {list} with rewards and you can {stop} a task if you want.", cid)
                     npcHandler.topic[cid] = 1
                     xmsg[cid] = msg
                 elseif n == 1 then
                     npcHandler:say("I have one last task for you"..text..".", cid)
                     npcHandler.topic[cid] = 1
                 else
                     npcHandler:say("You already did all tasks, I have nothing for you to do anymore, good job though.", cid)
                 end
             elseif player:getStorageValue(storage) == 1 then
                 for k, x in pairs(monsters) do
                     if player:getStorageValue(x.storage) == 1 then
                         npcHandler:say("Did you kill "..x.amount.." "..k.."?", cid)
                         npcHandler.topic[cid] = 2
                         xmsg[cid] = k
                     end
                 end
             end
         else
             return false
         end
     elseif monsters[cmsg] and npcHandler.topic[cid] == 1 then
         if player:getStorageValue(monsters[cmsg].storage) == -1 then
             npcHandler:say("Good luck, come back when you killed "..monsters[cmsg].amount.." "..cmsg..".", cid)
             player:setStorageValue(storage, 1)
             player:setStorageValue(monsters[cmsg].storage, 1)
         else
             npcHandler:say("You already did the "..cmsg.." mission.", cid)
         end
         npcHandler.topic[cid] = 0
     elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 2 then
         local x = monsters[xmsg[cid]]
         if player:getStorageValue(x.mstorage) >= x.amount then
             npcHandler:say("Good job, here is your reward, "..getItemsFromTable(x.items)..".", cid)
             for g = 1, #x.items do
                 player:addItem(x.items[g].id, x.items[g].count)
             end
             player:addExperience(x.exp)
             player:setStorageValue(x.storage, 2)
             player:setStorageValue(storage, -1)
             npcHandler.topic[cid] = 3
         else
             npcHandler:say("You didn't kill them all, you still need to kill "..x.amount -(player:getStorageValue(x.mstorage) + 1).." "..xmsg[cid]..".", cid)
         end
     elseif msgcontains(msg, "task") and npcHandler.topic[cid] == 3 then
         local text, n = "",  0
         for k, x in pairs(monsters) do
             if player:getStorageValue(x.mstorage) < x.amount then
                 n = n + 1
                 text = text .. (n == 1 and "" or ", ")
                 text = text .. "{"..k.."}"
             end
         end
         if text ~= "" then
             npcHandler:say("Want to do another task? You can choose "..text..".", cid)
             npcHandler.topic[cid] = 1
         else
             npcHandler:say("You already did all tasks.", cid)
         end
     elseif msgcontains(msg, "no") and npcHandler.topic[cid] == 1 then
         npcHandler:say("Ok then.", cid)
         npcHandler.topic[cid] = 0
     elseif msgcontains(msg, "stop") then
         local text, n = "",  0
         for k, x in pairs(monsters) do
             if player:getStorageValue(x.mstorage) < x.amount then
                 n = n + 1
                 text = text .. (n == 1 and "" or ", ")
                 text = text .. "{"..k.."}"
                 if player:getStorageValue(x.storage) == 1 then
                      player:setStorageValue(x.storage, -1)
                 end
             end
         end
         if player:getStorageValue(storage) == 1 then
             npcHandler:say("Alright, let me know if you want to continue an other task, you can still choose "..text..".", cid)
         else
             npcHandler:say("You didn't start any new task yet, if you want to start one, you can choose "..text..".", cid)
         end
         player:setStorageValue(storage, -1)
         npcHandler.topic[cid] = 1
     elseif msgcontains(msg, "list") then
         local text = "Tasks\n\n"
         for k, x in pairs(monsters) do
             if player:getStorageValue(x.mstorage) < x.amount then
                 text = text ..k .." ["..(player:getStorageValue(x.mstorage) + 1).."/"..x.amount.."]:\n  Rewards:\n  "..getItemsFromTable(x.items).."\n  "..x.exp.." experience \n\n"
             else
                 text = text .. k .." [DONE]\n"
             end
         end
         player:showTextDialog(1949, "" .. text)
         npcHandler:say("Here you are.", cid)
     elseif msgcontains(msg, "bye") then
         npcHandler:say("Bye.", cid)
         npcHandler:releaseFocus(cid)
     else
         npcHandler:say("What? If you want to stop a task, type {stop}. If you need a list of available tasks, type {list}.", cid)
     end
     return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)