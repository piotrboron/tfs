local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

	if(msgcontains(msg, 'robe') or msgcontains(msg, 'sorcerer')) then
		selfSay('Do you want me to craft a powerful robe for you? I will need 2 million gold coins and 100x pulverized ore.', cid)
		talkState[talkUser] = 1
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
		if(getPlayerItemCount(cid, 18427) >= 100) then
			if(doPlayerRemoveMoney(cid, 2000000) == TRUE) then
				doPlayerRemoveItem(cid, 18427, 100)
				doPlayerAddItem(cid, 12643)
				selfSay('Here you are.', cid)
			else
				selfSay('Sorry, you don\'t have enough gold.', cid)
			end
		else
			selfSay('Sorry, you don\'t have the items.', cid)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == TRUE) then
		talkState[talkUser] = 0
		selfSay('Ok then. Come back later.', cid)


	elseif(msgcontains(msg, 'armor') or msgcontains(msg, 'knight')) then
		selfSay('Do you want me to craft a powerful armor for you? I will need 2 million gold coins and 100x vein of ore.', cid)
		talkState[talkUser] = 2
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 2) then
		if(getPlayerItemCount(cid, 18429) >= 100) then
			if(doPlayerRemoveMoney(cid, 2000000) == TRUE) then
				doPlayerRemoveItem(cid, 18429, 100)
				doPlayerAddItem(cid, 12642)
				selfSay('Here you are.', cid)
			else
				selfSay('Sorry, you don\'t have enough gold.', cid)
			end
		else
			selfSay('Sorry, you don\'t have the item.', cid)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == TRUE) then
		talkState[talkUser] = 0
		selfSay('Ok then. Come back later.', cid)
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
