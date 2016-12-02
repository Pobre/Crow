--
-- Crow Lib
-- Pobre/GrumpyShaman - 2016
--
--
-- Slash Commands
--

local C, S = select(2,...):Init()

-- Slash List
SLASH_CR_RELOADUI1 = "/rl"
SLASH_CR_RELOADUI2 = "/reload"
SLASH_CR_RELOADUI3 = "/reloadui"
SLASH_CR_VOLUME1 = "/volume"
SLASH_CR_VOLUME2 = "/vol"
SLASH_CR_VOLUME3 = "/vl"
SLASH_CR_OPENALL1 = "/openall"


-- Slash Handlers
SlashCmdList["CR_RELOADUI"] = ReloadUI
SlashCmdList["CR_VOLUME"] = C.VolumeHandler
SlashCmdList["CR_OPENALL"] = C.OpenAll
