local runeSellerId = 44062

UI.Label("Runes")
if type(storage.runesToSell) ~= "table" then
  storage.runesToSell = {}
end

macro(500, "Sell Runes", function()
  if not storage.runesToSell[1] then return end
  
  for i, item in pairs(storage.runesToSell) do
    local actualItem = findItem(item.id)
    if actualItem then
        useWith(runeSellerId, actualItem)
    end
  end
end)

local runesToSellContainer = UI.Container(function(widget, items)
  storage.runesToSell = items
end, true)

runesToSellContainer:setHeight(70)
runesToSellContainer:setItems(storage.runesToSell)


UI.Separator()