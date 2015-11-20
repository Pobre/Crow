------------------
-- Locale: enUS --
------------------

local R, C, L = select(2, ...):unpack()

-- Since I need at least one language in my addon, let's have english for this.

L["Chat"] = {
	["Interrupted"] = "Interrupted",
	["SecondsFor"] = "seconds for",
}

L["Console"] = {
	["Announcer"] = {
		["Enabled"] = "RTM's Announcer Enabled",
		["Disabled"] = "RTM's Announcer Disabled",
		["SpellEnabled"] = "RTM's Spell Enabled",
		["SpellDisabled"] = "RTM's Spell Disabled",
		["ChannelInstance"] = "RTM's Announcer will tell in instance chat.",
		["ChannelParty"] = "RTM's Announcer will party.",
		["ChannelRaid"] = "RTM's Announcer will raid serious.",
		["ChannelRaidWarning"] = "RTM's Announcer will show who's the leader.",
		["ChannelSay"] = "RTM's Announcer will tell a story.",
		["ChannelYell"] = "RTM's Announcer will yell.",
		["Usage"] = "Usage: /rtma On/Off\n",
		["UsageSpell"] = "Usage: /rtms On/Off",
		["UsageInstance"] = "/rtma i -- Use the instance chat\n",
		["UsageParty"] = "/rtma p -- Use the party chat\n",
		["UsageRaid"] = "/rtma r -- Use the raid chat\n",
		["UsageRaidWarning"] = "/rtma rw -- Use the raid warning chat\n",
		["UsageSay"] = "/rtma s -- Use the \"say\" chat\n",
		["UsageYell"] = "/rtma y -- Use the \"yell\" chat\n",
	},
}
