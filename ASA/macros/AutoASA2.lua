floorsASA2 ={
  ["0"] = "I2_ASA_16",
  ["1"] = "I2_ASA_15",
  ["2"] = "I2_ASA_14",
  ["3"] = "I2_ASA_13",
  ["4"] = "I2_ASA_12",
  ["5"] = "I2_ASA_11",
  ["6"] = "I2_ASA_10",
  ["7"] = "I2_ASA_9",
  ["8"] = "I2_ASA_8",
  ["9"] = "I2_ASA_7",
  ["10"] = "I2_ASA_6",
  ["11"] = "I2_ASA_5",
  ["12"] = "I2_ASA_4",
  ["13"] = "I2_ASA_3",
  ["14"] = "I2_ASA_2",
  ["15"] = "I2_ASA_1"
}

macro(2500, "AutoASA_2", function()
cavebotWps = floorsASA2[tostring(posz())]
CaveBot.setCurrentProfile(cavebotWps)
end)

-- z 0 = ASA 16
-- z 1 = ASA 15


