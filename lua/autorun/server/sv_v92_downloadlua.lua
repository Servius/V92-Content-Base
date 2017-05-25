
------------------------------------------------------
--	Lua Auto-Downloader								--
--	Original Code @ WAC								--
--	V92 Assimilation								--
------------------------------------------------------

--	Shared

for _, file in pairs(file.Find("autorun/sh_v92_*.lua", "LUA")) do

	AddCSLuaFile("autorun/"..file)
	
end

--	Client

for _, file in pairs(file.Find("autorun/client/cl_v92_*.lua", "LUA")) do

	AddCSLuaFile("autorun/client/"..file)
	
end

--	Server

for _, file in pairs(file.Find("autorun/server/sv_v92_*.lua", "LUA")) do

	AddCSLuaFile("autorun/server/"..file)
	
end

--	Entities

for _, file in pairs(file.Find("entities/v92_*.lua", "LUA")) do

	AddCSLuaFile("entities/"..file)
	
end

--	Weapons

for _, file in pairs(file.Find("weapons/v92_*.lua", "LUA")) do

	AddCSLuaFile("weapons/"..file)
	
end

--	Internal

for _, file in pairs(file.Find("v92/*.lua", "LUA")) do

	AddCSLuaFile("v92/"..file)
	
end
