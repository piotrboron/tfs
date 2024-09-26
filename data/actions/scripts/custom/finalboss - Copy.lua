local truepos = {x=1006, y=685, z=6}

function onUse(cid, item, fromPosition, itemEx, toPosition)
if isPlayerPzLocked(cid) == FALSE then
doTeleportThing(cid, truepos, FALSE)
doCreatureSay(cid, "You cannot teleport while pz locked!", 19)
else
doTeleportThing(cid, truepos, TRUE)
player:sendTextMessage(MESSAGE_STATUS_SMALL, "Teleported, be careful!")
end
return true
end