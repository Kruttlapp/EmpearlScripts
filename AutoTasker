tasks = {
  ["Aria"] = "1",
  ["Apekin"] = "2",
  ["Lupirius"] = "3",
  ["Rhinothornstag"] = "4",
  ["Aurorabat"] = "5",
  ["Earthburrower"] = "6",
  ["Glacierlord"] = "7",
  ["Ceruleanviper"] = "8",
  ["Russetraptor"] = "9",
  ["Bloodcoil"] = "10",
  ["Nightcoil"] = "11",
  ["Amberclaw"] = "12",
  ["Brinecloud"] = "13",
  ["Shadowmourner"] = "14",
  ["Muckmonarch"] = "15",
  ["Olivehawk"] = "16",
  ["Pyroprimate"] = "17",
  ["Azureelectro"] = "18",
  ["Plasmawraith"] = "19",
  ["Slatecreeper"] = "20",
  ["Gladiacore"] = "21",
  ["Magmaforge"] = "22",
  ["Amethystcurve"] = "23",
  ["Quartzcrusher"] = "24",
  ["Granitepaw"] = "25",
  ["Gildedguardian"] = "26",
  ["Hornedmaiden"] = "27",
  ["Phantasmalhaze"] = "28",
  ["Devourer"] = "29",
  ["Boundbeast"] = "30",
  ["Azureclaw"] = "31",
  ["Cobaltbeast"] = "32",
  ["Cyclopticon"] = "33",
  ["Unipedalbeast"] = "34",
  ["Aquamugger"] = "35",
  ["Lavendertroll"] = "36",
  ["Flameintellect"] = "37",
  ["Cobaltvortex"] = "38",
  ["Fuchsiaabyss"] = "39",
  ["Magentavortex"] = "40",
  ["Tinytoughie"] = "41",
  ["Shadowdrake"] = "42",
  ["Scarletdrake"] = "43",
  ["Crimsonreptile"] = "44",
  ["Ongreptile"] = "45",
  ["Magenta Thunderball"] = "46",
  ["Steel Bull Titan"] = "47",
  ["Spellbinder"] = "48",
  ["Eclia"] = "49",
  ["Zephyrion"] = "50",
  ["Lirionne Beast"] = "51",
  ["Xyren"] = "52",
  ["Slate Stone Guardian"] = "53",
  ["Azure Stone Guardian"] = "54",
  ["Crimson Stone Guardian"] = "55",
}

-- function to send commands
function sendOpcode(data)
    local protocolGame = g_game.getProtocolGame()

    if protocolGame then
        protocolGame:sendExtendedJSONOpcode(215, data)
    end
end

-- Text field to write monster name 1
addTextEdit("Monster Name1", storage.monsterName1 or "Monster Name1", function(widget, text) 
    storage.monsterName1 = text
end)

-- Text field to write monster name
addTextEdit("Monster Name2", storage.monsterName2 or "Monster Name2", function(widget, text) 
    storage.monsterName2 = text
end)
    
macro(10000,"AutoTasker_v3",function()
    monsterIds = {tonumber(tasks[storage.monsterName1]),
                tonumber(tasks[storage.monsterName2])}
    
    for i = 1, #monsterIds do
        -- Try to start task
    modules.game_tasks.sendOpcode({
        action = 'start',
        entry = monsterIds[i]
        }
    )
        -- Try to finish task
    modules.game_tasks.sendOpcode({
        action = 'finish',
        entry = monsterIds[i]
        }
    )
    end
end
)
