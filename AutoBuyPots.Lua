potionId = 237
quantity = 500
potionString = '!potionstore medium mana potion'
potionBp = 'blue backpack' -- this the the backpack you have potions in

UI.Label("Potions & Healing")

macro (1000, "AutoBuy Manapots", function()
	for _, container in pairs(getContainers()) do
		-- First checks if you potion backpack is open
		if container:getName() == potionBp then
			-- Then checks if amount of medium mana pots is lower than the set quantity and if so buys
			if itemAmount(potionId) < quantity then
			say(potionString)
			delay(1000)
			end
		end
	end
end)

UI.Separator()