------------------------------------
-- Initiation of Announcer engine --
------------------------------------

--[[
	This code is part of Tukui (Engine.lua), very ingenious one. So this part goes for him.
	So I thank him for this.
]]--

local R, Engine = ...

Engine[1] = {}
Engine[2] = {}
Engine[3] = {}
Engine[4] = {}

function Engine:unpack()
	return self[1], self[2], self[3], self[4]
end
