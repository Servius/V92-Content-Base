--[[
local VEHICLE = FindMetaTable("Vehicle")

local origSet = VEHICLE.SetThirdPersonMode

function VEHICLE:SetThirdPersonMode(b)
	MsgN("autorun/server/sh_v92_vehicle_base.lua [7]: " .. b)
	self:SetNWBool("vnt_thirdperson", b)
	return origSet(self, b)
end
]]