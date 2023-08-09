UI.Separator()
UI.Label("RUNES")

local KEY_ID = 44063 -- Rune seller id
local ITEMS_ID_SMALL = {3172, 3197, 3181, 3165, 3148, 3189} -- SMALL Runes
local ITEMS_ID_SMALL = {3192, 3200, 3153, 3176, 3167, 3183} -- MEDIUM Runes
local ITEMS_ID_LARGE = {3177, 3154, 3202, 3168, 3184, 3193} -- LARGE Runes
local ITEMS_ID_XLARGE = {3203, 3179, 3155, 3195, 3171, 3186} -- X-LARGE Runes

itemSeller = macro(14000, "Small Rune Seller", function()
  if type(ITEMS_ID_SMALL) ~= "table" then return end
  for _, itemId in pairs(ITEMS_ID_SMALL) do
    local item = findItem(itemId)
    if item then
      useWith(KEY_ID, item)
    end
  end
end)

itemSeller = macro(15000, "Medium Rune Seller", function()
  if type(ITEMS_ID_MEDIUM) ~= "table" then return end
  for _, itemId in pairs(ITEMS_ID_MEDIUM) do
    local item = findItem(itemId)
    if item then
      useWith(KEY_ID, item)
    end
  end
end)

itemSeller = macro(113000, "Large Rune Seller", function()
  if type(ITEMS_ID_LARGE) ~= "table" then return end
  for _, itemId in pairs(ITEMS_ID_LARGE) do
    local item = findItem(itemId)
    if item then
      useWith(KEY_ID, item)
    end
  end
end)

itemSeller = macro(13000, "X-Large Rune Seller", function()
  if type(ITEMS_ID_XLARGE) ~= "table" then return end
  for _, itemId in pairs(ITEMS_ID_XLARGE) do
    local item = findItem(itemId)
    if item then
      useWith(KEY_ID, item)
    end
  end
end)




-- 3172 (small def) 3197 (small magic) 3181 (small revi) 3165 (small AS) 3148 (small melee) 3189 (small dist)
