-- Misc tab
setDefaultTab("Misc")
UI.Label("Dungeons")

dungeonLevels = {
	["normal"] = 1,
	["hard"] = 2,
	["very hard"] = 3,
	["extreme"] = 4,
	["nightmare"] = 5,
}

-- Text field to write dungeon difficulty
addTextEdit("Dungeon Difficulty", storage.dungDiff or "Dungeon Difficulty", function(widget, text) 
    storage.dungDiff = text
end)

autoSoloDungeon = macro(100000000, "AutoSoloDungeon", function() end)
autoTeamDungeon = macro(100000000, "AutoTeamDungeon", function() end)

onModalDialog(function(id, title, message, buttons, enterButton, escapeButton, choices, priority)
	if autoSoloDungeon.enabled then
		if string.find(message, "Dungeon") then
			g_game.answerModalDialog(id, 2) -- 1 means team button, 2 means solo
			modules.game_modaldialog:destroyDialog()
		end
	end
end)

onModalDialog(function(id, title, message, buttons, enterButton, escapeButton, choices, priority)
  if autoTeamDungeon.enabled then
	if string.find(message, "Dungeon") then
		g_game.answerModalDialog(id, 1) -- 1 means team button, 2 means solo
		modules.game_modaldialog:destroyDialog()
		end
	end
end)


onModalDialog(function(id, title, message, buttons, enterButton, escapeButton, choices, priority)
  if autoSoloDungeon.enabled or autoTeamDungeon.enabled then
	if string.find(message, "Select a difficulty level") then
		difficultyNr = dungeonLevels[string.lower(storage.dungDiff)]
		g_game.answerModalDialog(id, difficultyNr)
		modules.game_modaldialog:destroyDialog()
		end
	end
end)

addTextEdit("bossName", storage.bossName or "bossName", function(widget, text) 
storage.bossName = text
end)

stopCaveMacro = macro(3000, "StopCaveIfTarget", function()
	if g_game.isAttacking() then
		local targetName = target():getName()
			print(targetName)
			if string.find(targetName, storage.bossName) ~= nil then
				CaveBot.setOff()
			end
	elseif autoSoloDungeon.isOn() or autoTeamDungeon.isOn() then
			CaveBot.setOn()
    end
end)

UI.Separator()