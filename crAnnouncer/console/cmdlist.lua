-- Let's get addon namespace and config object
local R, C, L = select(2, ...):unpack()

---------------------------------
-- Announcer's Command Handler --
---------------------------------

local function handlerAnnouncer(msg, editbox)
	if msg == "on" then
		print(L.Console.Announcer.Enabled)
		C.Announcer.Enable = true
	elseif msg == "off" then
		print(L.Console.Announcer.Disabled)
		C.Announcer.Enable = false
	elseif msg == "i" then
		print(L.Console.Announcer.ChannelInstance)
		C.Announcer.Channel = "INSTANCE_CHAT"
	elseif msg == "p" then
		print(L.Console.Announcer.ChannelParty)
		C.Announcer.Channel = "PARTY"
	elseif msg == "r" then
		print(L.Console.Announcer.ChannelRaid)
		C.Announcer.Channel = "RAID"
	elseif msg == "rw" then
		print(L.Console.Announcer.ChannelRaidWarning)
		C.Announcer.Channel = "RAID_WARNING"
	elseif msg == "s" then
		print(L.Console.Announcer.ChannelSay)
		C.Announcer.Channel = "SAY"
	elseif msg == "y" then
		print(L.Console.Announcer.ChannelYell)
		C.Announcer.Channel = "YELL"
	else
		print(L.Console.Announcer.Usage)
		print(L.Console.Announcer.UsageInstance)
		print(L.Console.Announcer.UsageParty)
		print(L.Console.Announcer.UsageRaid)
		print(L.Console.Announcer.UsageRaidWarning)
		print(L.Console.Announcer.UsageSay)
		print(L.Console.Announcer.UsageYell)
	end
end

local function handlerSpell(msg, editbox)
	if msg == "on" then
		print(L.Console.Announcer.SpellEnabled)
		C.Announcer.Spell = true
	elseif msg == "off" then
		print(L.Console.Announcer.SpellDisabled)
		C.Announcer.Spell = false
	else
		print(L.Console.Announcer.UsageSpell)
	end
end

-------------------------------
-- Announcer's Command List --
-------------------------------

SLASH_RTM_A1 = "/rtma"
SlashCmdList.RTM_A = handlerAnnouncer

SLASH_RTM_S1 = "/rtms"
SlashCmdList.RTM_S = handlerSpell
