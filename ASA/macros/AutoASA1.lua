floorsASA1 ={
  ["0"] = "ASA_16_I1",
  ["1"] = "ASA_15_I1",
  ["2"] = "ASA_14_I1",
  ["3"] = "ASA_13_I1",
  ["4"] = "ASA_12_I1",
  ["5"] = "ASA_11_I1",
  ["6"] = "ASA_10_I1",
  ["7"] = "ASA_9_I1",
  ["8"] = "ASA_8_I1",
  ["9"] = "ASA_7_I1",
  ["10"] = "ASA_6_I1",
  ["11"] = "ASA_5_I1",
  ["12"] = "ASA_4_I1",
  ["13"] = "ASA_3_I1",
  ["14"] = "ASA_2_I1",
  ["15"] = "ASA_1_I1"
}

macro(2500, "AutoASA_1", function()

cavebotWps = floorsASA1[tostring(posz())]
CaveBot.setCurrentProfile(cavebotWps)
end)

-- z 0 = ASA 16
-- z 1 = ASA 15


