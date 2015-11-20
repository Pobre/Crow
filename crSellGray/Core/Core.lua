-- Let's get addon namespace and config object
local R, C = ...

local MerchantListener = CreateFrame("Frame")
MerchantListener:RegisterEvent("MERCHANT_SHOW")

local function sellGray()
	for bag = 0, 4 do
		for slot = 1, GetContainerNumSlots(bag) do
			local name = GetContainerItemLink(bag,slot)
			if name and string.find (name,"ff9d9d9d") then
				DEFAULT_CHAT_FRAME:AddMessage("Selling "..name)
				UseContainerItem(bag,slot)
			end
		end
	end
end

MerchantListener:SetScript("OnEvent", sellGray)
