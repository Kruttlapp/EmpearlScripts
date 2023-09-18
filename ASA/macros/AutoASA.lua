-- Misc tab
setDefaultTab("Misc")

UI.Label("ASA Tower")
floorsASA ={
  ["0"] = "ASA_16",
  ["1"] = "ASA_15",
  ["2"] = "ASA_14",
  ["3"] = "ASA_13",
  ["4"] = "ASA_12",
  ["5"] = "ASA_11",
  ["6"] = "ASA_10",
  ["7"] = "ASA_9",
  ["8"] = "ASA_8",
  ["9"] = "ASA_7",
  ["10"] = "ASA_6",
  ["11"] = "ASA_5",
  ["12"] = "ASA_4",
  ["13"] = "ASA_3",
  ["14"] = "ASA_2",
  ["15"] = "ASA_1"
}

macro(2500, "AutoASA_1", function()
if isInPz() then return end
  say("!asa skip")
cavebotWps = "I1_"..floorsASA[tostring(posz())]
CaveBot.setCurrentProfile(cavebotWps)
end)

macro(2500, "AutoASA_2", function()
if isInPz() then return end
  say("!asa skip")
cavebotWps = "I2_"..floorsASA[tostring(posz())]
CaveBot.setCurrentProfile(cavebotWps)
end)

macro(2500, "AutoASA_3", function()
if isInPz() then return end
  say("!asa skip")
cavebotWps = "I3_"..floorsASA[tostring(posz())]
CaveBot.setCurrentProfile(cavebotWps)
end)

macro(2500, "AutoASA_4", function()
if isInPz() then return end
  say("!asa skip")
cavebotWps = "I4_"..floorsASA[tostring(posz())]
CaveBot.setCurrentProfile(cavebotWps)
end)

macro(2500, "AutoASA_5", function()
if isInPz() then return end
  say("!asa skip")
cavebotWps = "I5_"..floorsASA[tostring(posz())]
CaveBot.setCurrentProfile(cavebotWps)
end)

macro(2500, "AutoASA_6", function()
if isInPz() then return end
  say("!asa skip")
cavebotWps = "I6_"..floorsASA[tostring(posz())]
CaveBot.setCurrentProfile(cavebotWps)
end)





UI.Separator()
