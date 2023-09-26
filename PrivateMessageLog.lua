local height = 50
local widget = setupUI([[
Panel
  id: msgPanel
  height: 400
  width: 200
]], g_ui.getRootWidget())

onTalk(function(name, level, mode, text, channelId, pos)
    if (mode ~= 4) then return end
    local msgLabel = g_ui.loadUIFromString([[
Label
  color: #5ff7f7
  background-color: black
  opacity: 0.87
]], widget)
    msgLabel:setText(name .." ["..level.. "]: " .. text)
    msgLabel:setPosition({y = height, x = 10})
    if height > 210 then
        for msgIndex, message in ipairs(widget:getChildren()) do
            message:setPosition({y = message:getPosition().y - 13, x = 10})
            if (msgIndex == 1) then message:destroy() end
        end
    else
        height = height + 13
    end
end)