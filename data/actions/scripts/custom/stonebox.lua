local prize = {
    [1] = {chance = 1, id = 6132, amount = 1 },
    [2] = {chance = 1, id = 2352, amount = 1 },
    [3] = {chance = 1, id = 6391, amount = 1 },
    [4] = {chance = 1, id = 2173, amount = 1 },
    [5] = {chance = 1, id = 2144, amount = 25 },
    [6] = {chance = 1, id = 2143, amount = 25 },
    [7] = {chance = 1, id = 18419, amount = 1 },
    [8] = {chance = 1, id = 18420, amount = 1 },
    [9] = {chance = 1, id = 18421, amount = 1 },
    [10] = {chance = 1, id = 18413, amount = 1 },
    [11] = {chance = 1, id = 18414, amount = 1 },
    [12] = {chance = 1, id = 18415, amount = 1 },
    [13] = {chance = 1, id = 18416, amount = 1 },
    [14] = {chance = 1, id = 18417, amount = 1 },
    [15] = {chance = 1, id = 18418, amount = 1 },
    [16] = {chance = 1, id = 2687, amount = 100 },
    [17] = {chance = 1, id = 2195, amount = 1 },
    [18] = {chance = 1, id = 2187, amount = 1 },
    [19] = {chance = 1, id = 2183, amount = 1 },
    [20] = {chance = 1, id = 9777, amount = 1 },
    [21] = {chance = 5, id = 2160, amount = 1 },
    [22] = {chance = 5, id = 7384, amount = 1 },
    [23] = {chance = 1, id = 23554, amount = 25 },
    [24] = {chance = 9, id = 2268, amount = 25 },
    [25] = {chance = 10, id = 26031, amount = 25 },
    [26] = {chance = 10, id = 26029, amount = 25 },
    [27] = {chance = 10, id = 7443, amount = 1 },
    [28] = {chance = 10, id = 7440, amount = 1 },
    [29] = {chance = 10, id = 7439, amount = 1 },
    [30] = {chance = 10, id = 2381, amount = 1 },
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)

    for i = 1,#prize do local number = math.random() * 100
    if prize[i].chance>100-number then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You have opened a Mythical Box!")
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
        player:addItem(prize[i].id, prize[i].amount)
        item:remove()
        break
    end
    end
    return true
end
