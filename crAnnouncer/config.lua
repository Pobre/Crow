----------------
-- Initialize --
----------------

-- let's get addon namespace and create config object
local R, C, L = select(2, ...):unpack()

-------------
-- Options --
-------------

-- Announcer Object
C["Announcer"] = {
	["Enable"] = true,
	["Spell"] = true,
	["Channel"] = "YELL",
}