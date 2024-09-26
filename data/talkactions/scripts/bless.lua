-- [(  Script edited by: www.ChaitoSoft.com )] --
function onSay(cid, words, param)
if getPlayerBlessing(cid, 1) or getPlayerBlessing(cid, 2) or getPlayerBlessing(cid, 3) or getPlayerBlessing(cid, 4) or getPlayerBlessing(cid, 5) then
doPlayerSendCancel(cid,'You have already have been blessed.')
else
if doPlayerRemoveMoney(cid, 50000) == TRUE then
doPlayerAddBlessing(cid, 1)
doPlayerAddBlessing(cid, 2)
doPlayerAddBlessing(cid, 3)
doPlayerAddBlessing(cid, 4)
doPlayerAddBlessing(cid, 5)
doSendMagicEffect(getPlayerPosition(cid), 28)
doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE, 'You have successfully been blessed.')
else
doPlayerSendCancel(cid, "You need to have 50000gp to buy blessings.")
end
end
return TRUE
end