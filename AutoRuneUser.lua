if type(storage.runesToUse) ~= "table" then
  storage.runesToUse = {}
end

macro(50, "Use Runes", function()
  if not storage.runesToUse[1] then return end
  
  for i, item in pairs(storage.runesToUse) do
    local runeUseItem = findItem(item.id)
    if runeUseItem then
        use(runeUseItem)
    end
  end
end)

local runesToUseContainer = UI.Container(function(widget, items)
  storage.runesToUse = items
end, true)

runesToUseContainer:setHeight(70)
runesToUseContainer:setItems(storage.runesToUse)
UI.Separator()