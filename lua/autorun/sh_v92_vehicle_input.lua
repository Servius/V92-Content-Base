
include "v92/aircraft.lua"
include "v92/keyboard.lua"

vnt.hook("vntVehicleAddInputs", "vntVehicleBaseInputs", function()

	vnt.vehicle.addControls( "Driver Controls" , {
	
		Start = { true , KEY_I } ,
		Throttle = { { -1 , 1 } , KEY_W , KEY_S } ,
		Yaw = { { -1 , 1 } , KEY_A , KEY_D } ,
		Pitch = { { -1 , 1 } , KEY_W , KEY_S } ,
		Roll = { { -1 , 1 } , KEY_A , KEY_D } ,
		
	})

	vnt.vehicle.addControls("Common", {
	
		Exit = { true , KEY_E } ,
		FreeView = { true , KEY_SPACE } ,
		--Camera = { true , KEY_LALT } ,
		Hatch = { true , KEY_B } ,
		--Doors = { true , KEY_Z } ,
		
	})

	vnt.vehicle.addControls("Aircraft", {
		
		--Eject = { true , KEY_J } ,
		Flaps = { true , KEY_R } ,
		Hover = { true , KEY_H } ,
		Gear = { true , KEY_G } ,

	})
	
	vnt.vehicle.addControls("Weapons", {
	
		FirePrimary = { true , MOUSE_LEFT } ,
		FireSecondary = { true , MOUSE_RIGHT } ,
		NextPrimaryWeapon = { true , KEY_N } ,
		NextSecondaryWeapon = { true , KEY_M } ,
		CounterMeasures = { true , KEY_F } ,
		--CameraView = { true , KEY_LCONTROL } ,
		--CameraMode = { true , KEY_LSHIFT } ,
		
	})

end)


vnt.hook("JoystickInitialize", "vnt_air_jcon_init", function()
	vnt.vehicle.initialize()
	vnt.vehicle.joyControls = {}
	for i, category in pairs(vnt.vehicle.controls) do
		for name, control in pairs(category.list) do
			vnt.vehicle.joyControls[name] = jcon.register({
				uid = "vnt_air_"..name,
				type = ((control[1] == true) and "digital" or "analog"),
				description = name,
				category = "V92 Vehicles"
			})
		end
	end
	vnt.vehicle.joyInitialized = true
	vnt.vehicle.joyCache = {}
end)



if SERVER then

	util.AddNetworkString("vnt_joyinput_usermessage")

	AddCSLuaFile("autorun/sh_v92_vehicle_input.lua")

	concommand.Add("vnt_air_input", function(p, c, a)
		if IsValid(p) and p:Alive() then
			local v = p:GetVehicle()
			if IsValid(v) then
				local e = v:GetNWEntity("vnt_vehicle")
				if IsValid(e) then
					e:receiveInput(a[1], tonumber(a[2]), p:GetNWInt("vnt_passenger_id"))
				end
			end
		end
	end)


	vnt.hook("Think", "vnt_vehicle_mouseinput", function()
		for _, p in pairs(player.GetAll()) do
			local v = p:GetVehicle()
			if IsValid(v) then
				local e = v:GetNWEntity("vnt_vehicle")
				if IsValid(e) and p.vnt.mouseInput and p:GetInfo("VNT_Vehicle_CL_mouse") == "1" then
					local m = tonumber(p:GetInfo("VNT_Vehicle_CL_sensitivity") or "1")/1.5
					local v = e:WorldToLocal(e:GetPos() + p:GetAimVector())
					local pid = p:GetNWInt("vnt_passenger_id")
					e:receiveInput(
						"Pitch",
						math.Clamp(v.z*m*(p:GetInfo("VNT_Vehicle_CL_mouse_invert_pitch")=="1" and 1 or -1)*10, -1, 1),
						pid
					)
					e:receiveInput(
						p:GetInfo("VNT_Vehicle_CL_mouse_swap")=="0" and "Yaw" or "Roll",
						math.Clamp(v.y*m*(p:GetInfo("VNT_Vehicle_CL_mouse_invert_yawroll")=="1" and 1 or -1)*10, -1, 1),
						pid
					)
				end
			end
		end
	end)


	vnt.hook("Think", "vnt_vehicle_joyinput", function() 
		if vnt.vehicle.joyInitialized then
			for _, p in pairs(player.GetAll()) do
				local v = p:GetVehicle()
				if IsValid(v) then
					local e = p:GetVehicle():GetNWEntity("vnt_vehicle")
					if IsValid(e) then
						for i, category in pairs(vnt.vehicle.controls) do
							for name, control in pairs(category.list) do
								local n = joystick.Get(p, "vnt_air_"..name)
								if n ~= nil and n ~= vnt.vehicle.joyCache[name] then
									vnt.vehicle.joyCache[name] = n
									if n == true or n == false then
										net.Start("vnt_joyinput_usermessage")
										net.WriteString(name)
										net.WriteBit(n) -- write takes boolean, read returns int. fuck yeah.
										net.Send(p)
										n = (n == true and 1 or 0)
									else
										n = n/127.5-1
									end
									e:receiveInput(name, n, p:GetNWInt("vnt_passenger_id"))
								end
							end
						end
					end
				end
			end
		end
	end)


