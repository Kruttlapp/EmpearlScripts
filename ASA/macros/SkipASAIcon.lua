--ASA SKIP
asaSkipMacro = macro(3000, "asaSkipMacro" ,function()
	if isInPz() then return end
	say("!asa skip")
end)

local asaSkipIcon = addIcon("asaSkipI",{text="ASA Skip",switchable=false,moveable=true}, function()
	if asaSkipMacro.isOff() then
		asaSkipMacro.setOn()
	else
	asaSkipMacro.setOff()
	end
end)
asaSkipIcon:setSize({height=30,width=50})
asaSkipIcon.text:setFont('verdana-11px-rounded')

-- ICON STATE updater
macro(100,function()
  if asaSkipMacro.isOn() then
    asaSkipIcon.text:setColoredText({"ASA Skip\n","white","ON","green"})
  else
    asaSkipIcon.text:setColoredText({"ASA Skip\n","white","OFF","red"})
  end
end)