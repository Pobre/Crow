-- Let's get addon namespace and config object
local R, C, L = select(2, ...):unpack()

-- object container
local CombatLogListener = CreateFrame("Frame")
local CooldownListener = CreateFrame("Frame")
local playerName = UnitName("player")
local idSpell, nameSpell = nil
CombatLogListener:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

---------------
-- Functions --
---------------

-- Announce interruption
local function interruptSpell(self, event, _, subevent, _, _, sourceName, _, _, _, destName, _, _, spellID, spellName, _, extraSpellID, extraSpellName)
	if not C.Announcer.Enable == true then return end -- do not execute if C.Announcer.Enable is false
	
	if subevent == "SPELL_INTERRUPT" and sourceName == playerName then
		SendChatMessage(L.Chat.Interrupted.." "..destName.." - "..GetSpellLink(extraSpellID), C.Announcer.Channel)
		idSpell = spellID
		nameSpell = spellName
	end
end

local function announceSpell(self, _)
	if not C.Announcer.Spell == true then return end
	if not (idSpell or nameSpell) then return end
	
	local name = GetSpellInfo(idSpell)
	local start, duration, _ = GetSpellCooldown(name)
	
	if(start + duration - GetTime()) == 5 then
		SendChatMessage((start + duration - GetTime()).." "..L.Chat.SecondsFor.." "..GetSpellLink(idSpell), C.Announcer.Channel)
		idSpell, nameSpell = nil
	end
end

-- Register the new script
CombatLogListener:SetScript("OnEvent", interruptSpell)
CooldownListener:SetScript("OnUpdate", announceSpell)
