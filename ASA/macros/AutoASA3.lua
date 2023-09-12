floorsASA3 ={
  ["0"] = "I3_ASA_16",
  ["1"] = "I3_ASA_15",
  ["2"] = "I3_ASA_14",
  ["3"] = "I3_ASA_13",
  ["4"] = "I3_ASA_12",
  ["5"] = "I3_ASA_11",
  ["6"] = "I3_ASA_10",
  ["7"] = "I3_ASA_9",
  ["8"] = "I3_ASA_8",
  ["9"] = "I3_ASA_7",
  ["10"] = "I3_ASA_6",
  ["11"] = "I3_ASA_5",
  ["12"] = "I3_ASA_4",
  ["13"] = "I3_ASA_3",
  ["14"] = "I3_ASA_2",
  ["15"] = "I3_ASA_1"
}

macro(2500, "AutoASA_3", function()
cavebotWps = floorsASA3[tostring(posz())]
CaveBot.setCurrentProfile(cavebotWps)
end)

-- z 0 = ASA 16
-- z 1 = ASA 15


