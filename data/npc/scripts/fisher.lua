local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

local voices = { {text ="Fresh worms!"} }
npcHandler:addModule(VoiceModule:new(voices))

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'stuff'}, StdModule.say, {npcHandler = npcHandler, text = 'Just ask me for a {trade} to see my offers.'})
keywordHandler:addAliasKeyword({'wares'})
keywordHandler:addAliasKeyword({'offer'})

shopModule:addSellableItem({'shrimp'}, 2670, 25, 'shrimp')
shopModule:addSellableItem({'fish'}, 2667, 50, 'fish')
shopModule:addSellableItem({'green perch'}, 7159, 100, 'green perch')
shopModule:addSellableItem({'northern pike'}, 2669, 400, 'northern pike')
shopModule:addSellableItem({'rainbow trout'}, 7158, 650, 'rainbow trout')
shopModule:addSellableItem({'sandfish'}, 15405, 800, 'sandfish')
shopModule:addSellableItem({'marlin'}, 7963, 2500, 'marlin')
shopModule:addSellableItem({'red pillow'}, 1687, 2500, 'red pillow')
shopModule:addSellableItem({'blue pillow'}, 1686, 2500, 'blue pillow')
shopModule:addSellableItem({'pirate shirt'}, 6095, 1250, 'pirate shirt')
shopModule:addBuyableItem({'fishing rod'}, 2580, 50, 'fishing rod')
shopModule:addBuyableItem({'mechanical fishing rod'}, 10223, 20000, 'mechanical fishing rod')
shopModule:addBuyableItem({'worm'}, 3976, 200, 'worm')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
