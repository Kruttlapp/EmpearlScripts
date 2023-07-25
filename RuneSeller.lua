local KEY_ID = 44063 -- Rune seller id
local ITEMS_ID = {3177, 3202, 3168, 3154, 3184, 3193} -- Runes
-- 3177 (large def) 3202 (large magic) 3168 (large AS) 3154 (large melee) 3184 (large revi) 3193 (large dist) 
itemSeller = macro(500, "Large Rune Seller", function()
  if type(ITEMS_ID) ~= "table" then return end
  for _, itemId in pairs(ITEMS_ID) do
    local item = findItem(itemId)
    if item then
      useWith(KEY_ID, item)
    end
  end
end)
