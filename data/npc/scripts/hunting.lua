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

	if(msgcontains(msg, 'frazzle') or msgcontains(msg, 'tongues')) then
		selfSay('Do you have 50 frazzle tongues and 1 gold coin on you?', cid)
		talkState[talkUser] = 1
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
		if(getPlayerItemCount(cid, 22532) >= 50) then
			if(doPlayerRemoveMoney(cid, 1) == TRUE) then
				doPlayerRemoveItem(cid, 22532, 50)
				doPlayerAddItem(cid, 2160,150)
				selfSay('Here you are. 150 crystal coins for you.', cid)
			else
				selfSay('Sorry, you don\'t have enough gold.', cid)
			end
		else
			selfSay('Sorry, you don\'t have enough materials.', cid)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == TRUE) then
		talkState[talkUser] = 0
		selfSay('Ok then.', cid)


	elseif(msgcontains(msg, 'demon') or msgcontains(msg, 'horns')) then
		selfSay('Do you have 50 demon horns and 1 gold coin on you?', cid)
		talkState[talkUser] = 2
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 2) then
		if(getPlayerItemCount(cid, 5954) >= 50) then
			if(doPlayerRemoveMoney(cid, 1) == TRUE) then
				doPlayerRemoveItem(cid, 5954, 50)
				doPlayerAddItem(cid, 2160,150)
				selfSay('Here you are. 150 crystal coins for you.', cid)
			else
				selfSay('Sorry, you don\'t have enough gold.', cid)
			end
		else
			selfSay('Sorry, you don\'t have enough materials.', cid)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser]) == TRUE) then
		talkState[talkUser] = 0
		selfSay('Ok then.', cid)
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
