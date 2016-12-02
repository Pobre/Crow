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
		["Enabled"] = "Crow's Announcer Ativado",
		["Disabled"] = "Crow's Announcer Desativado",
		["SpellEnabled"] = "Crow's Spell Ativado",
		["SpellDisabled"] = "Crow's Spell Desativado",
		["ChannelInstance"] = "Crow's Announcer usar� a instance chat.",
		["ChannelParty"] = "Crow's Announcer usar� o party chat.",
		["ChannelRaid"] = "Crow's Announcer vai raidar.",
		["ChannelRaidWarning"] = "Crow's Announcer vai mostrar quem � que manda.",
		["ChannelSay"] = "Crow's Announcer usar� o chat padr�o.",
		["ChannelYell"] = "Crow's Announcer vai gritar.",
		["Usage"] = "Uso: /cra On/Off\n",
		["UsageSpell"] = "Uso: /crs On/Off",
		["UsageInstance"] = "/cra i -- Usa instance chat\n",
		["UsageParty"] = "/cra p -- Usa party chat\n",
		["UsageRaid"] = "/cra r -- Usa raid chat\n",
		["UsageRaidWarning"] = "/cra rw -- Usa raid warning chat\n",
		["UsageSay"] = "/cra s -- Usa chat padr�o\n",
		["UsageYell"] = "/cra y -- Usa chat de grito\n",
	},
}
