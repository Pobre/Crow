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
		["Enabled"] = "Crow's Announcer Enabled",
		["Disabled"] = "Crow's Announcer Disabled",
		["SpellEnabled"] = "Crow's Spell Enabled",
		["SpellDisabled"] = "Crow's Spell Disabled",
		["ChannelInstance"] = "Crow's Announcer will tell in instance chat.",
		["ChannelParty"] = "Crow's Announcer will party.",
		["ChannelRaid"] = "Crow's Announcer will raid serious.",
		["ChannelRaidWarning"] = "Crow's Announcer will show who's the leader.",
		["ChannelSay"] = "Crow's Announcer will tell a story.",
		["ChannelYell"] = "Crow's Announcer will yell.",
		["Usage"] = "Usage: /cra On/Off\n",
		["UsageSpell"] = "Usage: /crs On/Off",
		["UsageInstance"] = "/cra i -- Use the instance chat\n",
		["UsageParty"] = "/cra p -- Use the party chat\n",
		["UsageRaid"] = "/cra r -- Use the raid chat\n",
		["UsageRaidWarning"] = "/cra rw -- Use the raid warning chat\n",
		["UsageSay"] = "/cra s -- Use the \"say\" chat\n",
		["UsageYell"] = "/cra y -- Use the \"yell\" chat\n",
	},
}
