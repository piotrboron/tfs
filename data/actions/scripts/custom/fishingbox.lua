local prize = {
    [1] = {chance = 5, id = 2173, amount = 1 },
    [2] = {chance = 1, id = 2160, amount = 1 },
    [3] = {chance = 5, id = 2644, amount = 1 },
    [4] = {chance = 9, id = 1685, amount = 1 },
    [5] = {chance = 5, id = 10223, amount = 1 },
    [6] = {chance = 5, id = 13546, amount = 1 },
    [7] = {chance = 5, id = 13876, amount = 1 },
    [8] = {chance = 5, id = 2144, amount = 1 },
    [9] = {chance = 5, id = 2143, amount = 1 },
    [10] = {chance = 5, id = 18416, amount = 3 },
    [11] = {chance = 5, id = 18417, amount = 3 },
    [12] = {chance = 5, id = 18418, amount = 3 },
    [13] = {chance = 5, id = 1686, amount = 1 },
    [14] = {chance = 5, id = 1687, amount = 1 },
    [15] = {chance = 5, id = 9005, amount = 10 },
    [16] = {chance = 5, id = 23539, amount = 1 },
    [17] = {chance = 5, id = 6095, amount = 1 },
    [18] = {chance = 5, id = 2129, amount = 1 },
    [19] = {chance = 5, id = 7158, amount = 1 },
    [20] = {chance = 5, id = 7159, amount = 1 },
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