else

	vnt.hook("vntKey", "vnt_cl_aircraft_keyboard", function(key, pressed)
		local v=LocalPlayer():GetVehicle()
		if !IsValid(v) then return end
		local vehicle = v:GetNWEntity("vnt_vehicle")
		if !IsValid(vehicle) or vgui.CursorVisible() then return end
		local k = 0
		for i, category in pairs(vnt.vehicle.controls) do
			for name, k in pairs(category.list) do
				if !k[3] then
					if GetConVar("VNT_Vehicle_CL_key_" .. name):GetInt() == key then
						RunConsoleCommand("vnt_air_input", name, (pressed and "1" or "0"))
						vehicle:receiveInput(name, pressed and 1 or 0, LocalPlayer():GetNWInt("vnt_passenger_id"))
					end
				else
					local command, target
					if GetConVar("VNT_Vehicle_CL_key_" .. name .. "_Inc"):GetInt() == key then
						command = name
						target = (pressed and k[1][2] or 0)
					elseif GetConVar("VNT_Vehicle_CL_key_" .. name .. "_Dec"):GetInt() == key then
						command = name
						target = (pressed and k[1][1] or 0)
					end
					if command and target then
						if GetConVar("VNT_Vehicle_CL_smoothkeyboard"):GetBool() then
							vehicle.inputCache = vehicle.inputCache or {}
							vehicle.inputCache[command] = vehicle.inputCache[command] or {current = 0}
							vehicle.inputCache[command].target = target
						else
							RunConsoleCommand("vnt_air_input", command, tostring(target))
							vehicle:receiveInput(command, target, LocalPlayer():GetNWInt("vnt_passenger_id"))
						end
					end
				end
			end
		end
	end)


	vnt.hook("Think", "vnt_cl_aircraft_smoothkeyboard", function()
		if GetConVar("VNT_Vehicle_CL_smoothkeyboard"):GetBool() then
			local v=LocalPlayer():GetVehicle()
			if !IsValid(v) then return end
			local vehicle = v:GetNWEntity("vnt_vehicle")
			if !IsValid(vehicle) or !vehicle.inputCache then return end
			for command, info in pairs(vehicle.inputCache) do
				if info.current != info.target then
					info.current = math.Approach(info.current, info.target, FrameTime()*3.5)
					RunConsoleCommand("vnt_air_input", command, info.current)
					vehicle:receiveInput(command, info.current, LocalPlayer():GetNWInt("vnt_passenger_id"))
				end
			end
		end
	end)


	net.Receive("vnt_joyinput_usermessage", function(length)
		local vehicle = LocalPlayer():GetVehicle():GetNWEntity("vnt_vehicle")
		if !IsValid(vehicle) then return end
		local s = net.ReadString()
		local b = net.ReadBit()
		vehicle:receiveInput(s, b, LocalPlayer():GetNWInt("vnt_passenger_id"))
	end)

	
	vnt.hook("Initialize", "vnt_vehicle_finishinputs", function(p)
		if !vnt.vehicle.init then
			hook.Run("vntVehicleAddInputs")
			vnt.vehicle.init = true

			for i, category in pairs(vnt.vehicle.controls) do	
				for name, key in pairs(category.list) do
					if not key[3] then
						CreateClientConVar("VNT_Vehicle_CL_key_" .. name, key[2], true, true)
					else
						CreateClientConVar("VNT_Vehicle_CL_key_" .. name .. "_Inc", key[2], true, true)
						CreateClientConVar("VNT_Vehicle_CL_key_" .. name .. "_Dec", key[3], true, true)
					end
				end
			end
		end
	end)

	-- block player use button and menu when in vehicle
	vnt.hook( "PlayerBindPress" , "VNT_Vehicle_CL_exit" , function( p , bind )

		if bind == "+use" then

			local v = p:GetVehicle( )

			if IsValid( v ) then

				local vehicle = p:GetVehicle():GetNWEntity( "vnt_vehicle" )

				if IsValid( vehicle ) then

					return true

				end

			end

		end

	end )


end

