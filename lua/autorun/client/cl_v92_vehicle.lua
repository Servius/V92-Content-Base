

include "v92/aircraft.lua"

CreateClientConVar("VNT_Vehicle_CL_sensitivity", 1, true, true)
CreateClientConVar("VNT_Vehicle_CL_mouse", 1, true, true)
CreateClientConVar("VNT_Vehicle_CL_mouse_swap", 1, true, true)
CreateClientConVar("VNT_Vehicle_CL_mouse_invert_pitch", 0, true, true)
CreateClientConVar("VNT_Vehicle_CL_mouse_invert_yawroll", 0, true, true)
CreateClientConVar("VNT_Vehicle_CL_smoothview", 1, true, true)
CreateClientConVar("VNT_Vehicle_CL_shakeview", 1, true, true)
CreateClientConVar("VNT_Vehicle_CL_smoothkeyboard", 1, true, true)
CreateClientConVar("VNT_Vehicle_CL_arcade", 0, true, true)
CreateClientConVar("VNT_Vehicle_CL_volume", 1, true, true)


if not game.SinglePlayer() then
	CreateClientConVar("VNT_Vehicle_StartSpeed", 1, false)
	CreateClientConVar("VNT_Vehicle_NoHullDamage", 0, false)
	
	local function onchange( name, oldval, val )
		if LocalPlayer():IsAdmin() or LocalPlayer():IsSuperAdmin() then
			net.Start("VNT_Admin_Setting")
				net.WriteString(name)
				net.WriteFloat(val)
			net.SendToServer()
		end
	end
	cvars.AddChangeCallback("VNT_Vehicle_StartSpeed",onchange)
	cvars.AddChangeCallback("VNT_Vehicle_NoHullDamage",onchange)
end


surface.CreateFont("vnt_heli_big", {
	font = "monospace",
	size = 32
})

surface.CreateFont("vnt_heli_small", {
	font = "monospace",
	size = 22
})


vnt.hook("ShouldDrawLocalPlayer", "vnt_air_showplayerthirdperson", function()
	local v = LocalPlayer():GetVehicle()
	if IsValid(v) and IsValid(v:GetNWEntity("vnt_vehicle")) then
		return v:GetThirdPersonMode()
	end
end)


vnt.hook("CalcView", "vnt_vehicle_calcview", function(p, pos, ang, fov)

	p.vnt = p.vnt or {}
	p.vnt.air = p.vnt.air or {}

	local aircraft = p.vnt.air.vehicle --p:GetVehicle():GetNWEntity("vnt_vehicle")
	if !IsValid(aircraft) then
		local v=p:GetVehicle()
		if IsValid(v) and IsValid(v:GetNWEntity("vnt_vehicle")) then
			aircraft = p:GetVehicle():GetNWEntity("vnt_vehicle")
			aircraft.viewPos = {
				origin = p.vnt.air.lastView.origin - pos,
				angles = p.vnt.air.lastView.angles - ang,
				fov = fov
			}
			aircraft:onEnter(p)
		else
			p.vnt.air.vehicle = nil
			p.vnt.air.lastView = {origin=pos, angles=ang, fov=fov}
			return
		end
	end
	
	local i = p:GetNWInt("vnt_passenger_id")
	if p.vnt.air.vehicle and GetViewEntity() == p and aircraft.Seats then
		return aircraft:viewCalc((i==0 and 1 or i), p, pos, ang, 75)
	end

end)

vnt.hook("RenderScreenspaceEffects", "vnt_vehicle_weaponcam",function()
	local p=LocalPlayer()
	if !IsValid(p) then return end
	local v=p:GetVehicle()
	if !IsValid(v) then return end
	local e=v:GetNWEntity("vnt_vehicle")
	if IsValid(e) then
		e:DrawScreenSpaceEffects(p:GetNWInt("vnt_passenger_id"),p)
	end
end)

vnt.hook("HUDPaint", "vnt_vehicle_weaponhud", function()
	local p=LocalPlayer()
	if !IsValid(p) then return end
	local v=p:GetVehicle()
	if !IsValid(v) then return end
	local e=v:GetNWEntity("vnt_vehicle")
	if IsValid(e) then
		e:DrawHUD(p:GetNWInt("vnt_passenger_id"),p)
	end
end)

