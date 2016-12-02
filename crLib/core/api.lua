--
-- Crow Lib
-- Pobre/GrumpyShaman - 2016
--
--
-- API
--

local C, S, L = select(2,...):Init()

--
-- Functions
--

function C.OpenAll()
   local List = {
      "Satchel",
      "Blingtron",
      "Treasure",
      "Darkmoon"
   }
   
   for bag = 0, 4 do
      for slot = 1, GetContainerNumSlots(bag) do
         local name = GetContainerItemLink(bag,slot)
         for i, item in pairs(List) do
            if name and string.find (name, item) then
               C_Timer.After(0.2,function() UseContainerItem(bag,slot) end)
            end
         end
      end
   end
end

local function Split(args)
	if args:find("%s") then
		return strsplit(" ", args)
	else
		return args
	end
end

function C.GetAchievementId(hyperlink)
   return string.match(hyperlink,":(%d+):")
end

-- Simplified volume control from chat box
function C.VolumeHandler(cmd)
	local volumeChannel, volume = Split(cmd);
	if volumeChannel == "master" and volume ~= "" then
		SetCVar("Sound_MasterVolume", volume/100);
	elseif volumeChannel == "sfx" and volume ~= "" then
		SetCVar("Sound_SFXVolume", volume/100);
	elseif volumeChannel == "music" and volume ~= "" then
		SetCVar("Sound_MusicVolume", volume/100);
	elseif volumeChannel == "ambience" and volume ~= "" then
		SetCVar("Sound_AmbienceVolume", volume/100);
	elseif volumeChannel == "dialog" and volume ~= "" then
		SetCVar("Sound_DialogVolume", volume/100);
	end
end

