------------------
-- Locale: ptBR --
------------------

local R, C, L = select(2, ...):unpack()

-- Check Locale
if(GetLocale() ~= "ptBR") then
	return
end

L["Chat"] = {
	["Interrupted"] = "Interrompi",
	["SecondsFor"] = "segundos para",
}

L["Console"] = {
	["Announcer"] = {
		["Enabled"] = "RTM's Announcer Ativado",
		["Disabled"] = "RTM's Announcer Desativado",
		["SpellEnabled"] = "RTM's Spell Ativado",
		["SpellDisabled"] = "RTM's Spell Desativado",
		["ChannelInstance"] = "RTM's Announcer usará a instance chat.",
		["ChannelParty"] = "RTM's Announcer usará o party chat.",
		["ChannelRaid"] = "RTM's Announcer vai raidar.",
		["ChannelRaidWarning"] = "RTM's Announcer vai mostrar quem é que manda.",
		["ChannelSay"] = "RTM's Announcer usará o chat padrão.",
		["ChannelYell"] = "RTM's Announcer vai gritar.",
		["Usage"] = "Uso: /rtma On/Off\n",
		["UsageSpell"] = "Uso: /rtms On/Off",
		["UsageInstance"] = "/rtma i -- Usa instance chat\n",
		["UsageParty"] = "/rtma p -- Usa party chat\n",
		["UsageRaid"] = "/rtma r -- Usa raid chat\n",
		["UsageRaidWarning"] = "/rtma rw -- Usa raid warning chat\n",
		["UsageSay"] = "/rtma s -- Usa chat padrão\n",
		["UsageYell"] = "/rtma y -- Usa chat de grito\n",
	},
}