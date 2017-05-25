
include "v92/aircraft.lua"

--AddCSLuaFile("autorun/client/cl_v92_vehicle.lua");
--AddCSLuaFile("autorun/client/cl_v92_vehicle_dev.lua");


vnt.vehicle.cvars = {
	startSpeed = CreateConVar("VNT_Vehicle_StartSpeed", 1, {FCVAR_ARCHIVE}),
	nodamage = CreateConVar("VNT_Vehicle_NoHullDamage", 0, {FCVAR_ARCHIVE}),
}

if not game.SinglePlayer() then
	util.AddNetworkString("VNT_Admin_Setting")
	net.Receive("VNT_Admin_Setting", function(len,pl)
		if pl:IsAdmin() or pl:IsSuperAdmin() then
			local name=net.ReadString()
			local found=false
			for k,v in pairs(vnt.vehicle.cvars) do
				if v:GetName()==name then
					found=true
					break
				end
			end
			if found then
				local val=net.ReadFloat()
				RunConsoleCommand(name,val)
			end
		end
	end)
end


vnt.hook("SetPlayerAnimation", "VNT_CL_VehicleSeatAnimation", function(pl, anim)
	 if pl:InVehicle() then
	 local v = pl:GetVehicle()
		if string.find(v:GetModel(), "models/nova/airboat_seat") and v:GetNWEntity("vnt_vehicle"):IsValid() then 
			local seq = pl:LookupSequence("drive_airboat")	
			pl:SetPlaybackRate(1.0)
			pl:ResetSequence(seq)
			pl:SetCycle(0)
			return true
		end
	end
end)


vnt.hook("PlayerLeaveVehicle", "VNT_Vehicle_ExitedVehicle", function(player, vehicle)
	if IsValid(vehicle.vnt_vehicle) then
		vehicle.vnt_vehicle:playerExit(player, vehicle)
	end
end)

