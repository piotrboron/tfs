local prize = {
    [1] = {chance = 5, id = 2352, amount = 1 },
    [2] = {chance = 5, id = 6132, amount = 1 },
    [3] = {chance = 10, id = 2491, amount = 1 },
    [4] = {chance = 20, id = 2488, amount = 1 },
    [5] = {chance = 60, id = 2487, amount = 1 },
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)

    for i = 1,#prize do local number = math.random() * 100
    if prize[i].chance>100-number then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You have opened a mystery box!")
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
        player:addItem(prize[i].id, prize[i].amount)
        item:remove()
        break
    end
    end
    return true
end