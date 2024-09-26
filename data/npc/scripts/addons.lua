local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
local talkState = {}
local rtnt = {}
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)             end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)         npcHandler:onCreatureSay(cid, type, msg)     end
function onThink()                             npcHandler:onThink()                         end

npcHandler:setMessage(MESSAGE_GREET, "Greetings |PLAYERNAME|. I need your help and I'll reward you with nice addons if you help me! Just say {addons} or {help} if you don't know what to do.")

addoninfo = {
['first citizen addon'] = {cost = 0, items = {{12428,100}}, outfit_female = 136, outfit_male = 128, addon = 1, storageID = 10042},
-- minotaur horn
['second citizen addon'] = {cost = 0, items = {{12428,100}}, outfit_female = 136, outfit_male = 128, addon = 2, storageID = 10043},
-- minotaur horn
['first hunter addon'] = {cost = 0, items = {{5878,100}}, outfit_female = 137, outfit_male = 129, addon = 1, storageID = 10044},
-- minotaur leather
['second hunter addon'] = {cost = 0, items = {{5878,100}}, outfit_female = 137, outfit_male = 129, addon = 2, storageID = 10045},
-- minotaur leather
['first knight addon'] = {cost = 0, items = {{12413,100}}, outfit_female = 139, outfit_male = 131, addon = 1, storageID = 10046},
-- dragon's tail
['second knight addon'] = {cost = 0, items = {{12413,100}}, outfit_female = 139, outfit_male = 131, addon = 2, storageID = 10047},
-- dragon's tail
['first mage addon'] = {cost = 0, items = {{5877,100}}, outfit_female = 138, outfit_male = 130, addon = 1, storageID = 10048},
-- green dragon leather
['second mage addon'] = {cost = 0, items = {{5877,100}}, outfit_female = 138, outfit_male = 130, addon = 2, storageID = 10049},
-- green dragon leather
['first summoner addon'] = {cost = 0, items = {{5882,100}}, outfit_female = 141, outfit_male = 133, addon = 1, storageID = 10050},
-- red dragon scale
['second summoner addon'] = {cost = 0, items = {{5882,100}}, outfit_female = 141, outfit_male = 133, addon = 2, storageID = 10051},
-- red dragon scale
['first barbarian addon'] = {cost = 0, items = {{11215,100}}, outfit_female = 147, outfit_male = 143, addon = 1, storageID = 10011},
-- metal spike
['second barbarian addon'] = {cost = 0, items = {{11215,100}}, outfit_female = 147, outfit_male = 143, addon = 2, storageID = 10012},
-- metal spike
['first druid addon'] = {cost = 0, items = {{11233,100}}, outfit_female = 148, outfit_male = 144, addon = 1, storageID = 10013},
-- unholy bone
['second druid addon'] = {cost = 0, items = {{11233,100}}, outfit_female = 148, outfit_male = 144, addon = 2, storageID = 10014},
-- unholy bone
['first nobleman addon'] = {cost = 0, items = {{11229,100}}, outfit_female = 140, outfit_male = 132, addon = 1, storageID = 10015},
--scythe leg
['second nobleman addon'] = {cost = 0, items = {{11229,100}}, outfit_female = 140, outfit_male = 132, addon = 2, storageID = 10016},
--scythe leg
['first oriental addon'] = {cost = 0, items = {{7290,100}}, outfit_female = 150, outfit_male = 146, addon = 1, storageID = 10017},
--shard
['second oriental addon'] = {cost = 0, items = {{7290,100}}, outfit_female = 150, outfit_male = 146, addon = 2, storageID = 10018},
--shard
['first warrior addon'] = {cost = 0, items = {{11221,100}}, outfit_female = 142, outfit_male = 134, addon = 1, storageID = 10019},
-- hellspawn tail
['second warrior addon'] = {cost = 0, items = {{11221,100}}, outfit_female = 142, outfit_male = 134, addon = 2, storageID = 10020},
-- hellspawn tail
['first wizard addon'] = {cost = 0, items = {{2144,100}}, outfit_female = 149, outfit_male = 145, addon = 1, storageID = 10021},
-- black pearl
['second wizard addon'] = {cost = 0, items = {{2144, 100}}, outfit_female = 149, outfit_male = 145, addon = 2, storageID = 10022},
-- black pearl
['first assassin addon'] = {cost = 0, items = {{13027,100}}, outfit_female = 156, outfit_male = 152, addon = 1, storageID = 10023},
-- panther paw
['second assassin addon'] = {cost = 0, items = {{13026,20}}, outfit_female = 156, outfit_male = 152, addon = 2, storageID = 10024},
-- panther head
['first beggar addon'] = {cost = 0, items = {{5948,20}}, outfit_female = 157, outfit_male = 153, addon = 1, storageID = 10025},
-- red dragon leather x20
['second beggar addon'] = {cost = 0, items = {{5948,20}}, outfit_female = 157, outfit_male = 153, addon = 2, storageID = 10026},
-- red dragon leather x20
['first pirate addon'] = {cost = 0, items = {{11219,100}}, outfit_female = 155, outfit_male = 151, addon = 1, storageID = 10027},
-- compass x100
['second pirate addon'] = {cost = 0, items = {{11219,100}}, outfit_female = 155, outfit_male = 151, addon = 2, storageID = 10028},
-- compass x100
['first shaman addon'] = {cost = 0, items = {{6500,50}}, outfit_female = 158, outfit_male = 154, addon = 1, storageID = 10029},
-- demonic essence x50
['second shaman addon'] = {cost = 0, items = {{6500,50}}, outfit_female = 158, outfit_male = 154, addon = 2, storageID = 10030},
-- demonic essence x50
['first norseman addon'] = {cost = 0, items = {{6512,1}}, outfit_female = 252, outfit_male = 251, addon = 1, storageID = 10031},
-- santa doll
['second norseman addon'] = {cost = 0, items = {{2349,20}}, outfit_female = 252, outfit_male = 251, addon = 2, storageID = 10032},
-- blue note 20x
['first nightmare addon'] = {cost = 0, items = {{2344,1}}, outfit_female = 269, outfit_male = 268, addon = 1, storageID = 10033},
-- gemmed lamp quest
['second nightmare addon'] = {cost = 0, items = {{2349,20}}, outfit_female = 269, outfit_male = 268, addon = 2, storageID = 10034},
-- blue note 20x
['first jester addon'] = {cost = 0, items = {{11211,1}}, outfit_female = 270, outfit_male = 273, addon = 1, storageID = 10035},
-- stuffed toad quest
['second jester addon'] = {cost = 0, items = {{2349,20}}, outfit_female = 270, outfit_male = 273, addon = 2, storageID = 10036},
-- blue note
['first brotherhood addon'] = {cost = 0, items = {{10560,50}}, outfit_female = 279, outfit_male = 278, addon = 1, storageID = 10037},
-- turtle thorn
['second brotherhood addon'] = {cost = 0, items = {{10560,50}}, outfit_female = 279, outfit_male = 278, addon = 2, storageID = 10038},
-- turtle thorn
['first demon hunter addon'] = {cost = 0, items = {{13165,1}}, outfit_female = 288, outfit_male = 289, addon = 1, storageID = 10039},
-- demon infant quest
['second demon hunter addon'] = {cost = 0, items = {{13166,1}}, outfit_female = 288, outfit_male = 289, addon = 2, storageID = 10040},
-- demon infant quest
['first yalaharian addon'] = {cost = 0, items = {{13167,1}}, outfit_female = 324, outfit_male = 325, addon = 1, storageID = 10041},
-- demon infant quest
['second yalaharian addon'] = {cost = 0, items = {{13168,1}}, outfit_female = 324, outfit_male = 325, addon = 2, storageID = 10042},
-- demon infant quest
['first newly wed addon'] = {cost = 0, items = {{22532,20}}, outfit_female = 329, outfit_male = 328, addon = 1, storageID = 10043},
-- frazzle tongue
['second newly wed addon'] = {cost = 0, items = {{22533,20}}, outfit_female = 329, outfit_male = 328, addon = 2, storageID = 10044},
-- frazzle skin
['first warmaster addon'] = {cost = 0, items = {{7290,10}}, outfit_female = 336, outfit_male = 335, addon = 1, storageID = 10045},
['second warmaster addon'] = {cost = 0, items = {{7290,10}}, outfit_female = 336, outfit_male = 335, addon = 2, storageID = 10046},
['first wayfarer addon'] = {cost = 0, items = {{7290,10}}, outfit_female = 366, outfit_male = 367, addon = 1, storageID = 10047},
['second wayfarer addon'] = {cost = 0, items = {{7290,10}}, outfit_female = 366, outfit_male = 367, addon = 2, storageID = 10048},
['first afflicted addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 431, outfit_male = 430, addon = 1, storageID = 10049},
['second afflicted addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 431, outfit_male = 430, addon = 2, storageID = 10050},
['first elementalist addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 433, outfit_male = 432, addon = 1, storageID = 10051},
['second elementalist addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 433, outfit_male = 432, addon = 2, storageID = 10052},
['first deepling addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 464, outfit_male = 463, addon = 1, storageID = 10053},
['second deepling addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 464, outfit_male = 463, addon = 2, storageID = 10054},
['first insectoid addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 466, outfit_male = 465, addon = 1, storageID = 10055},
['second insectoid addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 466, outfit_male = 465, addon = 2, storageID = 10056},
['first entrepreneur addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 471, outfit_male = 472, addon = 1, storageID = 10057},
['second entrepreneur addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 471, outfit_male = 472, addon = 2, storageID = 10058},
['first crystal warlord addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 513, outfit_male = 512, addon = 1, storageID = 10059},
['second crystal warlord addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 513, outfit_male = 512, addon = 2, storageID = 10060},
['first soil guardian addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 514, outfit_male = 516, addon = 1, storageID = 10061},
['second soil guardian addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 514, outfit_male = 516, addon = 2, storageID = 10062},
['first demon outfit addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 542, outfit_male = 541, addon = 1, storageID = 10063},
['second demon outfit addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 542, outfit_male = 541, addon = 2, storageID = 10064},
['first cave explorer addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 575, outfit_male = 574, addon = 1, storageID = 10065},
['second cave explorer addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 575, outfit_male = 574, addon = 2, storageID = 10066},
['first dream warden addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 578, outfit_male = 577, addon = 1, storageID = 10067},
['second dream warden addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 578, outfit_male = 577, addon = 2, storageID = 10068},
['first glooth engineer addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 618, outfit_male = 610, addon = 1, storageID = 10069},
['second glooth engineer addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 618, outfit_male = 610, addon = 2, storageID = 10070},
['first jersey addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 620, outfit_male = 619, addon = 1, storageID = 10071},
['second jersey addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 620, outfit_male = 619, addon = 2, storageID = 10072},
['first champion addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 632, outfit_male = 633, addon = 1, storageID = 10073},
['second champion addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 632, outfit_male = 633, addon = 2, storageID = 10074},
['first conjurer addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 635, outfit_male = 634, addon = 1, storageID = 10075},
['second conjurer addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 635, outfit_male = 634, addon = 2, storageID = 10076},
['first beastmaster addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 636, outfit_male = 637, addon = 1, storageID = 10077},
['second beastmaster addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 636, outfit_male = 637, addon = 2, storageID = 10078},
['first chaos acolyte addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 664, outfit_male = 665, addon = 1, storageID = 10079},
['second chaos acolyte addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 664, outfit_male = 665, addon = 2, storageID = 10080},
['first death herald addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 666, outfit_male = 667, addon = 1, storageID = 10081},
['second death herald addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 666, outfit_male = 667, addon = 2, storageID = 10082},
['first ranger addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 683, outfit_male = 684, addon = 1, storageID = 10083},
['second ranger addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 683, outfit_male = 684, addon = 2, storageID = 10084},
['first ceremonial garb addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 694, outfit_male = 695, addon = 1, storageID = 10085},
['second ceremonial garb addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 694, outfit_male = 695, addon = 2, storageID = 10086},
['first puppeteer addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 696, outfit_male = 697, addon = 1, storageID = 10087},
['second puppeteer addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 696, outfit_male = 697, addon = 2, storageID = 10088},
['first spirit caller addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 698, outfit_male = 699, addon = 1, storageID = 10089},
['second spirit caller addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 698, outfit_male = 699, addon = 2, storageID = 10090},
['first evoker addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 724, outfit_male = 725, addon = 1, storageID = 10091},
['second evoker addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 724, outfit_male = 725, addon = 2, storageID = 10092},
['first seawaver addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 732, outfit_male = 733, addon = 1, storageID = 10093},
['second seawaver addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 732, outfit_male = 733, addon = 2, storageID = 10094},
['first recruiter addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 745, outfit_male = 746, addon = 1, storageID = 10095},
['second recruiter addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 745, outfit_male = 746, addon = 2, storageID = 10096},
['first sea dog addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 749, outfit_male = 750, addon = 1, storageID = 10097},
['second sea dog addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 749, outfit_male = 750, addon = 2, storageID = 10098},
['first royal pumpkin addon'] = {cost = 0, items = {{9005,100}}, outfit_female = 759, outfit_male = 760, addon = 1, storageID = 10099},
['second royal pumpkin addon'] = {cost = 0, items = {{9006,100}}, outfit_female = 759, outfit_male = 760, addon = 2, storageID = 10100},
['first rift warrior addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 845, outfit_male = 846, addon = 1, storageID = 10101},
['second rift warrior addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 845, outfit_male = 846, addon = 2, storageID = 10102},
['first winter warden addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 852, outfit_male = 853, addon = 1, storageID = 10103},
['second winter warden addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 852, outfit_male = 853, addon = 2, storageID = 10104},
['first philosopher addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 874, outfit_male = 873, addon = 1, storageID = 10105},
['second philosopher addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 874, outfit_male = 873, addon = 2, storageID = 10106},
['first arena champion addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 885, outfit_male = 884, addon = 1, storageID = 10107},
['second arena champion addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 885, outfit_male = 884, addon = 2, storageID = 10108},
['first lupine warden addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 900, outfit_male = 899, addon = 1, storageID = 10109},
['second lupine warden addon'] = {cost = 0, items = {{2349,10}}, outfit_female = 900, outfit_male = 899, addon = 2, storageID = 10110},


-- next storage 10052    -- next storage 10052    -- next storage 10052    -- next storage 10052    -- next storage 10052    -- next storage 10052    -- next storage 10052 --
}
local o = {'citizen', 'hunter', 'knight', 'mage', 'nobleman', 'summoner', 'warrior', 'barbarian', 'druid', 'wizard', 'oriental', 'pirate', 'assassin', 'beggar', 'shaman', 'norseman', 'nightmare', 'jester', 'brotherhood', 'demon hunter', 'yalaharian', 'newly wed', 'warmaster' , 'wayfarer', 'afflicted' , 'elementalist', 'deepling', 'insectoid', 'entrepreneur', 'crystal warlord', 'royal pumpkin'}
function creatureSayCallback(cid, type, msg)
local talkUser = cid

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if addoninfo[msg] ~= nil then
        if (getPlayerStorageValue(cid, addoninfo[msg].storageID) ~= -1) then
                npcHandler:say('You already have this addon!', cid)
                npcHandler:resetNpc()
        else
        local itemsTable = addoninfo[msg].items
        local items_list = ''
            if table.maxn(itemsTable) > 0 then
                for i = 1, table.maxn(itemsTable) do
                    local item = itemsTable[i]
                    items_list = items_list .. item[2] .. ' ' .. ItemType(item[1]):getName()
                    if i ~= table.maxn(itemsTable) then
                        items_list = items_list .. ', '
                    end
                end
            end
        local text = ''
            if (addoninfo[msg].cost > 0) then
                text = addoninfo[msg].cost .. ' gp'
            elseif table.maxn(addoninfo[msg].items) then
                text = items_list
            elseif (addoninfo[msg].cost > 0) and table.maxn(addoninfo[msg].items) then
                text = items_list .. ' and ' .. addoninfo[msg].cost .. ' gp'
            end
            npcHandler:say('For ' .. msg .. ' you will need ' .. text .. '. Do you have it all with you?', cid)
            rtnt[talkUser] = msg
            talkState[talkUser] = addoninfo[msg].storageID
            return true
        end
    elseif msgcontains(msg, "yes") then
        if (talkState[talkUser] > 10010 and talkState[talkUser] < 10100) then
            local items_number = 0
            if table.maxn(addoninfo[rtnt[talkUser]].items) > 0 then
                for i = 1, table.maxn(addoninfo[rtnt[talkUser]].items) do
                    local item = addoninfo[rtnt[talkUser]].items[i]
                    if (getPlayerItemCount(cid,item[1]) >= item[2]) then
                        items_number = items_number + 1
                    end
                end
            end
            if(getPlayerMoney(cid) >= addoninfo[rtnt[talkUser]].cost) and (items_number == table.maxn(addoninfo[rtnt[talkUser]].items)) then
                doPlayerRemoveMoney(cid, addoninfo[rtnt[talkUser]].cost)
                if table.maxn(addoninfo[rtnt[talkUser]].items) > 0 then
                    for i = 1, table.maxn(addoninfo[rtnt[talkUser]].items) do
                        local item = addoninfo[rtnt[talkUser]].items[i]
                        doPlayerRemoveItem(cid,item[1],item[2])
                    end
                end
                doPlayerAddOutfit(cid, addoninfo[rtnt[talkUser]].outfit_male, addoninfo[rtnt[talkUser]].addon)
                doPlayerAddOutfit(cid, addoninfo[rtnt[talkUser]].outfit_female, addoninfo[rtnt[talkUser]].addon)
                setPlayerStorageValue(cid,addoninfo[rtnt[talkUser]].storageID,1)
                npcHandler:say('Here you are.', cid)
            else
                npcHandler:say('You do not have needed items!', cid)
            end
            rtnt[talkUser] = nil
            talkState[talkUser] = 0
            npcHandler:resetNpc()
            return true
        end
    elseif msgcontains(msg, "addon") then
        npcHandler:say('I can give you addons for {' .. table.concat(o, "}, {") .. '} outfits. Just say first/second NAME addon. For example : "first citizen addon"', cid)
        rtnt[talkUser] = nil
        talkState[talkUser] = 0
        npcHandler:resetNpc()
        return true
    elseif msgcontains(msg, "help") then
        npcHandler:say('To buy the first addon say \'first NAME addon\', for the second addon say \'second NAME addon\'.', cid)
        rtnt[talkUser] = nil
        talkState[talkUser] = 0
        npcHandler:resetNpc()
        return true
    else
        if talkState[talkUser] ~= nil then
            if talkState[talkUser] > 0 then
            npcHandler:say('Come back when you get these items.', cid)
            rtnt[talkUser] = nil
            talkState[talkUser] = 0
            npcHandler:resetNpc()
            return true
            end
        end
    end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())