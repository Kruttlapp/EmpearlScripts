-- Misc tab
setDefaultTab("Misc")
UI.Label("Buffs")

local spell = "garnet essence call" -- 
local ex = 60000 -- delay
local mana = 85 -- mana percent

macro(500, "Garnet essence call", function()
  if manapercent() >= mana then 
     say(spell)
     delay(ex)
  end
end)

macro(500, "Frenetic Swiftness", function()
    if modules.game_cooldown.isCooldownIconActive(83) ~= true and g_game.isAttacking() then
		say('frenetic swiftness')
		end
end)

macro(500, "Fortuna Finesse", function()
    if modules.game_cooldown.isCooldownIconActive(79) ~= true and g_game.isAttacking() then
		say('fortuna finesse')
		end
end)

macro(500, "Fortify Defense", function()
    if modules.game_cooldown.isCooldownIconActive(84) ~= true and g_game.isAttacking() then
		say('fortify defense')
		end
end)

macro(500, "Taunter", function()
    if modules.game_cooldown.isCooldownIconActive(58) ~= true and g_game.isAttacking() then
		say('Ultimate Challenge Call')
		say('Challenge Call')
		end
end)

macro(500, "TaunterNoAttack", function()
		say('Ultimate Challenge Call')
		say('Challenge Call')
end)

UI.Separator()