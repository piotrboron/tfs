local globalevent = GlobalEvent("positionandtext")

local effects = {
    {position = Position(1000, 1000, 7), text = 'War Zone!', effect = CONST_ME_BATS, textcolor = 180},
   --{position = Position(32366, 32235, 7), text = 'Safe!', effect = CONST_ME_BATS, textcolor = 215},

}

function globalevent.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                Game.sendAnimatedText(settings.text, settings.position, settings.textcolor)
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
            if settings.effect2 then
                settings.position:sendMagicEffect(settings.effect2)
            end
        end
    end
    return true
end

globalevent:interval(1000)
globalevent:register()