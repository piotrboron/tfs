-- Simple teleport scroll script
local testAction = Action() -- this is our header, the first thing we have to write (except for configuration tables and such)

local config = {
    destination = {x=1006, y=685, z=6}, -- Change your destination here.
}

function testAction.onUse(cid, item, fromPosition, target, toPosition, isHotkey) -- now we can design the action itself
    if(isPlayerPzLocked(cid) == false) then -- check if player is in a fight
        doTeleportThing(cid, config.destination) -- send player to position above at destination
        doPlayerSendTextMessage(cid, 19, "You have successfully teleported! Prepare to face the Mythical Dragon.") -- send scroll use message
    else
        doPlayerSendTextMessage(cid, 22, "You cant use this item while in battle.") -- send cancel msg 
    end
    return true
end

testAction:id(21243) -- now its taking an item as id instead of an action id.
testAction:register() -- this is our footer, it has to be the last function executed