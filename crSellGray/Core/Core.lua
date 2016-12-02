--
-- Crow Lib
-- Pobre - 2016
--
--
-- SellGray
--

local MerchantListener = CreateFrame("Frame","SellGrayListener")
MerchantListener:RegisterEvent("MERCHANT_SHOW")

local function FormatMoney(money)
	local msg = ""
	local gold = floor(money / (COPPER_PER_SILVER * SILVER_PER_GOLD));
	local silver = floor((money - (gold * COPPER_PER_SILVER * SILVER_PER_GOLD)) / COPPER_PER_SILVER);
	local copper = mod(money, COPPER_PER_SILVER);
	if gold > 0 then
		msg = gold.."|cffffd70ag|r"
	end
	if silver > 0 or gold > 0 then
		msg = msg..silver.."|cffc7c7cfs|r"
	end
	msg = msg..copper.."|cffeda55fc|r"
	return msg
end

local function IsIgnored(name)
	local IgnoredList = {
		"A Steamy Romance",
		"Starlight Rosedust",
	}

	for index, item in ipairs(IgnoredList) do
		if string.find(name, item) then
			return true
		end
	end

	return false
end

local function SellGray()

	local CurrentMoney = 0
	for bag = 0, 4 do
		for slot = 1, GetContainerNumSlots(bag) do
			local name = GetContainerItemLink(bag,slot)
			if name and string.find (name,"ff9d9d9d") and not IsIgnored(name) then
				Profit = select(11,GetItemInfo(name))
				C_Timer.After(0.2,function() UseContainerItem(bag,slot) end)
				DEFAULT_CHAT_FRAME:AddMessage("Selling "..name.." for "..FormatMoney(Profit))
			end
		end
	end
end

MerchantListener:SetScript("OnEvent", SellGray)
