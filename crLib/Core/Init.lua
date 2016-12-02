--
-- Crow Lib
-- Pobre/GrumpyShaman - 2016
--
--
-- Initialization of Crow Lib
--
--
-- Shameless, but authorized, copy of Tukui part code for Table content.
-- This way I can manage easily between AddOns their content and configurations.
-- Crow Lib is the core of my AddOns, it is the "bones" of it.
--

local AddOn, Namespace = ...

Namespace[1] = {}
Namespace[2] = {}
Namespace[3] = {}
Namespace[4] = {}

Crow = Namespace

function Crow:Init()
	return self[1], self[2], self[3], self[4]
end

Crow[1].Version = GetAddOnMetadata(AddOn, "Version")