vnt.hook("CreateMove", "VNT_Vehicle_CL_mouseinput", function(md)
	local p=LocalPlayer()
	if !IsValid(p) then return end
	local v=p:GetVehicle()
	if !IsValid(v) then return end
	local e=v:GetNWEntity("vnt_vehicle")
	if IsValid(e) then
		e:MovePlayerView(p:GetNWInt("vnt_passenger_id"),p,md)
	end
end)


-- menu
vnt.addMenuPanel(vnt.menu.tab, VNTCB.Category.VNT, vnt.menu.aircraft, function(panel, info)

	panel:AddControl("Label", {Text = "Client Settings"})
	
	local presetParams = {
		Label = "Presets",
		MenuButton = 1,
		Folder = "vnt_vehicle",
		Options = {
			mouse = {
				vnt_vehicle_cl_mouse = "1",
				vnt_vehicle_cl_mouse_swap ="1",
				vnt_vehicle_cl_mouse_invert_pitch = "0",
				vnt_vehicle_cl_mouse_invert_yawroll = "0",
				vnt_vehicle_cl_key_Exit = KEY_E,
				vnt_vehicle_cl_key_Start = KEY_I,
				vnt_vehicle_cl_key_Throttle_Inc = KEY_W,
				vnt_vehicle_cl_key_Throttle_Dec = KEY_S,
				vnt_vehicle_cl_key_Yaw_Inc = KEY_A,
				vnt_vehicle_cl_key_Yaw_Dec = KEY_D,
				vnt_vehicle_cl_key_Pitch_Inc = KEY_NONE,
				vnt_vehicle_cl_key_Pitch_Dec = KEY_NONE,
				vnt_vehicle_cl_key_Roll_Inc = KEY_NONE,
				vnt_vehicle_cl_key_Roll_Dec = KEY_NONE,
				vnt_vehicle_cl_key_FreeView = KEY_SPACE,
				vnt_vehicle_cl_key_Fire = MOUSE_LEFT,
				vnt_vehicle_cl_key_NextWeapon = KEY_1,
				vnt_vehicle_cl_key_Hover = MOUSE_4,
			},
			keyboard = {
				vnt_vehicle_cl_mouse = "0",
				vnt_vehicle_cl_mouse_swap = "0",
				vnt_vehicle_cl_mouse_invert_pitch = "0",
				vnt_vehicle_cl_mouse_invert_yawroll = "0",
				vnt_vehicle_cl_key_Exit = KEY_E,
				vnt_vehicle_cl_key_Start = KEY_R,
				vnt_vehicle_cl_key_Throttle_Inc = KEY_SPACE,
				vnt_vehicle_cl_key_Throttle_Dec = KEY_LSHIFT,
				vnt_vehicle_cl_key_Yaw_Inc = MOUSE_LEFT,
				vnt_vehicle_cl_key_Yaw_Dec = MOUSE_RIGHT,
				vnt_vehicle_cl_key_Pitch_Inc = KEY_W,
				vnt_vehicle_cl_key_Pitch_Dec = KEY_S,
				vnt_vehicle_cl_key_Roll_Inc = KEY_D,
				vnt_vehicle_cl_key_Roll_Dec = KEY_A,
				vnt_vehicle_cl_key_FreeView = KEY_X,
				vnt_vehicle_cl_key_Fire = KEY_F,
				vnt_vehicle_cl_key_NextWeapon = KEY_G,
				vnt_vehicle_cl_key_Hover = MOUSE_4,
			},
		},
		CVars = {
			"VNT_Vehicle_CL_easy",
			"VNT_Vehicle_CL_sensitivity",
			"VNT_Vehicle_CL_usejoystick",
			"VNT_Vehicle_CL_mouse",
			"VNT_Vehicle_CL_mouse_swap",
			"VNT_Vehicle_CL_mouse_invert_pitch",
			"VNT_Vehicle_CL_mouse_invert_yawroll",
		}
	}	
	for category, controls in pairs(vnt.vehicle.controls) do
		for i, t in pairs(controls) do
			if !t[3] then
				table.insert(presetParams.CVars, "VNT_Vehicle_CL_key_" .. i)
			else
				table.insert(presetParams.CVars, "VNT_Vehicle_CL_key_" .. i .. "_Inc")
				table.insert(presetParams.CVars, "VNT_Vehicle_CL_key_" .. i .. "_Dec")
			end
		end
	end
	panel:AddControl("ComboBox", presetParams)

	for i, controls in pairs(vnt.vehicle.controls) do
		panel:AddControl("Label", {Text = controls.name})
		for name, t in pairs(controls.list) do
			if !t[3] then
				local k = vgui.Create("vntKeyboard::key", panel)
				k:setLabel(name)
				k:setKey(t[2])
				k.runCommand="VNT_Vehicle_CL_key_"..name
				panel:AddPanel(k)
			else
				local f = vgui.Create("vntKeyboard::key", panel)
				f:setLabel(name .. " +")
				f:setKey(t[2])
				f.runCommand = "VNT_Vehicle_CL_key_"..name.."_Inc"
				panel:AddPanel(f)
				local k = vgui.Create("vntKeyboard::key", panel)
				k:setLabel(name .. " -")
				k:setKey(t[3])
				k.runCommand = "VNT_Vehicle_CL_key_"..name.."_Dec"
				panel:AddPanel(k)
			end
		end
	end

	panel:AddControl("Slider", {
		Label="Engine Volume",
		Type="float",
		Min=0.1,
		Max=1,
		Command="VNT_Vehicle_CL_volume",
	})

	panel:CheckBox("Arcade Mode","VNT_Vehicle_CL_arcade")
	
	panel:CheckBox("Dynamic View Angle","VNT_Vehicle_CL_smoothview")
	
	panel:CheckBox("Dynamic View Position","VNT_Vehicle_CL_shakeview")

	panel:CheckBox("Use Mouse","VNT_Vehicle_CL_mouse")
	if info["VNT_Vehicle_CL_mouse"]=="1" then
		panel:CheckBox(" - Invert Pitch","VNT_Vehicle_CL_mouse_invert_pitch")
		panel:CheckBox(" - Invert Yaw/Roll","VNT_Vehicle_CL_mouse_invert_yawroll")
		panel:CheckBox(" - Swap Yaw/Roll","VNT_Vehicle_CL_mouse_swap")
		panel:AddControl("Label", {Text = ""})
		panel:AddControl("Slider", {
			Label = "Sensitivity",
			Type = "float",
			Min = 0.5,
			Max = 1.9,
			Command = "VNT_Vehicle_CL_sensitivity",
		})
	end
	
	panel:AddControl("Button", {
		Label = "Joystick Configuration",
		Command = "joyconfig"
	})
	
	panel:AddControl("Label", {Text = ""})
	panel:AddControl("Label", {Text = "Admin Settings"})

	--panel:CheckBox("Double Force","vnt_air_doubletick")

	panel:CheckBox("No Damage","VNT_Vehicle_NoHullDamage")

	panel:AddControl("Slider", {
		Label="Start Speed",
		Type="float",
		Min=0.1,
		Max=2,
		Command="VNT_Vehicle_StartSpeed",
	})
	
	if game.SinglePlayer() then
		panel:CheckBox("Dev Helper","VNT_Vehicle_CL_showdevhelp")
		if info["VNT_Vehicle_CL_showdevhelp"]=="1" then
			panel:AddControl("Button", {
				Label = "Spawn",
				Command = "VNT_Vehicle_Clientsidemodel_Create",
			})
			panel:AddControl("Button", {
				Label = "Remove",
				Command = "VNT_Vehicle_ClientsideModel_Remove",
			})
			panel:AddControl("TextBox", {
				Label="Model",
				MaxLength=512,
				Text="",
				Command="VNT_Vehicle_CL_model_model",
			})
			panel:AddControl("Slider", {
				Label="X",
				Type="float",
				Min=-600,
				Max=600,
				Command="VNT_Vehicle_CL_model_line_x",
			})
			panel:AddControl("Slider", {
				Label="Y",
				Type="float",
				Min=-200,
				Max=200,
				Command="VNT_Vehicle_CL_model_line_y",
			})
			panel:AddControl("Slider", {
				Label="Z",
				Type="float",
				Min=-200,
				Max=200,
				Command="VNT_Vehicle_CL_model_line_z",
			})
			panel:AddControl("Button", {
				Label = "Print",
				Command = "VNT_Vehicle_CL_model_printvars",
			})
			panel:AddControl("Button", {
				Label = "Reset",
				Command = "VNT_Vehicle_CL_model_line_x 0;vnt_vehicle_cl_clmodel_line_y 0;vnt_vehicle_cl_clmodel_line_z 0;",
			})
		end
	end
end,
	"VNT_Vehicle_CL_mouse",
	"VNT_Vehicle_CL_showdevhelp"
)

