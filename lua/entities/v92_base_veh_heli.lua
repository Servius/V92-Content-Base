
-- V92 Vehicle Base
-- Base Code @ WAC
-- Overhaul/Update @ V92
-- Update: 2017/04/04

-- Trouble Tag: --USSFLAGG

ENT.PrintName = "Base Helicopter" -- Printed name

if not ( vnt or VNTCB ) then
	Error( "V92 Content Bases not mounted; Removing Entity: " .. ENT.PrintName .. "\n" )
	return false
end

AddCSLuaFile()

ENT.Base = "base_anim"
ENT.Type = "anim"

ENT.Spawnable = true -- Spawnable?
ENT.AdminOnly = true -- Admin only?

if CLIENT then

	language.Add( "v92_base_veh_heli", "Base Helicopter" ) -- Add a language entry

	ENT.Category = VNTCB.Category.VNT -- Category
	ENT.Author = VNTCB.author -- Author
	ENT.Purpose = VNTCB.purpose	-- Purpose
	ENT.Instructions = VNTCB.instructions -- Instructions for use

elseif SERVER then

	resource.AddWorkshop( "505106454" ) -- V92 Base

end

ENT.isVNTVehicle = true
ENT.DeveloperMode = true --false

ENT.SmokePos = Vector(-75,0,20)
ENT.FirePos = Vector(-60,0,60)

ENT.Model = Model( "models/jessev92/bf3/vehicles/ah6_hull.mdl" ) -- Main hull/fuselage

ENT.IgnoreDamage = true
ENT.VehicleIgnoresItself = true
ENT.UsePhysicalRotor = true
ENT.IsSubmersible = false
ENT.EnableRotorWash = true
ENT.RotorWidth = 200

ENT.EngineHealth = 100
ENT.EngineForce	= 20
ENT.BrakeMul = 1
ENT.AngBrakeMul	= 0.01
ENT.Weight = 1000
ENT.SeatSwitcherPos = Vector(0,0,50)
ENT.BullsEyePos	= Vector(20,0,50)
ENT.MaxEnterDistance = 50
ENT.WheelStabilize = -400

-- Landing Gear
ENT.HasGear = false -- (Boolean) Do we have gear?
ENT.GearBodyGroup = 12 -- (Integer) Tyre Bodygroup Number
ENT.FlipLandingGearBG = false -- (Boolean) false = tyres visible by default on the model
ENT.GearAnimations = { "gearup" , "geardown" } -- (Table: Gear Up Sequence, Gear Down Sequence )
ENT.WheelHideTable = { 2 , 3 } -- (Table: Start Wheel Hide, End Wheel Hide)
ENT.IsGearUp = false -- (Boolean) Don't Touch
ENT.GearDelay = CurTime( ) -- (Float) Don't Touch

-- Functions
ENT.HasCreatedGibs = false
ENT.GibModelOne = nil
ENT.GibModelTwo = nil
ENT.GibModelThree = nil
ENT.GibModelFour = nil
ENT.GibModelFive = nil
ENT.GibModelSix = nil
ENT.GibModelSeven = nil
ENT.GibModelEight = nil
ENT.GibModelNine = nil
ENT.GibModelTen = nil
ENT.GibModelEleven = nil
ENT.GibModelTwelve = nil
ENT.GibModelThirteen = nil
ENT.GibModelFourteen = nil
ENT.GibModelFifteen = nil

-- Ejection Seats
ENT.HasEjectionSeat = false

-- Hatches/Canopies
ENT.HasHatch = false
ENT.HatchesStartClosed = true
ENT.IsHatchShutOne = false
ENT.HatchOnePoserName = nil -- "canopy_pilot"
ENT.IsHatchShutTwo = false
ENT.HatchTwoPoserName = nil -- "canopy_gunner"
ENT.IsHatchShutThree = false
ENT.HatchThreePoserName = nil -- "hatch_commander"
ENT.IsHatchShutFour = false
ENT.HatchFourPoserName = nil -- "hatch_loader"

ENT.HatchOneDelay = CurTime( ) -- (Float) Don't Touch
ENT.HatchTwoDelay = CurTime( ) -- (Float) Don't Touch
ENT.HatchThreeDelay = CurTime( ) -- (Float) Don't Touch
ENT.HatchFourDelay = CurTime( ) -- (Float) Don't Touch

-- Doors
ENT.HasDoors = false -- (Boolean) Has doors?
ENT.AreDoorsShut = false -- (Boolean) Don't Touch
ENT.DoorDelay = CurTime( ) -- (Float) Don't Touch

-- Flaps
ENT.HasFlaps = false -- (Boolean) Has flaps/dive brakes?
ENT.AreFlapsDeployed = false -- (Boolean) Don't Touch
ENT.FlapDelay = CurTime( ) -- (Float) Don't Touch

ENT.Seats = {

	{

		["pos"] = Vector( 12 , 20 , 51 ) , -- Sit pos
		["ang"] = Angle( 0 , 0 , 0 ) , -- Sit angle
		["exit"] = Vector( 50 , 85 , 0 ) , -- Exit pos
		["exitAng"] = Angle( 0 , 0 , 0 ) , -- Exit angle
		["EjectionSeat"] = false , -- Can use ejection seats?

	} ,

}

ENT.Sounds = {

	--	Engine/Rotors
	["Start"] = Sound( "jessev92/vehicles/air/shared/heli_start_1.wav" ) ,
	["Blades"] = Sound( "jessev92/bf3/vehicles/ah6_littlebird/rotor_close.wav" ) ,
	["BladesFar"] = Sound( "jessev92/bf3/vehicles/ah6_littlebird/rotor_far.wav" ) ,

	["Engine"] = Sound( "jessev92/bf3/vehicles/ah6_littlebird/engine_close.wav" ) ,
	["EngineFar"] = Sound( "jessev92/bf3/vehicles/ah6_littlebird/engine_far.wav" ) ,
	["EngineDistant"] = Sound( "jessev92/bf3/vehicles/ah6_littlebird/engine_distant.wav" ) ,

	-- Alarms
	["MissileTracking"] = Sound( "jessev92/bf3/vehicles/warnings/warning_missile_tracking.wav" ) ,
	["MissileLocked"] = Sound( "jessev92/bf3/vehicles/warnings/warning_missile_locked.wav" ) ,
	["MissileAlert"] = Sound( "jessev92/bf3/vehicles/warnings/warning_missile_inbound.wav" ) ,
	["MinorAlarm"] = Sound( "jessev92/bf3/vehicles/warnings/warning_air.wav" ) ,
	["LowHealth"] = Sound( "jessev92/bf3/vehicles/warnings/warning_damaged.wav" ) ,
	["CrashAlarm"] = Sound( "jessev92/bf3/vehicles/warnings/warning_disabled.wav" ) ,
	
	-- Hatch
	["HatchOpen"] = Sound( "physics/plastic/plastic_box_scrape_smooth_loop1.wav" ) ,
	["HatchClose"] = Sound( "physics/cardboard/cardboard_box_scrape_smooth_loop1.wav" ) ,
	["HatchWind"] = Sound( "ambient/wind/windgust_strong.wav" ) ,

	["DiveBrakes"] = Sound( "jessev92/bf1942/vehicles/common/airplanedive.wav" ) ,

	["GearDownStart"] = Sound( "jessev92/bf3/vehicles/reloads/largeweaponreload_02_start.wav" ) ,
	["GearDownLoop"] = Sound( "jessev92/bf3/vehicles/reloads/largeweaponreload_02_loop.wav" ) ,
	["GearDownStop"] = Sound( "jessev92/bf3/vehicles/reloads/largeweaponreload_02_stop.wav" ) ,
	["GearUpStart"] = Sound( "jessev92/bf3/vehicles/reloads/largeweaponreload_02_start.wav" ) ,
	["GearUpLoop"] = Sound( "jessev92/bf3/vehicles/reloads/largeweaponreload_02_loop.wav" ) ,
	["GearUpStop"] = Sound( "jessev92/bf3/vehicles/reloads/largeweaponreload_02_stop.wav" ) ,

	-- Interiors
	["Interior"] = Sound( "jessev92/bf3/vehicles/ah6_littlebird/cockpit.wav" ) ,
	
	-- Damage System
	["Fire"] = Sound( "jessev92/bf3/gamesounds/fires/fire_burn_1.wav" ) ,

	["Explosion_Nose"] = Sound( "jessev92/bf3/explosions/modularmodel/explosion_nose.wav" ) ,
	["Explosion_BassClose"] = Sound( "jessev92/bf3/explosions/modularmodel/explosion_bass_close_1.wav" ) ,
	["Explosion_BassDistant"] = Sound( "jessev92/bf3/explosions/modularmodel/explosion_bass_distant_1.wav" ) ,
	["Explosion_BassFar"] = Sound( "common/null.wav" ) ,
	["Explosion_Close"] = Sound( "jessev92/bf3/explosions/modularmodel/explosion_close_1.wav" ) ,
	["Explosion_Distant"] = Sound( "jessev92/bf3/explosions/modularmodel/explosion_distant_1.wav" ) ,
	["Explosion_Far"] = Sound( "jessev92/bf3/explosions/modularmodel/explosion_far_1.wav" ) ,

}

-- Create our tyres and wheels
ENT.Wheels = { 

}

-- Weapons, Primary
ENT.Weapons = {

}

-- Weapons, Secondary
ENT.WeaponsSecondary = {

}

-- Top rotor - OLD! WILL BE REMOVED!
ENT.TopRotor = {
	dir = 1,
	pos = Vector(0,0,50),
	angles = Angle(0, 0, 0),
	model = "models/props_borealis/borealis_door001a.mdl" ,
	health = 100
}

-- Back rotor - OLD! WILL BE REMOVED!
ENT.BackRotor = {
	dir = 1,
	pos = Vector(-185,-3,13),
	angles = Angle(0, 0, 0),
	model = "models/props_borealis/borealis_door001a.mdl" ,
	health = 40
}

-- Rotor table
ENT.RotorTable = {

	{
		["Model"] = Model( "models/jessev92/bf3/vehicles/h6_rotor_main.mdl" ) , -- Model to use
		["Pos"] = Vector( -25 , 0 , 103 ) , -- Position, local to aircraft origin
		["Ang"] = Angle( 0 , 0 , 0 ) , -- Angle, local to aircraft angle
		["Durability"] = 100 , -- Health points
		["Mass"] = 100 , -- Mass in KG
		--["SpinX"] = false , -- Does it spin on the X (Roll) axis? Third priority
		--["SpinY"] = false , -- Does it spin on the Y (Pitch) axis? Second priority
		--["SpinZ"] = true , -- Does it spin on the Z (Yaw) axis? First priority
		["IsTail"] = false , -- Is this a standard counter-balance tail rotor?
		["SpinDir"] = 1 , -- Spin Direction, 1 or -1
		["SpinRPM"] = 100 , -- Rotations per minute
		["RotorWash"] = true , -- Creates rotor wash effect
	} ,

	{
		["Model"] = Model( "models/jessev92/bf3/vehicles/h6_rotor_tail.mdl" ) , -- Model to use
		["Pos"] = Vector( -265 , 12 , 75 ) , -- Position, local to aircraft origin
		["Ang"] = Angle( 0 , 0 , 0 ) , -- Angle, local to aircraft angle
		["Durability"] = 100 , -- Health points
		["Mass"] = 100 , -- Mass in KG
		--["SpinX"] = false , -- Does it spin on the X (Roll) axis? Third priority
		--["SpinY"] = true , -- Does it spin on the Y (Pitch) axis? Second priority
		--["SpinZ"] = false , -- Does it spin on the Z (Yaw) axis? First priority
		["IsTail"] = true , -- Is this a standard counter-balance tail rotor?
		["SpinDir"] = 1 , -- Spin Direction, 1 or -1
		["SpinRPM"] = 100 , -- Rotations per minute
		["RotorWash"] = false , -- Creates rotor wash effect
	} ,

}

-- Engine Table
ENT.EngineTable = {

	{
		["Model"] = Model( "models/props_trainstation/trainstation_clock001.mdl" ) , -- Model to use
		["Pos"] = Vector( 0 , 0 , 0 ) , -- Position, local to aircraft origin
		["Ang"] = Angle( 0 , 0 , 0 ) , -- Angle, local to aircraft angle
		["Durability"] = 100 , -- Health points
		["Coop"] = false , -- Coop means it works in tandem with other coop-tagged engines
	},

}

-- NPCs the attack the vehicle
ENT.HatingNPCs = {

	"npc_strider",
	"npc_combinegunship",
	"npc_combinedropship",
	"npc_helicopter",
	"npc_hunter",
	"npc_ministrider",
	"npc_turret_ceiling",
	"npc_turret_floor",
	"npc_turret_ground",
	"npc_rollermine",
	"npc_sniper",

}

-- NPCs that run away from the vehicle
ENT.FearingNPCs = {

	"npc_zombie",
	"npc_zombine",
	"npc_headcrab",
	"npc_headcrab_fast",
	"npc_headcrab_black",
	"npc_antlion",
	"npc_antlion_worker",
	"npc_antlion_guard",

}

-- Flight dynamics
ENT.Aerodynamics = {

	["Movement"] = {
	
		-- ["Pitch"] = Vector( forwards , right , up ) when moving FORWARDS
		-- Default: Vector( 0 , 0 ,-4 )
		["Pitch"] = Vector( 0 , 0 , -4 ) ,
		
		-- ["Roll"] = Vector( (backwards) (right) (down) ) when moving RIGHT
		-- Default: Vector( 0 , 0 , 0 )
		["Roll"] = Vector( 0 , 0 , 0 ) , 
		
		-- ["Yaw"] = Vector( (forwards) , (right) , (up) ) when moving UP
		-- Default: Vector( 1 , 0 , -2 )
		["Yaw"] = Vector( 6 , 0 , 0 ) , 
		
	} ,
	
	["Rotation"] = {
	
		["Pitch"] = Vector( 0 , -1.5 , 0 ) ,
		["Roll"] = Vector( 0 , 0 , 20 ) , -- Rotate towards flying direction
		["Yaw"] = Vector( 0 , -20 , 0 ) ,
		
	} ,
	
	["Rail"] = Vector( 1 , 5 , 20 ) ,
	["RailRotor"] = 1 , -- like Z rail but only active when moving and the rotor is turning
	
	["Drag"] = {
	
		["Directional"] = Vector( 0.01 , 0.01 , 0.01 ) ,
		["Angular"] = Vector( 0.01 , 0.01 , 0.01 ) ,

	} ,

}

-- Agility of the vehicle
ENT.Agility = {

	["Rotate"] = Vector( 1 , 1 , 1 ) ,
	["Thrust"] = 1 ,

}

-- Create sound tables for all listed sounds
function ENT:addSounds()

	self.sounds = { }
	
	for name , value in pairs( self.Sounds ) do
	
		if name != "BaseClass" then
		
			sound.Add(
				{
					["name"] = "VNT." .. self.ClassName .. "." .. name ,
					["channel"] = CHAN_STATIC ,
					["soundlevel"] = 100 ,
					["sound"] = value ,
				}
			)
			
			self.sounds[ name ] = CreateSound( self , "VNT." .. self.ClassName .. "." .. name )
			
			if name == "Blades" then

				self.sounds[ name ]:SetSoundLevel( 120 )

			elseif name == "Engine" then

				self.sounds[ name ]:SetSoundLevel( 90 )

			elseif name == "EngineFar" then

				self.sounds[ name ]:SetSoundLevel( 100 )

			elseif name == "EngineDistant" then

				self.sounds[ name ]:SetSoundLevel( 110 )

			end
			
		end

	end

end

-- Setup networked data
function ENT:SetupDataTables()

	self:NetworkVar( "Bool" , 0 , "Hover" )
	self:NetworkVar( "Entity" , 0 , "Switcher" )

end

-- Setup the base callback
function ENT:base( name )

	local current = self

	while current do

		if current.ClassName == name then

			return current

		end

		current = current.BaseClass

	end

	Error( "No base class with name \"" .. name .. "\"" , 2 )

end

-- Sync the skin with the base hull
function ENT:updateSkin( n )

	if SERVER then

		for _, e in pairs( self.entities) do

			if IsValid( e ) then

				e:SetSkin(n)
			end
		end
	else
		for _,e in pairs(self.weaponAttachments) do
			e.model:SetSkin(n)
		end
	end
end

-- Get passengers
function ENT:getPassenger(seat)

	if not IsValid( self:GetSwitcher( ) ) then 
	
		return 
		
	end

	local s = self:GetSwitcher().seats[seat]
	if IsValid(s) then
		return s:GetDriver()
	end
end

function ENT:getCameraAngles()

	local ang = Angle(0, 0, 0)
	
	if not self.Camera then 
	
		return ang 
		
	end

	local p = self:getPassenger(self.Camera.seat)
	if IsValid(p) then
		local view = self:WorldToLocalAngles(p:GetAimVector():Angle())
		ang = Angle(self.Camera.restrictPitch and 0 or view.p, self.Camera.restrictYaw and 0 or view.y, 0)
		if self.Camera.minAng then
			ang.p = (ang.p > self.Camera.minAng.p and ang.p or self.Camera.minAng.p)
			ang.y = (ang.y > self.Camera.minAng.y and ang.y or self.Camera.minAng.y)
		end
		if self.Camera.maxAng then
			ang.p = (ang.p < self.Camera.maxAng.p and ang.p or self.Camera.maxAng.p)
			ang.y = (ang.y < self.Camera.maxAng.y and ang.y or self.Camera.maxAng.y)
		end
	end
	return self:LocalToWorldAngles(ang)
end

if CLIENT then

	ENT.RenderGroup = RENDERGROUP_BOTH

	ENT.thirdPerson = {
		distance = 600,
		angle = 10,
		position = Vector(-50,0,100)
	}

	ENT.Scale = 1 -- hud scaling and such

	function ENT:receiveInput(name, value, seat)
		if name == "FreeView" then
			local player = LocalPlayer()
			if value > 0.5 then
				player.vnt.viewFree = true
			else
				player.vnt.viewFree = false
				player.wac_air_resetview = true
			end
		elseif name == "Camera" then
			local player = LocalPlayer()
			if value > 0.5 then
				player:GetVehicle().useCamera = !player:GetVehicle().useCamera
			end
		end
	end

	function ENT:EngineSoundThink( )

		if IsValid( self ) then

			if not self:GetNWBool("locked") then

			else

			end
			
		end

	end

	function ENT:Initialize()
		self:addSounds()
		self.smoothUp = 0
		self.engineRPM = 0
		self.rotorRPM = 0
		self.Emitter = ParticleEmitter(self:GetPos())
		self.IsOn = false
		self.LastThink = CurTime()

		self.weapons = {}
		--self.weaponsPrimary = {}
		--self.weaponsSecondary = {}
		self.weaponAttachments = {}
		if self.WeaponAttachments then
			for name, info in pairs(self.WeaponAttachments) do
				if name != "BaseClass" and name != "seat" then
					local t = table.Copy(info)
					t.model = ClientsideModel(info.model, RENDERGROUP_OPAQUE)
					t.model:Spawn()
					t.model:SetPos(self:LocalToWorld(info.pos))
					t.model:SetParent(self)
					self.weaponAttachments[name] = t
				end
			end
		end
		if self.Camera then
			local t = {}
			self.camera = ClientsideModel(self.Camera.model)
			self.camera:SetPos(self:LocalToWorld(self.Camera.pos))
			self.camera:SetParent(self)
			self.camera:Spawn()
			t.info = self.Camera
			t.model = self.camera
			table.insert(self.weaponAttachments, t)
		end
		self.valid = true
	end

	function ENT:Think()
		
		if not IsValid( self ) then return end

		if self.skin ~= self:GetSkin() then
			self.skin = self:GetSkin()
			self:updateSkin(self.skin)
		end

		if not self:GetNWBool("locked") then

			self:attachmentThink()

			local mouseFlight = self:GetNWBool("active")
			if self.sounds.Start then
				if mouseFlight != self.IsOn then
					if mouseFlight then
						self.sounds.Start:Play()
					else
						self.sounds.Start:Stop()
					end
					self.IsOn = mouseFlight
				end
			end
			if not self.sounds.Engine:IsPlaying() then
				self.sounds.Engine:ChangePitch(0,0.1)
				self.sounds.Engine:Play()
			end
			if not self.sounds.Blades:IsPlaying() then
				self.sounds.Blades:ChangePitch(0,0.1)
				self.sounds.Blades:Play()
			end
			local frt = CurTime()-self.LastThink
			
			local e = LocalPlayer():GetViewEntity()
			
			if not IsValid( e ) then 
			
				e = LocalPlayer() 
				
			end
			
			local pos = e:GetPos()
			local spos = self:GetPos()
			local doppler = (pos:Distance(spos+e:GetVelocity())-pos:Distance(spos+self:GetVelocity()))/200*self.rotorRPM

			local vehicle = LocalPlayer():GetVehicle()
			local inVehicle = false
			if IsValid(vehicle) and vehicle:GetNWEntity("vnt_vehicle") == self then
				if not vehicle:GetThirdPersonMode() then
					inVehicle = true
				end
				doppler = 0
			end

			self.smoothUp = self.smoothUp - (self.smoothUp-self:GetNWFloat("up"))*frt*10
			self.rotorRPM = self.rotorRPM - (self.rotorRPM-self:GetNWFloat("rotorRPM"))*frt*10
			self.engineRPM = self.engineRPM - (self.engineRPM-self:GetNWFloat("engineRPM"))*frt*10

			local engineVal = math.Clamp(self.engineRPM*100+self.engineRPM*self.smoothUp*3+doppler, 0, 200)
			local val = math.Clamp(self.rotorRPM*100 + doppler + self:GetVelocity():Length()/50, 0, 200)

			local volume = tonumber(LocalPlayer():GetInfo("VNT_Vehicle_CL_volume"))

			self.sounds.Engine:ChangePitch(engineVal/1.1 + val/10, 0.1)
			self.sounds.Engine:ChangeVolume(volume*math.Clamp(engineVal*engineVal/4000, 0, inVehicle and 1 or 20), 0.1)
			self.sounds.Blades:ChangePitch(math.Clamp(val, 10, 150), 0.1)
			self.sounds.Blades:ChangeVolume(volume*math.Clamp(val*val/5000, 0, inVehicle and 0.4 or 20), 0.1)
			if self.sounds.Start then
				self.sounds.Start:ChangeVolume(volume*math.Clamp(100 - self.engineRPM*110, 0, 100)/100, 0.1)
				self.sounds.Start:ChangePitch(100 - self.engineRPM*20, 0.1)
			end
			self.LastThink=CurTime()
		else
			self.sounds.Engine:Stop()
			self.sounds.Blades:Stop()
			if self.sounds.Start then
				self.sounds.Start:Stop()
			end
		end

		if self.AreFlapsDeployed then

			if self:GetPhysicsObject():GetVelocity():Length() > 50 then

				if not self.sounds.DiveBrakes:IsPlaying() then

					self.sounds.DiveBrakes:Play()

				end

			else

				if self.sounds.DiveBrakes:IsPlaying() then

					self.sounds.DiveBrakes:FadeOut( 1 )

				end

			end

		end
	
	end

	--[[
	function ENT:Think()

		if IsValid( self ) then

			if self.skin != self:GetSkin() then

				self.skin = self:GetSkin()
				self:updateSkin(self.skin)

			end

			if !self:GetNWBool("locked") then

				self:attachmentThink()

				local mouseFlight = self:GetNWBool("active")
				if self.sounds.Start then
					if mouseFlight != self.IsOn then
						if mouseFlight then
							self.sounds.Start:Play()
						else
							self.sounds.Start:Stop()
						end
						self.IsOn = mouseFlight
					end
				end
				if !self.sounds.Engine:IsPlaying() then
					self.sounds.Engine:ChangePitch(0,0.1)
					self.sounds.Engine:Play()
				end
				if !self.sounds.Blades:IsPlaying() then
					self.sounds.Blades:ChangePitch(0,0.1)
					self.sounds.Blades:Play()
				end
				local frt = CurTime()-self.LastThink
				local e = LocalPlayer():GetViewEntity()
				if !IsValid(e) then e = LocalPlayer() end
				local pos = e:GetPos()
				local spos = self:GetPos()
				local doppler = (pos:Distance(spos+e:GetVelocity())-pos:Distance(spos+self:GetVelocity()))/200*self.rotorRPM

				local vehicle = LocalPlayer():GetVehicle()
				local inVehicle = false
				if IsValid(vehicle) and vehicle:GetNWEntity("vnt_vehicle") == self then
					if !vehicle:GetThirdPersonMode() then
						inVehicle = true
					end
					doppler = 0
				end

				self.smoothUp = self.smoothUp - (self.smoothUp-self:GetNWFloat("up"))*frt*10
				self.rotorRPM = self.rotorRPM - (self.rotorRPM-self:GetNWFloat("rotorRPM"))*frt*10
				self.engineRPM = self.engineRPM - (self.engineRPM-self:GetNWFloat("engineRPM"))*frt*10

				local engineVal = math.Clamp(self.engineRPM*100+self.engineRPM*self.smoothUp*3+doppler, 0, 200)
				local val = math.Clamp(self.rotorRPM*100 + doppler + self:GetVelocity():Length()/50, 0, 200)

				local volume = tonumber(LocalPlayer():GetInfo("VNT_Vehicle_CL_volume"))

				self.sounds.Engine:ChangePitch(engineVal/1.1 + val/10, 0.1)
				self.sounds.Engine:ChangeVolume(volume*math.Clamp(engineVal*engineVal/4000, 0, inVehicle and 1 or 20), 0.1)
				self.sounds.Blades:ChangePitch(math.Clamp(val, 10, 150), 0.1)
				self.sounds.Blades:ChangeVolume(volume*math.Clamp(val*val/5000, 0, inVehicle and 0.4 or 20), 0.1)
				if self.sounds.Start then
					self.sounds.Start:ChangeVolume(volume*math.Clamp(100 - self.engineRPM*110, 0, 100)/100, 0.1)
					self.sounds.Start:ChangePitch(100 - self.engineRPM*20, 0.1)
				end

				self:attachmentThink()

				self.LastThink=CurTime()

			else

				self.sounds.Engine:Stop()
				--self.sounds.EngineFar:Stop()
				--self.sounds.EngineDistant:Stop()

				self.sounds.Blades:Stop()

				if self.sounds.Start then
				
					self.sounds.Start:Stop()

				end

			end

			self.LastThink = CurTime() + 0.25
			
			self:NextThink( self.LastThink )
			
		end

	end
	--]]

	function ENT:getPassenger(seat)
		if !IsValid(self:GetSwitcher()) then return end
		local s = self:GetSwitcher().seats[seat]
		if IsValid(s) then
			return s:GetPassenger()
		end
	end

	function ENT:attachmentThink()
	
		if not self.weaponAttachments or not self.Camera then 
		
			--print( "Test 1B" )
			return 
			
		end
		
		--print( "Test 2" )

		local camAng = self:getCameraAngles()

		if not camAng then 
		
			return 
			
		end

		local tr = util.QuickTrace(self:LocalToWorld(self.Camera.pos)+camAng:Forward()*20, camAng:Forward()*999999999, self)
		for _, t in pairs(self.weaponAttachments) do
			if IsValid(t.model) then
				local localAng = self:WorldToLocalAngles((tr.HitPos - t.model:GetPos()):Angle())
				localAng = Angle(t.restrictPitch and 0 or localAng.p, t.restrictYaw and 0 or localAng.y, t.r or 0)
				t.model:SetAngles(self:LocalToWorldAngles(localAng))
				if t.offset then
					t.model:SetPos(self:LocalToWorld(t.pos) + t.model:LocalToWorld(t.offset) - t.model:GetPos())
				end
			end
		end
	end

	function ENT:OnRemove()
		for _,s in pairs(self.sounds) do
			s:Stop()
		end
		for _, t in pairs(self.weaponAttachments) do
			if IsValid(t.model) then
				t.model:Remove()
			end
		end
		if IsValid(self.Emitter) then
			self.Emitter:Finish()
		end
	end

	function ENT:DrawHUD(k,p)
		if not ( self.Seats or self.Seats[k] or p:GetViewEntity() == p ) then 

			return 

		end

		if p:GetVehicle().useCamera and self.camera and not p:GetVehicle():GetThirdPersonMode() then
			self:drawCameraHUD(self.Camera.seat)
		end
	end

	function ENT:drawCameraHUD(seat)

		local sw = ScrW()
		local sh = ScrH()
		
		local w = sh/6
		local s = sh/3
		
		surface.SetDrawColor(255,255,255,150)
		
		surface.DrawLine(sw/2-s, sh/2-s, sw/2-s+w, sh/2-s)
		surface.DrawLine(sw/2-s, sh/2-s, sw/2-s, sh/2-s+w)
		
		surface.DrawLine(sw/2+s, sh/2-s, sw/2+s-w, sh/2-s)
		surface.DrawLine(sw/2+s, sh/2-s, sw/2+s, sh/2-s+w)
		
		surface.DrawLine(sw/2-s, sh/2+s, sw/2-s+w, sh/2+s)
		surface.DrawLine(sw/2-s, sh/2+s, sw/2-s, sh/2+s-w)
		
		surface.DrawLine(sw/2+s, sh/2+s, sw/2+s-w, sh/2+s)
		surface.DrawLine(sw/2+s, sh/2+s, sw/2+s, sh/2+s-w)

		if not self.Seats[seat].weapons then
			return
		end

		-- if not self.Seats[seat].weaponsPrimary then
			-- return
		-- end
		
		local weaponPrimary = self:getWeapon(seat)
		if IsValid(weaponPrimary) and weaponPrimary.drawCrosshair then
			weaponPrimary:drawCrosshair()
		end

		local count=0
		for i, name in pairs(self.Seats[seat].weapons) do
		-- for i, name in pairs(self.Seats[seat].weaponsPrimary) do
			if i != "BaseClass" then
				count = count+1
				if i == self:GetNWInt("seat_"..seat.."_activePrimaryWeapon") then
					surface.SetDrawColor(10,10,10,150)
					surface.DrawRect(sw/2+w*2,sh/7+count*50,w*2+10,50)
				end
			end
		end
		surface.SetDrawColor(10,10,10,100)
		surface.DrawRect(sw/2+w*2,sh/7+50,w*2+10,count*50)
		surface.SetDrawColor(255,255,255,200)
		surface.DrawOutlinedRect(sw/2+w*2,sh/7+50,w*2+10,count*50)
		surface.SetFont("vnt_heli_small")
		surface.SetTextColor(230,230,230,255)
		local h = 1
		for i, name in pairs(self.Seats[seat].weapons) do
		-- for i, name in pairs(self.Seats[seat].weaponsPrimary) do
			if i != "BaseClass" then
				-- local wep = self.weaponsPrimary[name]
				local wep = self.weapons[name]
				local ammoOne = wep:GetAmmo()
				surface.SetTextPos(sw/2+w*2+5,sh/7+5+h*50)
				surface.DrawText(name)
				surface.SetTextPos(sw/2+w*4+5-string.len(ammoOne)*14,sh/7+5+h*50)
				surface.DrawText(ammoOne)
				surface.SetDrawColor(255,255,255,200)
				local lastShotPrimary = wep:GetLastShot()
				local nextShotPrimary = wep:GetNextShot()
				surface.DrawRect(sw/2+w*2,sh/7+h*50+40,(w*2+10)*math.Clamp((nextShotPrimary-CurTime())/(nextShotPrimary-lastShotPrimary),0,1),10)
				h=h+1
			end
		end
	end

	function ENT:DrawScreenSpaceEffects(k,p)
	
		if not ( self.Seats or self.Seats[k] or p:GetViewEntity() == p ) then 
		
			return 
			
		end

		if p:GetVehicle().useCamera and self.camera and not p:GetVehicle():GetThirdPersonMode() then
			self:renderCameraEffects(self.Camera.seat)
		end
	end

	local blurMaterial = Material("pp/blurscreen")

	function ENT:renderCameraEffects(seat)
		local crt = CurTime()
		if not self.flickerNext or crt > self.flickerNext then
			self.flicker = math.random(1,8)==1 and 2 or 0
			self.flickerNext = crt+0.1
		end
		blurMaterial:SetFloat("$blur", 1+self.flicker)
		render.UpdateScreenEffectTexture()
		render.SetMaterial(blurMaterial)
		render.DrawScreenQuad()
		DrawColorModify({
			["$pp_colour_addr"] = 0,
			["$pp_colour_addg"] = 0,
			["$pp_colour_addb"] = 0,
			["$pp_colour_brightness"] = 0,
			["$pp_colour_contrast" ] = 1,
			["$pp_colour_colour" ] = 0.01,
			["$pp_colour_mulr" ] = 0,
			["$pp_colour_mulg" ] = 0,
			["$pp_colour_mulb" ] = 0,
		})
	end

	function ENT:onViewSwitch(p, thirdPerson)
		self.viewPos = nil
	end

	function ENT:onEnter(p)
		p.vnt.lagAngles =  self:GetAngles()
		p.vnt.lagPos = self:GetPos()
		p.vnt.lagSpeed = Vector(0, 0, 0)
		p.vnt.lagAccel = Vector(0, 0, 0)
		p.vnt.lagAccelDelta = Vector(0, 0, 0)
		p.vnt.air.vehicle = self
	end

	function ENT:viewCalcThirdPerson(k, p, view)
		local ang;
		if
				k == 1
				and p:GetInfo("VNT_Vehicle_CL_mouse") == "1"
				and !p.vnt.viewFree
		then
			ang = self:GetAngles()
		else
			ang = p:GetAimVector():Angle()
			ang.r = view.angles.r
		end
		ang:RotateAroundAxis(ang:Right(), -self.thirdPerson.angle)
		local origin = self:LocalToWorld(self.thirdPerson.position)
		local tr = util.QuickTrace(
				origin,
				ang:Forward()*-self.thirdPerson.distance,
				{self, self:GetNWEntity("vnt_air_rotor_rear"), self:GetNWEntity("vnt_air_rotor_main")}
		)
		self.viewTarget = {
			origin = (tr.HitPos - tr.Normal*10) - view.origin,
			angles = ang - self:GetAngles()
		}
		return view
	end

	function ENT:viewCalcFirstPerson(k, p, view)
		p.vnt = p.vnt or {}
		view.origin = self:LocalToWorld(Vector(0,0,34.15)*self.Scale+self.Seats[k].pos)
		if
			k == 1
			and p:GetInfo("VNT_Vehicle_CL_mouse") == "1"
			and !p.vnt.viewFree
		then
			self.viewTarget = {
				origin = Vector(0,0,0),
				angles = Angle(0,0,0),
				fov = view.fov
			}
		else
			self.viewTarget = {
				origin = Vector(0,0,0),
				angles = p:GetAimVector():Angle() - self:GetAngles(),
				fov = view.fov
			}
			self.viewTarget.angles.r = self.viewTarget.angles.r + self:GetAngles().r
		end
		return view
	end

	function ENT:viewCalcExit(p, view)
		p.vnt.air.vehicle = nil
	end

	function ENT:viewCalcCamera(k, p, view)
		view.origin = self.camera:LocalToWorld(self.Camera.viewPos)
		view.angles = self.camera:GetAngles()
		if self.viewTarget then
			self.viewTarget.angles = p:GetAimVector():Angle() - self:GetAngles()
		end
		self.viewPos = nil
		p.vnt.lagAngles = Angle(0, 0, 0)
		p.vnt.lagAccel = Vector(0, 0, 0)
		p.vnt.lagAccelDelta = Vector(0, 0, 0)
		return view
	end

	function ENT:viewCalc(k, p, pos, ang, fov)

		if not self.Seats[k] then 
		
			return 
			
		end

		local view = {origin = pos, angles = ang, fov = fov}

		if (IsValid(p:GetVehicle()) and p:GetVehicle():GetNWEntity("vnt_vehicle") != self) or (not IsValid(p:GetVehicle())) then
			return self:viewCalcExit(p, view)
		end

		vnt.smoothApproachAngles(p.vnt.lagAngles, self:GetAngles(), 20)
		local shakeEnabled = p:GetInfo("VNT_Vehicle_CL_shakeview") == "1"
		if shakeEnabled then
			vnt.smoothApproachVector(p.vnt.lagPos, self:GetPos(), 20)
			vnt.smoothApproachVector(p.vnt.lagSpeed, p.vnt.lagPos-self:GetPos(), 20)
			vnt.smoothApproachVector(p.vnt.lagAccel, p.vnt.lagSpeed, 20)
			vnt.smoothApproachVector(p.vnt.lagAccelDelta, p.vnt.lagAccel, 20)
		end

		local v=p:GetVehicle()
		if IsValid(v) then
			if v:GetThirdPersonMode() then
				view = self:viewCalcThirdPerson(k, p, view)
			else
				if v.useCamera and self.camera then
					--view = weaponPrimary.CalcView(self,weaponPrimary,p,pos,ang,view)
					view = self:viewCalcCamera(k, p, view)
				else
					view = self:viewCalcFirstPerson(k, p, view)
				end
			end
		end
		if self.viewTarget then
			self.viewPos = self.viewPos or table.Copy(self.viewTarget)
			vnt.smoothApproachVector(self.viewPos.origin, self.viewTarget.origin, 30)
			vnt.smoothApproachAngles(self.viewPos.angles, self.viewTarget.angles, 30)
			view.origin = view.origin + self.viewPos.origin
			if p:GetInfo("VNT_Vehicle_CL_smoothview") == "1" then
				view.angles = self:GetAngles()*2 + self.viewPos.angles - p.vnt.lagAngles
				if shakeEnabled then
					view.origin = view.origin + (p.vnt.lagAccel - p.vnt.lagAccelDelta)/7*self.Scale
				end
			else
				view.angles = self:GetAngles() + self.viewPos.angles
			end
			self.viewTarget = nil
		end
		return view
	end

	function ENT:MovePlayerView(k,p,md)
		if p.wac_air_resetview then md:SetViewAngles(Angle(0,90,0)) p.wac_air_resetview=false end
		local freeView = md:GetViewAngles()

		if not ( self.Seats or self.Seats[k] ) then 
		
			return 
			
		end

		if ( k == 1 and p:GetInfo("VNT_Vehicle_CL_mouse") == "1" and not p.vnt.viewFree ) then
			freeView.p = freeView.p-freeView.p*FrameTime()*6
			freeView.y = freeView.y-(freeView.y-90)*FrameTime()*6
		else
			freeView.p = math.Clamp(freeView.p,-90,90)
		end
		freeView.y = (freeView.y<-90 and -180 or (freeView.y<0 and 0 or freeView.y))
		md:SetViewAngles(freeView)
	end

	local HudMat = Material("WeltEnSTurm/helihud/arrow")
	local HudCol = Color(70,199,50,150)
	local Black = Color(0,0,0,200)
	function ENT:DrawPilotHud()
		local pos = self:GetPos()
		local fwd = self:GetForward()
		local ri = self:GetRight()
		local ang = self:GetAngles()
		ang:RotateAroundAxis(ri, 90)
		ang:RotateAroundAxis(fwd, 90)
		
		local uptm = self.rotorRPM
		local upm = self.smoothUp
		cam.Start3D2D(self:LocalToWorld(Vector(20,3.75,37.75)*self.Scale+self.Seats[1].pos), ang, 0.015*self.Scale)
		surface.SetDrawColor(HudCol)

		local rects = {
			{235, 249, 10, 2},
			{255, 249, 10, 2},
			{249, 235, 2, 10},
			{249, 255, 2, 10},
			{-3, 0, 3, 500},
			{500, 0, 3, 500},
			{7, 0, 3, 500},
			{490, 0, 3, 500},
			{-6,-3,19,3},
			{-6,500,19,3},
			{487,-3,19,3},
			{487,500,19,3},
			{9,248,5,3},
			{485,248,5,3},
			{1, 500-uptm*500, 5, uptm*500},
		}
		
		for _, e in pairs(rects) do
			surface.DrawRect(e[1], e[2], e[3], e[4])
		end

		surface.DrawLine(30, 5*ang.r-200+2.77*ang.p, 220, 5*ang.r-200+2.77*(ang.p*0.12))
		surface.DrawLine(30, 5*ang.r-200+2.77*ang.p+1, 220, 5*ang.r-200+2.77*(ang.p*0.12)+1)
		surface.DrawLine(280, 5*ang.r-200-2.77*(ang.p*0.12), 470, 5*ang.r-200-2.77*ang.p)
		surface.DrawLine(280, 5*ang.r-200-2.77*(ang.p*0.12)+1, 470, 5*ang.r-200-2.77*ang.p+1)
		surface.SetMaterial(HudMat)
		surface.DrawTexturedRect(-20,250-upm*250-10,20,20)
		surface.DrawTexturedRectRotated(498,math.Clamp(250-self:GetVelocity().z/5.249*2,0,500),20,20,180)
		surface.SetTextColor(HudCol)
		surface.SetFont("vnt_heli_small")
		surface.SetTextPos(-10, 505) 
		surface.DrawText("SPD")
		surface.SetTextPos(-10, 520)
		surface.DrawText(math.floor(self:GetVelocity():Length()*0.1)) --knots (real would be 0.037147, but fuck it)
		
		if self:GetHover() then
			surface.SetTextColor(HudCol)
			surface.SetFont("vnt_heli_small")
			surface.SetTextPos(483, -18)
			surface.DrawText("HVR")
		end
		
		local tr=util.QuickTrace(pos,Vector(0,0,-999999),self)
		surface.SetTextPos(485,505)
		surface.DrawText("ALT")
		surface.SetTextPos(485,520)
		surface.DrawText(math.floor((pos.z-tr.HitPos.z)/16))

		cam.End3D2D()
	end

	function ENT:getWeapon(seatId)
	
		local seat = self.Seats[seatId]
		
		if not seat then 
		
			return 
			
		end


		local active = self:GetNWInt("seat_"..seatId.."_activePrimaryWeapon")
		
		if not seat.weapons or not seat.weapons[active] or not self.weapons then return end

		return self.weapons[seat.weapons[active]]
		
		-- local activePri = self:GetNWInt("seat_"..seatId.."_activePrimaryWeapon")

		-- if not seat.weaponsPrimary or not seat.weaponsPrimary[ activePri ] or not self.weaponsPrimary then 

			-- return 
			
		-- end

		-- return self.weaponsPrimary[ seat.weaponsPrimary[ activePri ] ]

	end

	function ENT:getWeaponSecondary(seatId)
	
		local seat = self.Seats[seatId]
		
		if not seat then 
		
			return 
			
		end

		local activeSec = self:GetNWInt("seat_"..seatId.."_activeSecondaryWeapon")

		if not seat.weaponsSecondary or not seat.weaponsSecondary[ activeSec ] or not self.weaponsSecondary then 
		
			return 
			
		end

		return self.weaponsSecondary[ seat.weaponsSecondary[ activeSec ] ]

	end

	function ENT:DrawWeaponSelection()
		local fwd = self:GetForward()
		local ri = self:GetRight()
		local ang = self:GetAngles()
		ang:RotateAroundAxis(ri, 90)
		ang:RotateAroundAxis(fwd, 90)
		for k, t in pairs(self.Seats) do
			if k != "BaseClass" and self:getWeapon(k) then
				cam.Start3D2D(self:LocalToWorld(Vector(20,5,25)*self.Scale + t.pos), ang, 0.02*self.Scale)
				surface.DrawRect(-10, 0, 500, 30)
				surface.DrawRect(-10, 30, 10, 20)
				local weaponPrimary = self:getWeapon(k)
				local lastShotPrimary = weaponPrimary:GetLastShot()
				local nextShotPrimary = weaponPrimary:GetNextShot()
				local ammoOne = weaponPrimary:GetAmmo()
				draw.SimpleText( k .. " " .. t.weapons[ self:GetNWInt( "seat_" .. k .. "_activePrimaryWeapon" ) ] , "vnt_heli_big" , 0 , -2.5 , Black , 0 )
				--draw.SimpleText( k .. " " .. t.weaponsPrimary[ self:GetNWInt( "seat_" .. k .. "_activePrimaryWeapon" ) ] , "vnt_heli_big" , 0 , -2.5 , Black , 0 )
				--draw.SimpleText( k .. " " .. t.weaponsSecondary[ self:GetNWInt( "seat_" .. k .. "_activeSecondaryWeapon" ) ] , "vnt_heli_big" , 0 , 2.5 , Black , 0 )
				draw.SimpleText( ammoOne , "vnt_heli_big" , 480 , -2.5 , Black , 2 )
				cam.End3D2D()
			end
		end
	end

	function ENT:Draw()
		self:DrawModel()
		if !self.Seats or self:GetNWBool("locked") then return end
		self:DrawPilotHud()
		self:DrawWeaponSelection()
		if self.engineRPM > 0.2 and self.SmokePos then
			if !self.lastHeatDrawn or self.lastHeatDrawn < CurTime()-0.1 then
				if type(self.SmokePos) == "table" then
					for _, v in self.SmokePos do
						local particle = self.Emitter:Add("sprites/heatwave",self:LocalToWorld(v))
						particle:SetVelocity(self:GetVelocity()+self:GetForward()*-100)
						particle:SetDieTime(0.1)
						particle:SetStartAlpha(255)
						particle:SetEndAlpha(255)
						particle:SetStartSize(40*self.Scale)
						particle:SetEndSize(20*self.Scale)
						particle:SetColor(255,255,255)
						particle:SetRoll(math.Rand(-50,50))
					end
				else
					local particle = self.Emitter:Add("sprites/heatwave",self:LocalToWorld(self.SmokePos))
					particle:SetVelocity(self:GetVelocity()+self:GetForward()*-100)
					particle:SetDieTime(0.1)
					particle:SetStartAlpha(255)
					particle:SetEndAlpha(255)
					particle:SetStartSize(40*self.Scale)
					particle:SetEndSize(20*self.Scale)
					particle:SetColor(255,255,255)
					particle:SetRoll(math.Rand(-50,50))
				end
				self.lastHeatDrawn = CurTime()
			end
		end
	end

	net.Receive("vnt.vehicle.updateWeapons", function(length)

		local vehicle = net.ReadEntity()
		local count = net.ReadInt(8)
		--local count = #self.Weapons

		if count > 0 then

			for i = 1, count do

				local name = net.ReadString()
				local weaponPrimary = net.ReadEntity()
				-- vehicle.weaponsPrimary[ name ] = weaponPrimary
				vehicle.weapons[name] = weaponPrimary
			
				for index , value in pairs( vehicle.Weapons[ name ].info ) do

					weaponPrimary[ index ] = value

				end

				if weaponPrimary.clientUpdate then

					weaponPrimary:clientUpdate()

				end
				
				if i > count then
				
					break
				
				end

			end
			
		end

		--[[
		local countSec = #self.WeaponsSecondary or 0

		if countSec > 0 then

			for i = 1, countSec do

				local name = net.ReadString()
				local weaponSecondary = net.ReadEntity()
				vehicle.weaponsSecondary[ name ] = weaponSecondary

				for index , value in pairs( vehicle.WeaponsSecondary[ name ].info ) do

					weaponSecondary[ index ] = value

				end

				if weaponSecondary.clientUpdate then

					weaponSecondary:clientUpdate()

				end
				
				if i > countSec then
				
					break
				
				end

			end

		end
		--]]

	end)

end

if SERVER then

	include("v92/aircraft.lua")

	util.AddNetworkString("vnt.vehicle.updateWeapons")

	function ENT:Initialize( )

		vnt.vehicle.initialize( )

		self:SetModel( self.Model ) -- set main hull/fuselage model
		
		self:DrawShadow( true ) -- draw our shadow
		
		self:PhysicsInit( SOLID_VPHYSICS ) -- set physics type
		self:SetMoveType( MOVETYPE_VPHYSICS ) -- set move type
		self:SetSolid( SOLID_VPHYSICS ) -- Set solid
		
		self.phys = self:GetPhysicsObject( ) -- Get our physics object
		
		if self.phys:IsValid( ) then
		
			-- If we set our weight
			if self.Weight then
			
				-- Set it to self.Weight
				self.phys:SetMass( self.Weight )
				
			else
			
				-- Set it to the prop mass
				self.phys:SetMass( self:GetMass( ) )
				
			end
			
			self.phys:Wake( )
			self.phys:EnableDrag( false )
		end
		
		self.entities = { }
		
		self.OnRemoveEntities = { }
		self.OnRemoveFunctions = { }
		self.wheels = { }
		
		self.nextUpdate = 0
		self.LastDamageTaken = 0
		self.wac_seatswitch = true
		self.rotorRPM = 0
		self:SetNWFloat("health", 100)
		self.LastActivated = 0
		self.NextWepSwitch = 0
		self.NextCamSwitch = 0
		self.engineRPM = 0
		self.LastPhys = 0
		self.passengers = {}
		
		self.controls = {

			["throttle"] = -1 ,
			["pitch"] = 0 ,
			["yaw"] = 0 ,
			["roll"] = 0 ,

		}

		--self:AddRotorTable( ) --USSFLAGG
		self:addRotors( )
		self:addSounds( )
		self:addWheels( )
		self:addWeapons( )
		self:addSeats( )
		self:addStuff( )
		self:addNpcTargets( )
		
		if self.FlipLandingGearBG then
		
			self:SetBodygroup( self.GearBodyGroup , 0 )
			
		else
		
			self:SetBodygroup( self.GearBodyGroup , 1 )
			
		end

		if self.HasHatch and self.HatchesStartClosed then

			if self.HatchOnePoserName != nil then

				--	Toggle the hatch for Seat 1
				self.IsHatchShutOne = !self.IsHatchShutOne
				self:SetHatch( !self.IsHatchShutOne , 1 )

			end

			if self.HatchTwoPoserName != nil then

				--	Toggle the hatch for Seat 2
				self.IsHatchShutTwo = !self.IsHatchShutTwo
				self:SetHatch( !self.IsHatchShutTwo , 2)
				
			end

			if self.HatchThreePoserName != nil then

				--	Toggle the hatch for Seat 3
				self.IsHatchShutThree = !self.IsHatchShutThree
				self:SetHatch( !self.IsHatchShutThree , 3 )
				
			end

			if self.HatchFourPoserName != nil then

				--	Toggle the hatch for Seat 4
				self.IsHatchShutFour = !self.IsHatchShutFour
				self:SetHatch( !self.IsHatchShutFour , 4 )
				
			end

		end

	end

	function ENT:addEntity( EntityClassName )

		local CreatedEntity = ents.Create( EntityClassName )

		if not IsValid( CreatedEntity ) then 

			return nil 

		end

		table.insert( self.entities, CreatedEntity )
		CreatedEntity.Owner = self.Owner
		CreatedEntity:SetNWString( "Owner" , "World" )

		return CreatedEntity

	end

	function ENT:UpdateTransmitState() 

		return TRANSMIT_ALWAYS

	end

	function ENT:addNpcTargets()
		--[[self.npcTargets = {}
		for x = -1, 1 do
			for y = -1, 1 do
				for z = -1, 1 do
					local traceData = {
						start = self:WorldToLocal(Vector(x,y,z)*self:BoundingRadius()),
						endpos = self:GetPos()
					}
					local tr = util.TraceLine(traceData)
					local e = self:addEntity("npc_bullseye")
					e:SetPos(tr.HitPos + tr.HitNormal * 10)
					e:SetParent(self)
					e:SetKeyValue("health", "10000")
					e:SetKeyValue("spawnflags", "256")
					e:SetNotSolid(true)
					e:Spawn()
					e:Activate()
					for _,s in pairs(self.HatingNPCs) do
						e:Fire("SetRelationShip", s.." D_HT 99")
					end
					table.insert(self.npcTargets, e)
				end
			end
		end]]
		for _,s in pairs(self.HatingNPCs) do
			self:Fire("SetRelationShip", s.." D_HT 99")
		end
	end

	function ENT:addStuff() 

	end

	function ENT:addWeapons()
		self.weapons = {}
		--self.weaponsPrimary = {}
		for i, w in pairs(self.Weapons) do
			if i != "BaseClass" then
				local pod = ents.Create(w.class)
				pod:SetPos(self:GetPos())
				pod:SetParent(self)
				for index, value in pairs(w.info) do
					pod[index] = value
				end
				pod.aircraft = self
				pod:Spawn()
				pod:Activate()
				pod:SetNoDraw(true)
				pod.podIndex = i
				self.weapons[i] = pod
				--self.weaponsPrimary[i] = pod
				self:AddOnRemove(pod)
			end
		end

		if self.Camera then
			self.camera = ents.Create("prop_physics")
			self.camera:SetModel("models/props_junk/popcan01a.mdl" )
			self.camera:SetNoDraw(true)
			self.camera:SetPos(self:LocalToWorld(self.Camera.pos))
			self.camera:SetParent(self)
			self.camera:Spawn()
		end
	end

	function ENT:addSeats()
		self.seats = {}
		local e = self:addEntity(VNTCB.Bases.Vehicle_Seat)
		e:SetPos(self:LocalToWorld(self.SeatSwitcherPos))
		e:SetNoDraw(true)
		e:Spawn()
		e:Activate()
		e.VehicleIgnoresItself = true
		e:SetNotSolid(true)
		e:SetParent(self)
		self:SetSwitcher(e)
		for SeatNumber , v in pairs(self.Seats) do
			if SeatNumber != "BaseClass" then
				local ang = self:GetAngles()
				self.seats[SeatNumber] = self:addEntity("prop_vehicle_prisoner_pod")
				self.seats[SeatNumber].activeProfile = 1
				self.seats[SeatNumber]:SetModel("models/nova/airboat_seat.mdl" )
				self.seats[SeatNumber]:SetPos(self:LocalToWorld(v.pos))
				
				if v.ang then
					
					local a = self:GetAngles()
					a.y = a.y-90
					a:RotateAroundAxis(Vector(0,0,1), v.ang.y)
					self.seats[SeatNumber]:SetAngles(a)

				else

					ang:RotateAroundAxis(self:GetUp(), -90)
					self.seats[SeatNumber]:SetAngles(ang)

				end

				self.seats[SeatNumber]:SetNoDraw( self.DeveloperMode )
				self.seats[SeatNumber]:SetNotSolid( true )
				self.seats[SeatNumber]:DrawShadow( false )
				self.seats[SeatNumber]:SetParent(self)
				self.seats[SeatNumber].VehicleIgnoresItself = true
				self.seats[SeatNumber]:SetNWInt( "selectedPrimaryWeapon" , 0 )
				self.seats[SeatNumber]:SetNWInt( "selectedSecondaryWeapon" , 0 )
				self.seats[SeatNumber]:SetNWEntity( "vnt_vehicle" , self )
				self.seats[SeatNumber]:SetKeyValue( "limitview" , "0" )
				self.seats[SeatNumber]:Spawn()
				self.seats[SeatNumber]:Activate()
				self:SetNWInt( "seat_" .. SeatNumber .. "_activePrimaryWeapon" , 1 )
				self:SetNWInt( "seat_" .. SeatNumber .. "_activeSecondaryWeapon" , 1 )
				e:addVehicle( self.seats[SeatNumber] )
			end
		end
	end

	function ENT:addWheels()

		for _ , wheelTable in pairs( self.Wheels ) do

			if wheelTable.mdl then

				local e = self:addEntity( "prop_physics" )

				e:SetModel( wheelTable.mdl )
				e:SetPos( self:LocalToWorld( wheelTable.pos ) )

				if wheelTable.ang then

					e:SetAngles( wheelTable.ang )

				else

					e:SetAngles( self:GetAngles( ) )

				end

				e:Spawn( )
				e:Activate( )

				local wheelPhysics = e:GetPhysicsObject( )

				if wheelTable.mass then

					wheelPhysics:SetMass( wheelTable.mass )

				else

					wheelPhysics:SetMass( wheelTable.mdl:GetMass( ) )

				end

				wheelPhysics:EnableDrag( false )

				constraint.Axis( e , self , 0 , 0 , Vector(0,0,0) , self:WorldToLocal( e:LocalToWorld( Vector( 0 , 1 , 0 ) ) ) , 0 , 0 , wheelTable.friction , 1 )

				table.insert( self.wheels , e )

				self:AddOnRemove( e )
				
			end
			
		end
		
	end

	function ENT:fireWeapon( bool , i )
		if !self.Seats[i].weapons then return end
		local pod = self.weapons[self.Seats[i].weapons[self.seats[i].activeProfile]]
		--if !self.Seats[i].weaponsPrimary then return end
		--local pod = self.weaponsPrimary[self.Seats[i].weaponsPrimary[self.seats[i].activeProfile]]
		if !pod then return end
		pod.shouldFire = bool
		pod:trigger(bool, self.seats[i])
	end

	function ENT:nextWeapon( i , p )
		if !self.Seats[i].weapons then return end
		--if !self.Seats[i].weaponsPrimary then return end
		local seat = self.seats[i]
		local Seat = self.Seats[i]

		local pod = self.weapons[Seat.weapons[seat.activeProfile]]
		--local pod = self.weaponsPrimary[Seat.weaponsPrimary[seat.activeProfile]]
		if pod then
			pod:select(false)
			pod.seat = nil
		end

		if seat.activeProfile == #Seat.weapons then
		--if seat.activeProfile == #Seat.weaponsPrimary then
			seat.activeProfile = 0
		else
			seat.activeProfile = seat.activeProfile + 1
		end
		
		if Seat.weapons[seat.activeProfile] then
		--if Seat.weaponsPrimary[seat.activeProfile] then
		
			local weaponPrimary = self.weapons[Seat.weapons[seat.activeProfile]]
			--local weaponPrimary = self.weaponsPrimary[Seat.weaponsPrimary[seat.activeProfile]]
			weaponPrimary:select(true)
			weaponPrimary.seat = seat
		end
		self:SetNWInt("seat_"..i.."_activePrimaryWeapon", seat.activeProfile)
	end

	function ENT:nextSecondaryWeapon( i , p )

		if !self.Seats[i].weaponsSec then return end
		local seat = self.seats[i]
		local Seat = self.Seats[i]

		local pod = self.weaponsSec[Seat.weaponsSec[seat.activeProfile]]
		if pod then
			pod:select(false)
			pod.seat = nil
		end

		if seat.activeProfile == #Seat.weaponsSec then
			seat.activeProfile = 0
		else
			seat.activeProfile = seat.activeProfile + 1
		end
		if Seat.weaponsSec[seat.activeProfile] then
			local weaponPrimary = self.weaponsSec[Seat.weaponsSec[seat.activeProfile]]
			weaponPrimary:select(true)
			weaponPrimary.seat = seat
		end
		self:SetNWInt("seat_"..i.."_actwepSec", seat.activeProfile)
	end

	function ENT:EjectPassenger( ply , idx , t )
		if !idx then
			for k,p in pairs(self.passengers) do
				if p==ply then idx=k end
			end
			if !idx then
				return
			end
		end
		ply.LastVehicleEntered = CurTime()+0.5
		ply:ExitVehicle()
		ply:SetPos(self:LocalToWorld(self.Seats[idx].exit))
		ply:SetVelocity(self:GetPhysicsObject():GetVelocity()*1.2)
		ply:SetEyeAngles((self:LocalToWorld(self.Seats[idx].pos-Vector(0,0,40))-ply:GetPos()):Angle())
		self:updateSeats()
	end

	function ENT:Use( act , cal )
		if self.disabled then return end
		if act.vnt and act.vnt.lastEnter and act.vnt.lastEnter+0.5 > CurTime() then return end
		local d = self.MaxEnterDistance
		local v
		for k, veh in pairs(self.seats) do
			if veh and veh:IsValid() then
				local psngr = veh:GetPassenger(0)
				if !psngr or !psngr:IsValid() then
					local dist = veh:GetPos():Distance(util.QuickTrace(act:GetShootPos(),act:GetAimVector()*self.MaxEnterDistance,act).HitPos)
					if dist < d then
						d = dist
						v = veh
					end
				end
			end
		end
		act.vnt = act.vnt or {}
		act.vnt.lastEnter = CurTime()
		if v then
			act:EnterVehicle(v)
		end
		self:updateSeats()
	end

	function ENT:updateSeats( )

		for k, veh in pairs(self.seats) do

			if not veh:IsValid() then return end
	
			local p = veh:GetPassenger(0)

			if self.passengers[k] != p then

				if IsValid(self.passengers[k]) then

					self.passengers[k]:SetNWEntity("vnt_vehicle", NULL)

				end

				self:SetNWEntity("passenger_"..k, p)
				self.passengers[k] = p

				if IsValid(p) then

					p:SetNWInt("vnt_passenger_id",k)
					p.vnt = p.vnt or {}
					p.vnt.mouseInput = true
					net.Start("vnt.vehicle.updateWeapons")
					net.WriteEntity(self)
					--net.WriteInt(table.Count(self.weaponsPrimary), 8)
					net.WriteInt(table.Count(self.weapons), 8)

					--for name, weaponPrimary in pairs(self.weaponsPrimary) do
					for name, weaponPrimary in pairs(self.weapons) do

						net.WriteString(name)
						net.WriteEntity(weaponPrimary)

					end

					net.Send(p)

				end

			end

		end

		if not IsValid(self.seats[1]:GetDriver()) then

			self.controls.pitch = 0
			self.controls.yaw = 0
			self.controls.roll = 0

		end

		self:GetSwitcher():updateSeats()

	end

	function ENT:StopAllSounds( )
		for k, s in pairs(self.sounds) do
			s:Stop()
		end
	end

	function ENT:RocketAlert( )
		if self.rotorRPM > 0.1 then
			local b=false
			local rockets = ents.FindByClass("rpg_missile")
			table.Merge(rockets, ents.FindByClass("vnt_w_rocket"))
			for _, e in pairs(rockets) do
				if e:GetPos():Distance(self:GetPos()) < 2000 then b = true break end
			end
			if self.sounds.MissileAlert:IsPlaying() then
				if !b then
					self.sounds.MissileAlert:Stop()
				end
			elseif b then
				self.sounds.MissileAlert:Play()
			end
		end
	end

	function ENT:setVar( name , var )
		if self:GetNWFloat(name) != var then
			self:SetNWFloat(name, var)
		end
	end

	function ENT:Think( )
		local crt = CurTime()
		if !self.disabled then
			if self.nextUpdate<crt then
				if self.phys and self.phys:IsValid() then
					self.phys:Wake()
				end

				--[[
				if IsValid(self.camera) then
					local p = self.seats[self.Camera.seat]:GetDriver()
					if IsValid(p) then
						local view = self:WorldToLocalAngles(p:GetAimVector():Angle())
						local ang = Angle(self.Camera.restrictPitch and 0 or view.p, self.Camera.restrictYaw and 0 or view.y, 0)
						if self.Camera.minAng then
							ang.p = (ang.p > self.Camera.minAng.p and ang.p or self.Camera.minAng.p)
							ang.y = (ang.y > self.Camera.minAng.y and ang.y or self.Camera.minAng.y)
						end
						if self.Camera.maxAng then
							ang.p = (ang.p < self.Camera.maxAng.p and ang.p or self.Camera.maxAng.p)
							ang.y = (ang.y < self.Camera.maxAng.y and ang.y or self.Camera.maxAng.y)
						end
						self.camera:SetAngles(self:LocalToWorldAngles(ang))
					end
				end
				]]

				local target = math.floor(math.Clamp(self.rotorRPM, 0, 0.99)*3)

				if self.bodyGroup != target then

					self.bodyGroup = target
					
					if IsValid( self ) then
					
						if IsValid( self.RotorEntities ) then

							for Integer = 1 , #self.RotorEntities do
							
								local bodygroup = math.Remap( self.rotorRPM , 0 , 1 , 0 , self.RotorEntities[EntryNumber]:GetModel( ):GetNumBodyGroups( ) )

								self.RotorEntities[EntryNumber]:SetBodygroup( 1 , self.bodyGroup )
								
								if Integer > #self.RotorEntities then
								
									break
								
								end
								
							end
							
						end

						if IsValid( self.toprotor ) then

							local bodygroup = math.Remap( self.rotorRPM , 0 , 1 , 0 , self.toprotor:GetModel( ):GetNumBodyGroups( ) )

							self.toprotor:SetBodygroup( 1 , self.bodyGroup )

						end

						if IsValid( self.backrotor ) then

							local bodygroup = math.Remap( self.rotorRPM , 0 , 1 , 0 , self.backrotor:GetModel( ):GetNumBodyGroups( ) )

							self.backrotor:SetBodygroup( 1 , self.bodyGroup )

						end

					end
					
					--[[
					if self.topRotor and IsValid(self.topRotor.vis) then
						self.topRotor.vis:SetBodygroup(1, self.bodyGroup)
					end
					if IsValid(self.backRotor) then
						self.backRotor:SetBodygroup(1, self.bodyGroup)
					end
					--]]

				end

				if self.skin != self:GetSkin() then
					self.skin = self:GetSkin()
					self:updateSkin(self.skin)
				end

				if self.Burning then
					self:DamageEngine(0.1)
				end

				-- Create rotor wash
				if self.EnableRotorWash then

					if self.rotorRPM > 0.6 then

						if IsValid( self.RotorEntities ) then

							for RotorNumber = 1 , #self.RotorEntities do
							
								if self.RotorEntities[RotorNumber].RotorWash then
									
									self.RotorWashFX = ents.Create("env_rotorwash_emitter")
									self.RotorWashFX:SetPos( self.RotorEntities[RotorNumber]:GetPos( ) )
									self.RotorWashFX:SetParent( self.RotorEntities[RotorNumber] )
									self.RotorWashFX:Spawn( )
									self.RotorWashFX:Activate( )

								end
								
								if RotorNumber > #self.RotorEntities then
								
									break
									
								end

							end
							
						end

						if IsValid( self.toprotor ) then

							self.RotorWashFX = ents.Create("env_rotorwash_emitter")
							self.RotorWashFX:SetPos( self.toprotor:GetPos( ) )
							self.RotorWashFX:SetParent( self.toprotor )
							self.RotorWashFX:Spawn( )
							self.RotorWashFX:Activate( )

						end

						if self.TwinBladed and IsValid( self.backrotor ) then

							self.RotorWashFX = ents.Create("env_rotorwash_emitter")
							self.RotorWashFX:SetPos( self.backrotor:GetPos( ) )
							self.RotorWashFX:SetParent( self.backrotor )
							self.RotorWashFX:Spawn( )
							self.RotorWashFX:Activate( )

						end

					else

						if self.RotorWashFX then

							self.RotorWashFX:Remove()
							self.RotorWashFX = nil

						end

					end

				end

				self:RocketAlert()

				if self.Smoke then
					self.Smoke:SetKeyValue("renderamt", tostring(math.Clamp(self.rotorRPM*170, 0, 200)))
					self.Smoke:SetKeyValue("Speed", tostring(50+self.rotorRPM*50))
					self.Smoke:SetKeyValue("JetLength", tostring(50+self.rotorRPM*50))
				end
				self:updateSeats()
				self.nextUpdate = crt+0.1
			end
			
			self:setVar("rotorRPM", math.Clamp(self.rotorRPM, 0, 150))
			self:setVar("engineRPM", self.engineRPM)
			self:setVar("up", self.controls.throttle)

			if self.topRotor and self.topRotor:WaterLevel() > 0 then

				self:DamageEngine(FrameTime())

			end

		end
		self:NextThink(crt)
		return true
	end

	function ENT:receiveInput( inputName , value , seat )

		--	Seat 1 Special Controls
		if seat == 1 then

			--	Input Name: "Start"
			if inputName == "Start" and value > 0.5 then
			
				-- Toggle the engine boolean
				self:setEngine( !self.active )
				
			end

			--	Input Name: "Throttle
			if inputName == "Throttle" then
			
				-- Apply the change
				self.controls.throttle = value

			end

			--	Input Name: "Pitch"
			if inputName == "Pitch" then
				
				-- Apply the pitch change
				self.controls.pitch = value
				
				-- Apply the pitch pose
				self:SetPitchPose( value )
				
			end

			-- Input Name: "Yaw"
			if inputName == "Yaw" then
			
				-- Apply the Yaw changes
				self.controls.yaw = value
				
				-- Apply the yaw pose
				self:SetRudderPose( value )
				
			end

			-- Input Name: "Roll"
			if inputName == "Roll" then
			
				-- Apply the roll changes
				self.controls.roll = value

				-- Apply the roll pose
				self:SetRollPose( value )
				
			end

			-- Input Name: "Hover"
			if inputName == "Hover" and value > 0.5 then
			
				-- toggle the hover state
				self:SetHover( !self:GetHover( ) )

			end

			-- Input Name: "FreeView"
			if inputName == "FreeView" then

				-- Change the PoV look
				self.passengers[seat].vnt.mouseInput = ( value < 0.5 )

			end
			
			-- Input Name: "Gear"
			if self.HasGear and inputName == "Gear" and value > 0.5 and self.GearDelay < CurTime( ) then
			
				--	toggle the gear state
				self:SetGear( !self.IsGearUp )
				
			end

			-- Input Name: "Flaps"
			if self.HasFlaps and inputName == "Flaps" and value > 0.5 and self.FlapDelay < CurTime( ) then
				
				self:SetFlaps( !self.AreFlapsDeployed )

			end		

			-- Input Name: "Hatch"
			if self.HasHatch and inputName == "Hatch" and value > 0.5 and self.HatchOnePoserName != nil and self.HatchOneDelay < CurTime( ) then

				--	Toggle the hatch for Seat 1
				self:SetHatch( !self.IsHatchShutOne , 1 )
				
			end

			if inputName == "Exit" and value > 0.5 and self.passengers[seat].vnt.lastEnter < CurTime() - 0.5 then

				if not self.HasHatch or ( not self.IsHatchShutOne and self.HasHatch ) then

					self:EjectPassenger(self.passengers[1])

				else 

					print( "Can't Exit Seat One - Hatch Shut!" )

					return

				end

			end

		end

		--	Seat 2 Special Controls
		if seat == 2 then

			-- Input Name: "Hatch"
			if self.HasHatch and inputName == "Hatch" and value > 0.5 and self.HatchTwoPoserName != nil and self.HatchTwoDelay < CurTime( ) then

				--	Toggle the hatch for Seat 1
				self:SetHatch( !self.IsHatchShutTwo , 2 )
				
			end

			if inputName == "Exit" and value > 0.5 and self.passengers[seat].vnt.lastEnter < CurTime() - 0.5 then

				if not self.HasHatch or ( not self.IsHatchShutTwo and self.HasHatch ) then

					self:EjectPassenger(self.passengers[2])

				else 

					print( "Can't Exit Seat Two - Hatch Shut!" )

					return

				end

			end

		end

		--	Seat 3 Special Controls
		if seat == 3 then

			if self.HasHatch and inputName == "Hatch" and value > 0.5 and self.HatchThreePoserName != nil then

				--	Toggle the hatch for Seat 2
				self:SetHatch( !self.IsHatchShutThree , 3 )
				
			end

			if inputName == "Exit" and value > 0.5 and self.passengers[seat].vnt.lastEnter < CurTime() - 0.5 then

				if not self.HasHatch or ( not self.IsHatchShutThree and self.HasHatch ) then

					self:EjectPassenger(self.passengers[3])

				else 

					print( "Can't Exit Seat Three - Hatch Shut!" )

					return

				end

			end

		end

		--	Seat 4 Special Controls
		if seat == 4 then

			if self.HasHatch and inputName == "Hatch" and value > 0.5 and self.HatchFourPoserName != nil then

				--	Toggle the hatch for Seat 2
				self:SetHatch( !self.IsHatchShutFour , 4 )
				
			end

			if inputName == "Exit" and value > 0.5 and self.passengers[seat].vnt.lastEnter < CurTime() - 0.5 then

				if not self.HasHatch or ( not self.IsHatchShutFour and self.HasHatch ) then

					self:EjectPassenger(self.passengers[4])

				else 

					print( "Can't Exit Seat Four - Hatch Shut!" )

					return

				end

			end

		end
		
		--	All-Seat Controls

		if seat > 4 then
		
			if inputName == "Exit" and value > 0.5 and self.passengers[seat].vnt.lastEnter < CurTime() - 0.5 then

				self:EjectPassenger(self.passengers[seat])
				
			end

		end

		if inputName == "FirePrimary" then
		
			self:fireWeapon(value > 0.5, seat)

		end

		if inputName == "NextPrimaryWeapon" and value > 0.5 then

			self:nextWeapon(seat, self.passengers[seat])

		end

		if self.HasDoors and inputName == "Doors" and value > 0.5 then
		
			self:SetDoors()

		end

	end

	function ENT:getSeat(player)
		for i, p in pairs(self.passengers) do
			if p == player then
				return self.seats[i]
			end
		end
	end

	function ENT:setEngine( Boolean )
		if self.disabled or self.engineDead then Boolean = false end
		if Boolean then
			if self.active then return end
			self.active = true
		elseif self.active then
			self.active=false
		end
		self:SetNWBool("active", self.active)
	end

	--[[
	function ENT:calcAerodynamics(ph)

		local dvel = self:GetVelocity():Length()
		local lvel = self:WorldToLocal(self:GetPos() + self:GetVelocity())

		local targetVelocity = (
			- self:LocalToWorld(self.Aerodynamics.Rail * lvel * dvel * dvel / 1000000000) + self:GetPos()
			+ self:LocalToWorld(
				self.Aerodynamics.Lift.Front * lvel.x * dvel / 10000000 +
				self.Aerodynamics.Lift.Right * lvel.y * dvel / 10000000 +
				self.Aerodynamics.Lift.Top * lvel.z * dvel / 10000000
			) - self:GetPos()
		) * (1 + self.arcade)

		local targetAngVel =
			(
				lvel.x*self.Aerodynamics.Rotation.Front +
				lvel.y*self.Aerodynamics.Rotation.Right +
				lvel.z*self.Aerodynamics.Rotation.Top
			) / 10000 / (1 + self.arcade)
			- ph:GetAngleVelocity()*self.Aerodynamics.AngleDrag*(1+self.arcade*2)

		return targetVelocity, targetAngVel
	end
	--]]

	function ENT:calcAerodynamics( PhysicsObject )

		local dvel = self:GetVelocity():Length()
		local lvel = self:WorldToLocal(self:GetPos() + self:GetVelocity())
		
		local targetVelocity = (
			- self:LocalToWorld(self.Aerodynamics.Rail * lvel * dvel * dvel / 1000000000) + self:GetPos()
			+ self:LocalToWorld(
				self.Aerodynamics.Movement.Pitch * lvel.x * dvel / 10000000 +
				self.Aerodynamics.Movement.Roll * Vector(math.abs(lvel.y),lvel.y,lvel.y) * dvel / 10000000 +
				self.Aerodynamics.Movement.Yaw * lvel.z * dvel / 10000000
			) - self:GetPos()
		)

		local targetAngVel =
			(
				lvel.x*self.Aerodynamics.Rotation.Pitch +
				lvel.y*self.Aerodynamics.Rotation.Roll +
				lvel.z*self.Aerodynamics.Rotation.Yaw
			) / 10000 - PhysicsObject:GetAngleVelocity()*self.Aerodynamics.Drag.Angular

		return targetVelocity, targetAngVel

	end

	function ENT:calcHover( ph , pos , vel , ang )
		if self:GetHover() then
			local v=self:WorldToLocal(pos+vel)
			local av=ph:GetAngleVelocity()
			if !self.EasyMode then
				return{
					p = math.Clamp(-ang.p*0.6-av.y*0.6-v.x*0.025,-0.65,0.65),
					r = math.Clamp(-ang.r*0.6-av.x*0.6+v.y*0.025,-0.65,0.65),
					t = math.Clamp(-v.z*0.3, -0.65, 0.65)
				}
			else
				return{
					p = math.Clamp(-ang.p*0.3-av.y*0.1-v.x*0.005,-0.1,0.1),
					r = math.Clamp(-ang.r*0.6-av.x*0.8+v.y*0.045,-0.6,0.6),
					t = math.Clamp(-v.z*0.3, -0.65, 0.65)
				}
			end
		else
			return {p=0,r=0,t=0}
		end
	end

	-- wac_aircraft_maintenance within 500 units calls this every second
	function ENT:maintenance( )
		if self.disabled then return end
		local repaired = false
		local rearmed = false
		if IsValid(self.backRotor) and self.backRotor.fHealth < self.BackRotor.health then
			self.backRotor.fHealth = math.Approach(self.backRotor.fHealth, self.BackRotor.health, 5)
			repaired = true
		end
		if IsValid(self.topRotor) and self.topRotor.fHealth < self.BackRotor.health then
			self.topRotor.fHealth = math.Approach(self.topRotor.fHealth, self.TopRotor.health, 6)
			repaired = true
		end
		if self.EngineHealth < self.EngineHealth then
			self.EngineHealth = math.Approach(self.EngineHealth, self.EngineHealth, 10)
			repaired = true
		end
		
		if self.weapons then
		--if self.weaponsPrimary then
		
			for _, w in pairs(self.weapons) do
			--for _, w in pairs(self.weaponsPrimary) do
				if w:GetAmmo() != w.Ammo then
					w:SetAmmo(math.Approach(w:GetAmmo(), w.Ammo, w.FireRate/60))
					rearmed = true
				end
			end
		end
		if rearmed then
			--self:EmitSound("items/ammo_pickup.wav", 100, 100)
			sound.Play( "VNT.Misc.Repair.Small" , self:GetPos() )
		end
		if repaired then
			--self:EmitSound("v92/repair_loop.wav", 100, 100)
			sound.Play( "VNT.Reload.Belt" , self:GetPos() )
		end
	end

	function ENT:PhysicsCollide( cdat , phys )
		if vnt.vehicle.cvars.nodamage:GetInt() == 1 then
			return
		end
		if cdat.DeltaTime > 0.5 then
			local mass = cdat.HitObject:GetMass()
			if cdat.HitEntity:GetClass() == "worldspawn" then
				mass = 5000
			end
			local dmg = (cdat.Speed*cdat.Speed*math.Clamp(mass, 0, 5000))/10000000
			if not dmg or dmg < 1 then return end
			self:TakeDamage(dmg*15)
			if dmg > 2 then
				--self:EmitSound("vehicles/v8/vehicle_impact_heavy"..math.random(1,4)..".wav")
				sound.Play( "EP2.V8.Impact_Heavy" , self:GetPos() )
				local lasta=(self.LastDamageTaken<CurTime()+6 and self.LastAttacker or self)
				for k, p in pairs(self.passengers) do
					if p and p:IsValid() then
						p:TakeDamage(dmg/5, lasta, self)
					end
				end
			end
		end
	end

	function ENT:DamageSmallRotor( amt )
		if vnt.vehicle.cvars.nodamage:GetInt() == 1 then
			return
		end
		if amt < 1 then return end
		if self.backRotor and self.backRotor:IsValid() then
			self.backRotor:EmitSound("physics/metal/metal_box_impact_bullet"..math.random(1,3)..".wav", math.Clamp(amt*40,20,200))
			self.backRotor.fHealth = self.backRotor.fHealth - amt
			self.backRotor.Phys:AddAngleVelocity(self.backRotor.Phys:GetAngleVelocity()*-amt/50)
			if self.backRotor.fHealth < 0 then
				self:KillBackRotor()
				if not self.sounds.CrashAlarm:IsPlaying() and not self.disabled then
					self.sounds.CrashAlarm:Play()
				end
			end
			if self.backRotor then
				self:SetNWFloat("rotorhealth", self.backRotor.fHealth)
			else
				self:SetNWFloat("rotorhealth", -1)
			end
			self:DamageEngine(amt/10)
		end
	end

	function ENT:KillBackRotor( )

		if not self.backRotor then

			return

		end

		local e = self:addEntity("prop_physics")
		e:SetAngles(self.backRotor:GetAngles())
		e:SetPos(self.backRotor:GetPos())
		e:SetModel(self.backRotor:GetModel())
		e:SetSkin(self.backRotor:GetSkin())
		e:Spawn()
		e:SetVelocity(self.backRotor:GetVelocity())
		e:GetPhysicsObject():AddAngleVelocity(self.backRotor.Phys:GetAngleVelocity())
		e:GetPhysicsObject():SetMass(self.backRotor.Phys:GetMass())
		self.backRotor:Remove()
		self.backRotor = nil
		timer.Simple(60, function()

			if e and e:IsValid() then
				e:Remove()
			end
		end)
	end

	function ENT:DamageBigRotor( amt )
		if vnt.vehicle.cvars.nodamage:GetInt() == 1 then
			return
		end
		if amt < 1 then return end
		--self:EmitSound("physics/metal/metal_box_impact_bullet"..math.random(1,3)..".wav", math.Clamp(amt*40,0,100))
		sound.Play( "HL2.Physics.Metal.Box.Impact.Bullet" , self:GetPos() )
		if self.topRotor and self.topRotor:IsValid() then
			self.topRotor.fHealth = self.topRotor.fHealth - amt
			self.topRotor.Phys:AddAngleVelocity((self.topRotor.Phys:GetAngleVelocity()*-amt)*0.001)
			if self.topRotor.fHealth < 0 then
				self:KillTopRotor()
				if not self.sounds.CrashAlarm:IsPlaying() and not self.disabled then
					self.sounds.CrashAlarm:Play()
				end
			elseif self.topRotor.fHealth < 50 and not ( self.sounds.MinorAlarm:IsPlaying() or self.disabled ) then
				self.sounds.MinorAlarm:Play()
			end
			if self.topRotor then
				self:SetNWFloat("rotorhealth", self.topRotor.fHealth)
			else
				self:SetNWFloat("rotorhealth", -1)
			end
			self:DamageEngine(amt/10)
		end
	end

	function ENT:KillTopRotor( )
		if not self.topRotor then return end
		self:setEngine(false)
		local e = self:addEntity("prop_physics")
		e:SetPos(self.topRotor:GetPos())
		e:SetAngles(self.topRotor:GetAngles())
		e:SetModel(self.TopRotor.model)
		e:SetSkin(self.topRotor.vis:GetSkin())
		e:Spawn()
		self:SetNWFloat("up",0)
		self:SetNWFloat("uptime",0)
		self.rotorRPM = 0
		local ph = e:GetPhysicsObject()
		e.VehicleIgnoresItself=true
		if ph:IsValid() then
			ph:SetMass(1000)
			ph:EnableDrag(false)
			ph:AddAngleVelocity(self.topRotor.Phys:GetAngleVelocity())
			ph:SetVelocity(self.topRotor.Phys:GetAngleVelocity():Length()*self.topRotor:GetUp()*0.5 + self.topRotor:GetVelocity())
		end
		self.topRotor:Remove()
		self.topRotor = nil
		e:SetNotSolid( false )
		e:DrawShadow( true )
		e:SetParent( nil )
		constraint.RemoveAll( e ) -- Remove the constraints
		

		timer.Simple(60, function()
		
			if not ( e or IsValid( e ) ) then 
				
				return 
				
			end
			
			SafeRemoveEntity( e )

		end)

	end
	--[###] Rotor Damage

	function ENT:OnTakeDamage( dmg )
		if vnt.vehicle.cvars.nodamage:GetInt() == 1 then
			return
		end
		if !dmg:IsExplosionDamage() then
			dmg:ScaleDamage(0.10)
		end
		local rdmg = dmg:GetDamage()
		self:DamageEngine(rdmg/3)
		local pos=self:WorldToLocal(dmg:GetDamagePosition())
		if pos:Distance(self.TopRotor.pos)<40 then
			self:DamageBigRotor(rdmg/15)	
		end
		if pos:Distance(self.BackRotor.pos)<70 then
			self:DamageSmallRotor(rdmg/2)
		end
		self.LastAttacker=dmg:GetAttacker()
		self.LastDamageTaken=CurTime()
		self:TakePhysicsDamage(dmg)
		
		if self.disabled then
		
			self:KillTopRotor()

			if SERVER then
			
				if self.GibModelOne != nil and not self.HasCreatedGibs then

					self:CreateGibs()
				
				end
			
			end
			
			--[[
			for k,v in pairs(self.Wheels) do
				if IsValid(v) then
					constraint.NoCollide(self,v,0,0)
				end
			end
			--]]

		end
		
	end

	function ENT:DamageEngine( amt )
		if vnt.vehicle.cvars.nodamage:GetInt() == 1 then
			return
		end
		if self.disabled then return end
		self.EngineHealth = self.EngineHealth - amt

		if self.EngineHealth < 80  then
		if !self.sounds.MinorAlarm:IsPlaying() then
			self.sounds.MinorAlarm:Play()
		end
		if !self.Smoke and self.EngineHealth>0 then
			self.Smoke = self:CreateSmoke()
		end

		if self.EngineHealth < 50 then
			if !self.sounds.LowHealth:IsPlaying() then
				self.sounds.LowHealth:Play()
			end
			self:setEngine(false)
			self.engineDead = true

			if self.EngineHealth < 20 and !self.EngineFire then
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self:LocalToWorld(self.FirePos))
				fire:Spawn()
				fire:SetParent(self)
				self.Burning = true
				self.sounds.LowHealth:Play()
				self.EngineFire = fire
			end

			if self.EngineHealth < 0 and !self.disabled then
				self.disabled = true
				self.engineRPM = 0
				self.rotorRPM = 0
				local lasta=(self.LastDamageTaken<CurTime()+6 and self.LastAttacker or self)
				for k, p in pairs(self.passengers) do
					if p and p:IsValid() then
						p:TakeDamage(p:Health() + 20, lasta, self)
					end
				end

				for k,v in pairs(self.seats) do
					v:Remove()
				end
				self.passengers={}
				self:StopAllSounds()

				self:setVar("rotorRPM", 0)
				self:setVar("engineRPM", 0)
				self:setVar("up", 0)

				self.IgnoreDamage = false
				--[[ this affects the base class
					for name, vec in pairs(self.Aerodynamics.Rotation) do
						vec = VectorRand()*100
					end
					for name, vec in pairs(self.Aerodynamics.Lift) do
						vec = VectorRand()
					end
					self.Aerodynamics.Rail = Vector(0.5, 0.5, 0.5)
				]]
				local effectdata = EffectData()
				effectdata:SetStart(self:GetPos())
				effectdata:SetOrigin(self:GetPos())
				effectdata:SetScale(1)
				util.Effect("Explosion", effectdata)
				util.Effect("HelicopterMegaBomb", effectdata)
				util.Effect("cball_explode", effectdata)
				util.BlastDamage(self, self, self:GetPos(), 300, 300)
				self:setEngine(false)
				if self.Smoke then
					self.Smoke:Remove()
					self.Smoke=nil
				end
				if self.RotorWash then
					self.RotorWash:Remove()
					self.RotorWash=nil
				end
				self:SetNWBool("locked", true)
			end
		end
	end
		if self.Smoke then
			local rcol = math.Clamp(self.EngineHealth*3.4, 0, 170)
			self.Smoke:SetKeyValue("rendercolor", rcol.." "..rcol.." "..rcol)
		end
		self:SetNWFloat("health", self.EngineHealth)
	end

	function ENT:CreateSmoke( )
		local smoke = ents.Create("env_smokestack")
		smoke:SetPos(self:LocalToWorld(self.SmokePos))
		smoke:SetAngles(self:GetAngles()+Angle(-90,0,0))
		smoke:SetKeyValue("InitialState", "1")
		smoke:SetKeyValue("WindAngle", "0 0 0")
		smoke:SetKeyValue("WindSpeed", "0")
		smoke:SetKeyValue("rendercolor", "170 170 170")
		smoke:SetKeyValue("renderamt", "170")
		smoke:SetKeyValue("SmokeMaterial", "particle/smokesprites_0001.vmt")
		smoke:SetKeyValue("BaseSpread", "2")
		smoke:SetKeyValue("SpreadSpeed", "2")
		smoke:SetKeyValue("Speed", "50")
		smoke:SetKeyValue("StartSize", "10")
		smoke:SetKeyValue("EndSize", "50")
		smoke:SetKeyValue("roll", "10")
		smoke:SetKeyValue("Rate", "15")
		smoke:SetKeyValue("JetLength", "50")
		smoke:SetKeyValue("twist", "5")
		smoke:Spawn()
		smoke:SetParent(self)
		smoke:Activate()
		return smoke
	end

	function ENT:AddOnRemove( f )
		if type(f)=="function" then
			table.insert(self.OnRemoveFunctions,f)	
		elseif type(f)=="Entity" or type(f)=="Vehicle" then
			table.insert(self.OnRemoveEntities,f)
		end
	end

	function ENT:OnRemove( )
		self:StopAllSounds()
		for _,p in pairs(self.passengers) do
			if IsValid(p) then
				p:SetNWInt("vnt_passenger_id",0)
			end
		end
		for _,f in pairs(self.OnRemoveFunctions) do
			f()
		end
		for _,e in pairs(self.OnRemoveEntities) do
			if IsValid(e) then e:Remove() end
		end
	end

	function ENT:CreateGibs( )

		local phys = self:GetPhysicsObject() -- Get the main hull physics object
		
		--	if phys is valid and we're disabled
		if IsValid(phys) and self.disabled then
		
			--	if we have a wheels table
			if self.wheels then
			
				--	loop through the wheels, from 1 to max
				for i = 1 , #self.Wheels do 

					self.wheels[i]:GetPhysicsObject():EnableDrag( true ) -- Start gravity
					self.wheels[i]:GetPhysicsObject():EnableGravity( true ) -- Start gravity
					self.wheels[i]:DrawShadow( true ) -- draw the shadows
					self.wheels[i]:SetNoDraw( false ) -- draw them
					self.wheels[i]:SetSolid( SOLID_VPHYSICS ) -- Set it solid

					constraint.RemoveAll( self.wheels[i] ) -- Remove the constraints

				end

			end

			if self.GibModelOne != nil then

				self.GibletOne = ents.Create("prop_physics")
				self.GibletOne:SetModel( self.GibModelOne )
				self.GibletOne:SetSkin(self:GetSkin())
				self.GibletOne:SetLocalPos(self:GetPos())
				self.GibletOne:SetAngles(self:GetAngles())
				self.GibletOne:Spawn()
				self.GibletOne:Activate()
				self.GibletOne:GetPhysicsObject():SetMass( 500 )
				--self.GibletOne:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletOne:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletOne:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletOne)
				self.GibletOne.fire=fire
				constraint.NoCollide(self,self.GibletOne,0,0)
				self:AddOnRemove(self.GibletOne.fire)
				--]]
				self:AddOnRemove(self.GibletOne)

				self:SetParent( self.GibletOne )
				self:GetPhysicsObject():EnableGravity( false )
				self:GetPhysicsObject():EnableDrag( false )
				self:GetPhysicsObject():SetMass( 10 )
				self:SetNoDraw( true )
				self:DrawShadow( false )
				self:SetSolid( SOLID_NONE ) -- Hide our base solid because we're replacing it with giblet one
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self)
				self.fire = fire
				self:AddOnRemove(self.fire)
				--]]

			end
			
			if self.GibModelTwo != nil then
			
				self.GibletTwo = ents.Create("prop_physics")
				self.GibletTwo:SetModel( self.GibModelTwo )
				self.GibletTwo:SetSkin(self:GetSkin())
				self.GibletTwo:SetLocalPos(self:GetPos())
				self.GibletTwo:SetAngles(self:GetAngles())
				self.GibletTwo:Spawn()
				self.GibletTwo:Activate()
				self.GibletTwo:GetPhysicsObject():SetMass( 500 )
				--self.GibletTwo:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletTwo:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletTwo:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletTwo)
				self.GibletTwo.fire=fire
				constraint.NoCollide(self,self.GibletTwo,0,0)
				self:AddOnRemove(self.GibletTwo.fire)
				--]]
				self:AddOnRemove(self.GibletTwo)
				
			end

			if self.GibModelThree != nil then
			
				self.GibletThree = ents.Create("prop_physics")
				self.GibletThree:SetModel( self.GibModelThree )
				self.GibletThree:SetSkin(self:GetSkin())
				self.GibletThree:SetLocalPos(self:GetPos())
				self.GibletThree:SetAngles(self:GetAngles())
				self.GibletThree:Spawn()
				self.GibletThree:Activate()
				self.GibletThree:GetPhysicsObject():SetMass( 500 )
				--self.GibletThree:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletThree:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletThree:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletThree)
				self.GibletThree.fire=fire
				constraint.NoCollide(self,self.GibletThree,0,0)
				self:AddOnRemove(self.GibletThree.fire)
				--]]
				self:AddOnRemove(self.GibletThree)
				
			end

			if self.GibModelFour != nil then
			
				self.GibletFour = ents.Create("prop_physics")
				self.GibletFour:SetModel( self.GibModelFour )
				self.GibletFour:SetSkin(self:GetSkin())
				self.GibletFour:SetLocalPos(self:GetPos())
				self.GibletFour:SetAngles(self:GetAngles())
				self.GibletFour:Spawn()
				self.GibletFour:Activate()
				self.GibletFour:GetPhysicsObject():SetMass( 500 )
				--self.GibletFour:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletFour:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletFour:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletFour)
				self.GibletFour.fire=fire
				constraint.NoCollide(self,self.GibletFour,0,0)
				self:AddOnRemove(self.GibletFour.fire)
				--]]
				self:AddOnRemove(self.GibletFour)
				
			end

			if self.GibModelFive != nil then
			
				self.GibletFive = ents.Create("prop_physics")
				self.GibletFive:SetModel( self.GibModelFive )
				self.GibletFive:SetSkin(self:GetSkin())
				self.GibletFive:SetLocalPos(self:GetPos())
				self.GibletFive:SetAngles(self:GetAngles())
				self.GibletFive:Spawn()
				self.GibletFive:Activate()
				self.GibletFive:GetPhysicsObject():SetMass( 500 )
				--self.GibletFive:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletFive:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletFive:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletFive)
				self.GibletFive.fire=fire
				constraint.NoCollide(self,self.GibletFive,0,0)
				self:AddOnRemove(self.GibletFive.fire)
				--]]
				self:AddOnRemove(self.GibletFive)
				
			end

			if self.GibModelSix != nil then
			
				self.GibletSix = ents.Create("prop_physics")
				self.GibletSix:SetModel( self.GibModelSix )
				self.GibletSix:SetSkin(self:GetSkin())
				self.GibletSix:SetLocalPos(self:GetPos())
				self.GibletSix:SetAngles(self:GetAngles())
				self.GibletSix:Spawn()
				self.GibletSix:Activate()
				self.GibletSix:GetPhysicsObject():SetMass( 500 )
				--self.GibletSix:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletSix:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletSix:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletSix)
				self.GibletSix.fire=fire
				constraint.NoCollide(self,self.GibletSix,0,0)
				self:AddOnRemove(self.GibletSix.fire)
				--]]
				self:AddOnRemove(self.GibletSix)
				
			end

			if self.GibModelSeven != nil then
			
				self.GibletSeven = ents.Create("prop_physics")
				self.GibletSeven:SetModel( self.GibModelSeven )
				self.GibletSeven:SetSkin(self:GetSkin())
				self.GibletSeven:SetLocalPos(self:GetPos())
				self.GibletSeven:SetAngles(self:GetAngles())
				self.GibletSeven:Spawn()
				self.GibletSeven:Activate()
				self.GibletSeven:GetPhysicsObject():SetMass( 500 )
				--self.GibletSeven:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletSeven:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletSeven:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletSeven)
				self.GibletSeven.fire=fire
				constraint.NoCollide(self,self.GibletSeven,0,0)
				self:AddOnRemove(self.GibletSeven.fire)
				--]]
				self:AddOnRemove(self.GibletSeven)
				
			end

			if self.GibModelEight != nil then
			
				self.GibletEight = ents.Create("prop_physics")
				self.GibletEight:SetModel( self.GibModelEight )
				self.GibletEight:SetSkin(self:GetSkin())
				self.GibletEight:SetLocalPos(self:GetPos())
				self.GibletEight:SetAngles(self:GetAngles())
				self.GibletEight:Spawn()
				self.GibletEight:Activate()
				self.GibletEight:GetPhysicsObject():SetMass( 500 )
				--self.GibletEight:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletEight:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletEight:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletEight)
				self.GibletEight.fire=fire
				constraint.NoCollide(self,self.GibletEight,0,0)
				self:AddOnRemove(self.GibletEight.fire)
				--]]
				self:AddOnRemove(self.GibletEight)
				
			end

			if self.GibModelNine != nil then
			
				self.GibletNine = ents.Create("prop_physics")
				self.GibletNine:SetModel( self.GibModelNine )
				self.GibletNine:SetSkin(self:GetSkin())
				self.GibletNine:SetLocalPos(self:GetPos())
				self.GibletNine:SetAngles(self:GetAngles())
				self.GibletNine:Spawn()
				self.GibletNine:Activate()
				self.GibletNine:GetPhysicsObject():SetMass( 500 )
				--self.GibletNine:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletNine:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletNine:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletNine)
				self.GibletNine.fire=fire
				constraint.NoCollide(self,self.GibletNine,0,0)
				self:AddOnRemove(self.GibletNine.fire)
				--]]
				self:AddOnRemove(self.GibletNine)
				
			end

			if self.GibModelTen != nil then
			
				self.GibletTen = ents.Create("prop_physics")
				self.GibletTen:SetModel( self.GibModelTen )
				self.GibletTen:SetSkin(self:GetSkin())
				self.GibletTen:SetLocalPos(self:GetPos())
				self.GibletTen:SetAngles(self:GetAngles())
				self.GibletTen:Spawn()
				self.GibletTen:Activate()
				self.GibletTen:GetPhysicsObject():SetMass( 500 )
				--self.GibletTen:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletTen:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletTen:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletTen)
				self.GibletTen.fire=fire
				constraint.NoCollide(self,self.GibletTen,0,0)
				self:AddOnRemove(self.GibletTen.fire)
				--]]
				self:AddOnRemove(self.GibletTen)
				
			end

			if self.GibModelEleven != nil then
			
				self.GibletEleven = ents.Create("prop_physics")
				self.GibletEleven:SetModel( self.GibModelEleven )
				self.GibletEleven:SetSkin(self:GetSkin())
				self.GibletEleven:SetLocalPos(self:GetPos())
				self.GibletEleven:SetAngles(self:GetAngles())
				self.GibletEleven:Spawn()
				self.GibletEleven:Activate()
				self.GibletEleven:GetPhysicsObject():SetMass( 500 )
				--self.GibletEleven:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletEleven:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletEleven:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletEleven)
				self.GibletEleven.fire=fire
				constraint.NoCollide(self,self.GibletEleven,0,0)
				self:AddOnRemove(self.GibletEleven.fire)
				--]]
				self:AddOnRemove(self.GibletEleven)
				
			end

			if self.GibModelTwelve != nil then
			
				self.GibletTwelve = ents.Create("prop_physics")
				self.GibletTwelve:SetModel( self.GibModelTwelve )
				self.GibletTwelve:SetSkin(self:GetSkin())
				self.GibletTwelve:SetLocalPos(self:GetPos())
				self.GibletTwelve:SetAngles(self:GetAngles())
				self.GibletTwelve:Spawn()
				self.GibletTwelve:Activate()
				self.GibletTwelve:GetPhysicsObject():SetMass( 500 )
				--self.GibletTwelve:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletTwelve:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletTwelve:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletTwelve)
				self.GibletTwelve.fire=fire
				constraint.NoCollide(self,self.GibletTwelve,0,0)
				self:AddOnRemove(self.GibletTwelve.fire)
				--]]
				self:AddOnRemove(self.GibletTwelve)
				
			end

			if self.GibModelThirteen != nil then
			
				self.GibletThirteen = ents.Create("prop_physics")
				self.GibletThirteen:SetModel( self.GibModelThirteen )
				self.GibletThirteen:SetSkin(self:GetSkin())
				self.GibletThirteen:SetLocalPos(self:GetPos())
				self.GibletThirteen:SetAngles(self:GetAngles())
				self.GibletThirteen:Spawn()
				self.GibletThirteen:Activate()
				self.GibletThirteen:GetPhysicsObject():SetMass( 500 )
				--self.GibletThirteen:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletThirteen:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletThirteen:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletThirteen)
				self.GibletThirteen.fire=fire
				constraint.NoCollide(self,self.GibletThirteen,0,0)
				self:AddOnRemove(self.GibletThirteen.fire)
				--]]
				self:AddOnRemove(self.GibletThirteen)
				
			end

			if self.GibModelFourteen != nil then
			
				self.GibletFourteen = ents.Create("prop_physics")
				self.GibletFourteen:SetModel( self.GibModelFourteen )
				self.GibletFourteen:SetSkin(self:GetSkin())
				self.GibletFourteen:SetLocalPos(self:GetPos())
				self.GibletFourteen:SetAngles(self:GetAngles())
				self.GibletFourteen:Spawn()
				self.GibletFourteen:Activate()
				self.GibletFourteen:GetPhysicsObject():SetMass( 500 )
				--self.GibletFourteen:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletFourteen:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletFourteen:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletFourteen)
				self.GibletFourteen.fire=fire
				constraint.NoCollide(self,self.GibletFourteen,0,0)
				self:AddOnRemove(self.GibletFourteen.fire)
				--]]
				self:AddOnRemove(self.GibletFourteen)
				
			end

			if self.GibModelFifteen != nil then
			
				self.GibletFifteen = ents.Create("prop_physics")
				self.GibletFifteen:SetModel( self.GibModelFifteen )
				self.GibletFifteen:SetSkin(self:GetSkin())
				self.GibletFifteen:SetLocalPos(self:GetPos())
				self.GibletFifteen:SetAngles(self:GetAngles())
				self.GibletFifteen:Spawn()
				self.GibletFifteen:Activate()
				self.GibletFifteen:GetPhysicsObject():SetMass( 500 )
				--self.GibletFifteen:GetPhysicsObject():AddVelocity(self:GetVelocity()+self:GetRight()*500)
				self.GibletFifteen:GetPhysicsObject():AddAngleVelocity(self:GetPhysicsObject():GetAngleVelocity())
				
				--[[
				local fire = ents.Create("env_fire_trail")
				fire:SetPos(self.GibletFifteen:LocalToWorld(Vector(0,0,0)))
				fire:Spawn()
				fire:SetParent(self.GibletFifteen)
				self.GibletFifteen.fire=fire
				constraint.NoCollide(self,self.GibletFifteen,0,0)
				self:AddOnRemove(self.GibletFifteen.fire)
				--]]
				self:AddOnRemove(self.GibletFifteen)
				
			end
			
			self.HasCreatedGibs = true
			
		end

	end

	function ENT:SetGear( )

		if IsValid( self ) then

			local gearup = self:LookupSequence( self.GearAnimations[1] ) -- Up sequence
			local geardown = self:LookupSequence( self.GearAnimations[2] ) -- Down sequence

			local phys = self:GetPhysicsObject() -- Our hull physics

			-- If the physics are valid and we're not disabled
			if IsValid(phys) and not self.disabled then

				-- if gear is down
				if not self.IsGearUp then

					--	if we have wheels
					if self.wheels then

						-- From the first wheel to the last in the sequence, hide them
						for i = self.WheelHideTable[1] , self.WheelHideTable[2] do 

							self.wheels[i]:GetPhysicsObject():EnableDrag( false ) -- Stop drag
							self.wheels[i]:GetPhysicsObject():EnableGravity( false ) -- Stop gravity
							self.wheels[i]:SetNoDraw( true ) -- set nodraw 
							self.wheels[i]:DrawShadow( false ) -- hide shadow
							self.wheels[i]:SetNotSolid( true ) -- turn off physics

						end

					end

					self.sounds.GearUpStart:Play()

					self.sounds.GearUpLoop:Play()

					self:ResetSequence( gearup )

					self.GearDelay = CurTime( ) + self:SequenceDuration() + 1
					
					GearAnim , GearAnimTime = self:LookupSequence( self.GearAnimations[1] )
					
					timer.Simple( GearAnimTime , function()
					
						if IsValid( self ) then

							if self.sounds.GearUpLoop:IsPlaying() then

								self.sounds.GearUpLoop:FadeOut( 0.5 )
								
								self.sounds.GearUpStop:Play()

							end

						end					

					end)

					self:SetPlaybackRate(1.0)

					-- if our wheel bodygroup is reversed
					if self.FlipLandingGearBG then

						self:SetBodygroup( self.GearBodyGroup , 1 ) -- set gear bodygroup

					else

						self:SetBodygroup( self.GearBodyGroup , 0 ) -- set gear bodygroup

					end

					self.IsGearUp = true
					
					return false

				else

					self.sounds.GearDownStart:Play()
					self.sounds.GearDownLoop:Play()

					self:ResetSequence( geardown )

					self.GearDelay = CurTime( ) + self:SequenceDuration() + 1
					
					self:SetPlaybackRate(1.0)
					
					GearAnim , GearAnimTime = self:LookupSequence( self.GearAnimations[2] )

					timer.Simple( GearAnimTime , function()

						if IsValid( self ) then

							--	if we have wheels
							if self.wheels then

								-- From the first wheel to the last in the sequence, hide them
								for i = self.WheelHideTable[1] , self.WheelHideTable[2] do 
									
									self.wheels[i]:SetNoDraw( false ) -- toggle nodraw
									self.wheels[i]:DrawShadow( true ) -- show shadow
									self.wheels[i]:SetNotSolid( false ) -- turn on physics
									self.wheels[i]:GetPhysicsObject():EnableDrag( true ) -- Start drag
									self.wheels[i]:GetPhysicsObject():EnableGravity( true ) -- Start gravity

									-- if our wheel bodygroup is reversed
									if self.FlipLandingGearBG then
									
										self:SetBodygroup( self.GearBodyGroup , 0 ) -- set gear bodygroup
										
									else
									
										self:SetBodygroup( self.GearBodyGroup , 1 ) -- set gear bodygroup
										
									end
									
								end

							end

							if self.sounds.GearDownLoop:IsPlaying() then

								self.sounds.GearDownLoop:FadeOut( 0.5 )

								self.sounds.GearDownStop:Play()

							end

						end

					end)
					
					self.IsGearUp = false

					return false
					
				end
				
			end

		end
		
	end

	function ENT:SetFlaps( )

		if IsValid( self ) then
			
			local phys = self:GetPhysicsObject()
			
			if IsValid(phys) and not self.disabled then

				if not self.AreFlapsDeployed then

					self.FlapDelay = CurTime( ) + 2

					timer.Create( "VNT_Vehicle_Flaps_Timer" , 0.01 , 100 , function()
					
						if IsValid( self ) then

							local CurrentStatus = self:GetPoseParameter( "flaps" )
							self:SetPoseParameter( "flaps" , CurrentStatus + 0.01 )

						end

					end)


					self:GetPhysicsObject():EnableDrag( true )

				else

					self.FlapDelay = CurTime( ) + 2
				
					timer.Create( "VNT_Vehicle_Flaps_Timer" , 0.01 , 100 , function()
					
						if IsValid( self ) then

							local CurrentStatus = self:GetPoseParameter( "flaps" )
							self:SetPoseParameter( "flaps" , CurrentStatus - 0.01 )

						end

					end)

					self:GetPhysicsObject():EnableDrag( false )

					if self.sounds.DiveBrakes:IsPlaying() then

						self.sounds.DiveBrakes:FadeOut( 2 )

					end

				end

				self.AreFlapsDeployed = !self.AreFlapsDeployed

				print( self.AreFlapsDeployed )

				return false

			end
			
		end

	end

	function ENT:SetRudderPose( Position )

		local Command = Position
		
		local phys = self:GetPhysicsObject()
		
		if IsValid(phys) and not self.disabled then
			
			
			if Command == 1 then

				timer.Create( "VNT_Vehicle_Rudder_Timer" , 0.01 , 10 , function()
				
					if IsValid( self ) then

						local CurrentStatus = self:GetPoseParameter( "yaw" )					
						self:SetPoseParameter( "yaw" , CurrentStatus + 0.1 )

					end

				end)

			elseif Command == -1 then

				timer.Create( "VNT_Vehicle_Rudder_Timer" , 0.01 , 10 , function()

					if IsValid( self ) then

						local CurrentStatus = self:GetPoseParameter( "yaw" )					
						self:SetPoseParameter( "yaw" , CurrentStatus - 0.1 )

					end
				
				end)

			else
			
				timer.Create( "VNT_Vehicle_Rudder_Timer" , 0.01 , 10 , function()
		
					if IsValid( self ) then

						local CurrentStatus = self:GetPoseParameter( "yaw" )

						if CurrentStatus > 0 then

							self:SetPoseParameter( "yaw" , CurrentStatus - 0.1 )

						elseif CurrentStatus < 0 then

							self:SetPoseParameter( "yaw" , CurrentStatus + 0.1 )

						else

							self:SetPoseParameter( "yaw" , 0 )

						end
						
					end

				end)

			end

		end

	end

	function ENT:SetPitchPose( Position )

		local Command = Position
		
		local Physics = self:GetPhysicsObject()
		
		if IsValid( Physics ) then
			
			
			if Command == 1 then

				timer.Create( "VNT_Vehicle_Pitch_Timer" , 0.01 , 10 , function()
				
					if IsValid( self ) then

						local CurrentStatus = self:GetPoseParameter( "pitch" )					
						self:SetPoseParameter( "pitch" , CurrentStatus + 0.1 )

					end

				end)

			elseif Command == -1 then

				timer.Create( "VNT_Vehicle_Pitch_Timer" , 0.01 , 10 , function()

					if IsValid( self ) then

						local CurrentStatus = self:GetPoseParameter( "pitch" )					
						self:SetPoseParameter( "pitch" , CurrentStatus - 0.1 )

					end

				end)

			else
			
				timer.Create( "VNT_Vehicle_Pitch_Timer" , 0.01 , 10 , function()
		
					if IsValid( self ) then

						local CurrentStatus = self:GetPoseParameter( "pitch" )
						
						if CurrentStatus > 0 then
						
							self:SetPoseParameter( "pitch" , CurrentStatus - 0.1 )
							
						elseif CurrentStatus < 0 then
						
							self:SetPoseParameter( "pitch" , CurrentStatus + 0.1 )
							
						else
						
							self:SetPoseParameter( "pitch" , 0 )
							
						end

					end

				end)

			end

		end

	end

	function ENT:SetRollPose( Position )

		local Command = Position
		
		local phys = self:GetPhysicsObject()
		
		if IsValid(phys) and not self.disabled then

			if Command == 1 then

				timer.Create( "VNT_Vehicle_Roll_Timer" , 0.01 , 10 , function()

					if IsValid( self ) then

						local CurrentStatus = self:GetPoseParameter( "roll" )
						self:SetPoseParameter( "roll" , CurrentStatus + 0.1 )
						
					end

				end)

			elseif Command == -1 then

				timer.Create( "VNT_Vehicle_Roll_Timer" , 0.01 , 10 , function()
				
					if IsValid( self ) then

						local CurrentStatus = self:GetPoseParameter( "roll" )					
						self:SetPoseParameter( "roll" , CurrentStatus - 0.1 )

					end

				end)

			else
			
				timer.Create( "VNT_Vehicle_Roll_Timer" , 0.01 , 10 , function()
	
					if IsValid( self ) then

						local CurrentStatus = self:GetPoseParameter( "roll" )
						
						if CurrentStatus > 0 then
						
							self:SetPoseParameter( "roll" , CurrentStatus - 0.1 )
							
						elseif CurrentStatus < 0 then
						
							self:SetPoseParameter( "roll" , CurrentStatus + 0.1 )
							
						else
						
							self:SetPoseParameter( "roll" , 0 )

						end

					end
					
				end)

			end

		end

	end

	function ENT:SetHatch( HatchToToggle , SeatToToggle )

		if IsValid( self ) then

			local phys = self:GetPhysicsObject()
			
			if IsValid(phys) then

				if SeatToToggle == 1 then

					if not self.IsHatchShutOne then

						self.HatchOneDelay = CurTime( ) + 3

						if not self.sounds.HatchClose:IsPlaying() then

							self.sounds.HatchClose:Play()

						end

						timer.Create( "VNT_Vehicle_Hatch_SeatOne_Timer" , 0.01 , 100 , function()

							if IsValid( self ) then

								local CurrentStatus = self:GetPoseParameter( self.HatchOnePoserName )
								self:SetPoseParameter( self.HatchOnePoserName , CurrentStatus - 0.01 )

							end

						end)

						timer.Simple( 1 , function()

							if IsValid( self ) then

								if self.sounds.HatchClose:IsPlaying() then

									self.sounds.HatchClose:FadeOut( 0.5 )

								end

								if self.sounds.HatchWind:IsPlaying() then

									self.sounds.HatchWind:FadeOut( 1 )
									
								end

							end

						end)

						self.IsHatchShutOne = true

						return false
				
					else

						self.HatchOneDelay = CurTime( ) + 3

						if not self.sounds.HatchOpen:IsPlaying() then

							self.sounds.HatchOpen:Play()

						end
					
						if not self.sounds.HatchOpen:IsPlaying() then
						
							self.sounds.HatchOpen:Play()
							
						end

						timer.Create( "VNT_Vehicle_Hatch_SeatOne_Timer" , 0.01 , 100 , function()

							if IsValid( self ) then

								local CurrentStatus = self:GetPoseParameter( self.HatchOnePoserName )
								self:SetPoseParameter( self.HatchOnePoserName , CurrentStatus + 0.01 )

							end
						
						end)

						timer.Simple( 1 , function()

							if IsValid( self ) then

								if self.sounds.HatchOpen:IsPlaying() then

									self.sounds.HatchOpen:FadeOut( 0.5 )

								end

							end

						end)

						self.IsHatchShutOne = false

						return false
					
					end
					
				end

				if SeatToToggle == 2 then

					if not self.IsHatchShutTwo then

						self.HatchTwoDelay = CurTime( ) + 3

						if not self.sounds.HatchClose:IsPlaying() then

							self.sounds.HatchClose:Play()

						end

						timer.Create( "VNT_Vehicle_Hatch_SeatTwo_Timer" , 0.01 , 100 , function()

							if IsValid( self ) then

								local CurrentStatus = self:GetPoseParameter( self.HatchTwoPoserName )
								self:SetPoseParameter( self.HatchTwoPoserName , CurrentStatus - 0.01 )

							end

						end)

						timer.Simple( 1 , function()

							if IsValid( self ) then

								if self.sounds.HatchClose:IsPlaying() then

									self.sounds.HatchClose:FadeOut( 0.5 )

								end

							end

						end)

						self.IsHatchShutTwo = true

						return false
				
					else

						self.HatchTwoDelay = CurTime( ) + 3

						if not self.sounds.HatchOpen:IsPlaying() then

							self.sounds.HatchOpen:Play()

						end
					
						timer.Create( "VNT_Vehicle_Hatch_SeatTwo_Timer" , 0.01 , 100 , function()

							if IsValid( self ) then

								local CurrentStatus = self:GetPoseParameter( self.HatchTwoPoserName )
								self:SetPoseParameter( self.HatchTwoPoserName , CurrentStatus + 0.01 )

							end
						
						end)

						timer.Simple( 1 , function()

							if IsValid( self ) then

								if self.sounds.HatchOpen:IsPlaying() then

									self.sounds.HatchOpen:FadeOut( 0.5 )

								end

							end

						end)

						self.IsHatchShutTwo = false

						return false
					
					end

				end

				if SeatToToggle == 3 then

					if not self.IsHatchShutThree then

						self.HatchThreeDelay = CurTime( ) + 3

						if not self.sounds.HatchClose:IsPlaying() then

							self.sounds.HatchClose:Play()

						end

						timer.Create( "VNT_Vehicle_Hatch_SeatThree_Timer" , 0.01 , 100 , function()

							if IsValid( self ) then

								local CurrentStatus = self:GetPoseParameter( self.HatchThreePoserName )
								self:SetPoseParameter( self.HatchThreePoserName , CurrentStatus - 0.01 )

							end

						end)

						timer.Simple( 1 , function()

							if IsValid( self ) then

								if self.sounds.HatchClose:IsPlaying() then

									self.sounds.HatchClose:FadeOut( 0.5 )

								end

							end

						end)

						self.IsHatchShutThree = true

						return false
				
					else

						self.HatchThreeDelay = CurTime( ) + 3

						if not self.sounds.HatchOpen:IsPlaying() then

							self.sounds.HatchOpen:Play()

						end
					
						timer.Create( "VNT_Vehicle_Hatch_SeatThree_Timer" , 0.01 , 100 , function()

							if IsValid( self ) then

								local CurrentStatus = self:GetPoseParameter( self.HatchThreePoserName )
								self:SetPoseParameter( self.HatchThreePoserName , CurrentStatus + 0.01 )

							end
						
						end)

						timer.Simple( 1 , function()

							if IsValid( self ) then

								if self.sounds.HatchOpen:IsPlaying() then

									self.sounds.HatchOpen:FadeOut( 0.5 )

								end

							end

						end)

						self.IsHatchShutThree = false

						return false
					
					end

				end

				if SeatToToggle == 4 then

					if not self.IsHatchShutFour then

						self.HatchFourDelay = CurTime( ) + 3

						if not self.sounds.HatchClose:IsPlaying() then

							self.sounds.HatchClose:Play()

						end

						timer.Create( "VNT_Vehicle_Hatch_SeatFour_Timer" , 0.01 , 100 , function()

							if IsValid( self ) then

								local CurrentStatus = self:GetPoseParameter( self.HatchFourPoserName )
								self:SetPoseParameter( self.HatchFourPoserName , CurrentStatus - 0.01 )

							end

						end)

						timer.Simple( 1 , function()

							if IsValid( self ) then

								if self.sounds.HatchClose:IsPlaying() then

									self.sounds.HatchClose:FadeOut( 0.5 )

								end

							end

						end)

						self.IsHatchShutFour = true

						return false
				
					else

						self.HatchFourDelay = CurTime( ) + 3

						if not self.sounds.HatchOpen:IsPlaying() then

							self.sounds.HatchOpen:Play()

						end
					
						timer.Create( "VNT_Vehicle_Hatch_SeatFour_Timer" , 0.01 , 100 , function()

							if IsValid( self ) then

								local CurrentStatus = self:GetPoseParameter( self.HatchFourPoserName )
								self:SetPoseParameter( self.HatchFourPoserName , CurrentStatus + 0.01 )

							end
						
						end)

						timer.Simple( 1 , function()

							if IsValid( self ) then

								if self.sounds.HatchOpen:IsPlaying() then

									self.sounds.HatchOpen:FadeOut( 0.5 )

								end

							end

						end)

						self.IsHatchShutFour = false

						return false
					
					end

				end

			end

		end

	end

	function ENT:SetRotorBlur( )

		if not IsValid( self ) then
		
			return false
			
		end

		if self.rotorRPM > 0.5 then

			self.TopRotor.model:SetBodygroup( 1 , 2 )
			self.BackRotor.model:SetBodygroup( 1 , 2 )

		elseif self.rotorRPM > 0.25 and self.rotorRPM < 0.49 then

			self.TopRotor.model:SetBodygroup( 1 , 1 )
			self.BackRotor.model:SetBodygroup( 1 , 1 )

		elseif self.rotorRPM < 0.25 then

			self.TopRotor.model:SetBodygroup( 1 , 0 )
			self.BackRotor.model:SetBodygroup( 1 , 0 )

		end
		
	end

	function ENT:AddRotorTable( )--USSFLAGG

		-- print( "Add Rotor Table function" )

		if IsValid( self ) then

			-- print( "Self valid" )
			
			self.RotorEntities = {}

			for EntryNumber = 1 , #self.RotorTable do

				self.RotorEntities[EntryNumber] = self:addEntity( "v92_veh_rotor" )
				self.RotorEntities[EntryNumber]:SetModel( self.RotorTable[EntryNumber].Model )
				self.RotorEntities[EntryNumber]:SetPos( self:LocalToWorld( self.RotorTable[EntryNumber].Pos ) )
				self.RotorEntities[EntryNumber]:SetAngles( self:LocalToWorldAngles( self.RotorTable[EntryNumber].Ang ) )
				self.RotorEntities[EntryNumber]:SetOwner( self.Owner )
				self.RotorEntities[EntryNumber]:Activate( )
				self.RotorEntities[EntryNumber]:Spawn( )

				self.RotorEntities[EntryNumber].Physics = self.RotorEntities[EntryNumber]:GetPhysicsObject( )
				self.RotorEntities[EntryNumber].Physics:SetMass( self.RotorTable[EntryNumber].Mass or 92 )
				self.RotorEntities[EntryNumber].Physics:EnableGravity( true )
				self.RotorEntities[EntryNumber].Physics:EnableDrag( true )

				self.RotorEntities[EntryNumber]:SetNotSolid( false )
				self.RotorEntities[EntryNumber]:SetNoDraw( false )
				self.RotorEntities[EntryNumber]:DrawShadow( true )
				
				self.RotorEntities[EntryNumber].fHealth = self.RotorTable[EntryNumber].Durability
				self.RotorEntities[EntryNumber].VehicleIgnoresItself = true
				self.RotorEntities[EntryNumber].RotorWash = self.RotorTable[EntryNumber].RotorWash

				self:AddOnRemove( self.RotorEntities[EntryNumber] )

				-- print( "Rotor table: physics set for rotor: " .. tostring( self.RotorEntities[EntryNumber] ) )

				if self.RotorTable[EntryNumber].IsTail then

					constraint.Axis( 
						self , -- First entity
						self.RotorEntities[EntryNumber] , -- Second entity
						0 , -- Ent 1 bone #
						0 , -- Ent 2 bone #
						self.RotorTable[EntryNumber].Pos , -- Axis Pos 1
						Vector( 0 , 1 , 0 ) , -- Axis Pos 2
						0 , -- Force limit
						0 , -- Torque limit
						0 , -- Friction
						1 -- No-collide
					)

				else -- Just in case some asshat sets them all the false...

					constraint.Axis( 
						self , -- First entity
						self.RotorEntities[EntryNumber] , -- Second entity
						0 , -- Ent 1 bone #
						0 , -- Ent 2 bone #
						self.RotorTable[EntryNumber].Pos , -- Axis Pos 1
						Vector( 0 , 0 , 1 ) , -- Axis Pos 2
						0 , -- Force limit
						0 , -- Torque limit
						0 , -- Friction
						1 -- No-collide
					)

				end

				-- print( "Rotor table: created axis for rotor: " .. tostring( self.RotorEntities[EntryNumber] ) )
				
				-- print( "Created rotor: " .. tostring( self.RotorEntities[EntryNumber] ) )

				if Integer > #self.RotorTable then
				
					break
					
				end
			
			end
		
		end
	
	end

	function ENT:PhysicsUpdate( ph )--USSFLAGG
		if self.LastPhys == CurTime() then return end
		local vel = ph:GetVelocity()	
		local pos = self:GetPos()
		local ri = self:GetRight()
		local up = self:GetUp()
		local fwd = self:GetForward()
		local ang = self:GetAngles()
		local dvel = vel:Length()
		local lvel = self:WorldToLocal(pos+vel)

		local hover = self:calcHover(ph,pos,vel,ang)
		
		local rotateX = (self.controls.roll*1.5+hover.r)*self.rotorRPM
		local rotateY = (self.controls.pitch+hover.p)*self.rotorRPM
		local rotateZ = self.controls.yaw*1.5*self.rotorRPM

		--[[
		self.arcade = (
			IsValid(self.passengers[1])
			and self.passengers[1]:GetInfo("VNT_Vehicle_CL_arcade")
			or 0
		)
		--]]

		--local phm = (vnt.vehicle.cvars.doubleTick:GetBool() and 2 or 1)
		local phm = FrameTime()*66
		if self.UsePhysRotor then
			
			if self.active and !self.engineDead then
				self.engineRPM = math.Clamp(self.engineRPM+FrameTime()*0.1*vnt.vehicle.cvars.startSpeed:GetFloat(), 0, 1)
			else
				self.engineRPM = math.Clamp(self.engineRPM-FrameTime()*0.16*vnt.vehicle.cvars.startSpeed:GetFloat(), 0, 1)
			end

			
			if self.topRotor and self.topRotor.Phys and self.topRotor.Phys:IsValid() then
				if self.RotorBlurModel then
					self.topRotor.vis:SetColor(Color(255,255,255,math.Clamp(1.3-self.rotorRPM,0.1,1)*255))
				end

				-- top rotor physics
				local rotor = {}
				rotor.phys = self.topRotor.Phys
				rotor.angVel = rotor.phys:GetAngleVelocity()
				rotor.upvel = self.topRotor:WorldToLocal(self.topRotor:GetVelocity()+self.topRotor:GetPos()).z
				rotor.brake =
					math.Clamp(math.abs(rotor.angVel.z) - 2950, 0, 100)/10 -- RPM cap
					+ math.pow(math.Clamp(1500 - math.abs(rotor.angVel.z), 0, 1500)/900, 3)
					+ math.abs(rotor.angVel.z/10000)
					- (rotor.upvel - self.rotorRPM)*(self.controls.throttle - 0.5)/1000

				rotor.targetAngVel =
					Vector(0, 0, math.pow(self.engineRPM,2)*self.TopRotor.dir*10)
					- rotor.angVel*rotor.brake/200

				rotor.phys:AddAngleVelocity(rotor.targetAngVel)

				self.rotorRPM = math.Clamp(rotor.angVel.z/3000 * self.TopRotor.dir, -1, 1)

				-- body physics
				local mind = (100-self.topRotor.fHealth)/100
				ph:AddAngleVelocity(VectorRand()*self.rotorRPM*mind*phm)

				if IsValid(self.backRotor) and self.backRotor.Phys:IsValid() then
					--self.backRotor.Phys:AddAngleVelocity(Vector(0,self.rotorRPM*300*self.BackRotor.dir-self.backRotor.Phys:GetAngleVelocity().y/10,0)*phm)
					if self.TwinBladed then
						self.backRotor.Phys:AddAngleVelocity(rotor.targetAngVel*phm)
					else
						self.backRotor.Phys:AddAngleVelocity(Vector(0,self.rotorRPM*300*self.BackRotor.dir-self.backRotor.Phys:GetAngleVelocity().y/10,0)*phm)
					end
				else
					ph:AddAngleVelocity((Vector(0,0,0-self.rotorRPM*self.TopRotor.dir/2))*phm)
					ph:AddAngleVelocity(VectorRand()*self.rotorRPM*mind*phm)
					if !self.sounds.CrashAlarm:IsPlaying() and !self.disabled then
						self.sounds.CrashAlarm:Play()
					end
				end

				local throttle = self.Agility.Thrust*up*((self.controls.throttle+hover.t)*self.rotorRPM*1.7*self.EngineForce/15+self.rotorRPM*9.15)
				local brakez = self:LocalToWorld(Vector(0, 0, lvel.z*dvel*self.rotorRPM/100000*self.Aerodynamics.RailRotor)) - pos
				ph:AddVelocity((throttle - brakez)*phm)
				
			elseif IsValid(self.backRotor) and self.backRotor.Phys:IsValid() then
				local backSpeed = (self.backRotor.Phys:GetAngleVelocity() - ph:GetAngleVelocity()).y
				ph:AddAngleVelocity(Vector(0,0,backSpeed/300))
				self.backRotor.Phys:AddAngleVelocity(self.backRotor.Phys:GetAngleVelocity()*-0.01)
			end
		else
			self.rotorRPM=math.Approach(self.rotorRPM, self.active and 1 or 0, self.EngineForce/1000)
			ph:SetVelocity(vel*0.999+(up*self.rotorRPM*(self.controls.throttle+1)*7 + (fwd*math.Clamp(ang.p*0.1, -2, 2) + ri*math.Clamp(ang.r*0.1, -2, 2))*self.rotorRPM)*phm)
		end

		local controlAng =
				Vector(rotateX, rotateY, IsValid(self.backRotor) and rotateZ or 0)
				* self.Agility.Rotate * (1) -- +self.arcade)

		local aeroVelocity, aeroAng = self:calcAerodynamics(ph)

		ph:AddAngleVelocity((aeroAng + controlAng)*phm)
		ph:AddVelocity(aeroVelocity*phm)

		for _,e in pairs(self.wheels) do
			if IsValid(e) then
				local ph=e:GetPhysicsObject()
				if ph:IsValid() then
					local lpos=self:WorldToLocal(e:GetPos())
					e:GetPhysicsObject():AddVelocity((
							Vector(0,0,6)+self:LocalToWorld(Vector(
								0, 0, lpos.y*rotateX - lpos.x*rotateY
							)/4)-pos
					)*phm)
					e:GetPhysicsObject():AddVelocity(up*ang.r*lpos.y/self.WheelStabilize*phm)
					if self.controls.throttle < -0.8 then -- apply wheel brake
						ph:AddAngleVelocity(ph:GetAngleVelocity()*-0.5*phm)
					end
				end
			end
		end


		--	Rotor Blur Code, Copied from WAC P-51D
		--self:SetRotorBlur( )

		self.LastPhys = CurTime()

	end

	-- START OLD CODE: WILL BE COMPLETELY REMOVED
	
	function ENT:addRotors()--USSFLAGG
		if self.UsePhysicalRotor then
			self.topRotor = self:addEntity("prop_physics")
			self.topRotor:SetModel("models/props_junk/sawblade001a.mdl" )
			self.topRotor:SetPos(self:LocalToWorld(self.TopRotor.pos))
			self.topRotor:SetAngles(self:LocalToWorldAngles(self.TopRotor.angles))
			self.topRotor:SetOwner(self.Owner)
			self.topRotor:SetNotSolid( false )
			self.topRotor:Spawn()
			self.topRotor.Phys = self.topRotor:GetPhysicsObject()
			self.topRotor.Phys:EnableGravity( true )
			self.topRotor.Phys:SetMass( 5 )
			self.topRotor.Phys:EnableDrag( true )
			self.topRotor:SetNoDraw( true )
			self.topRotor.fHealth = 100
			self.topRotor.VehicleIgnoresItself = true
			if self.TopRotor.model then
				local e = self:addEntity"v92_veh_hitdetector"
				self:SetNWEntity("vnt_air_rotor_main", e)
				e:SetModel(self.TopRotor.model)
				e:SetPos(self.topRotor:GetPos())
				e:SetAngles(self.topRotor:GetAngles())
				
				e.TouchFunc = function(touchedEnt, pos)
					local ph = touchedEnt:GetPhysicsObject()
					if ph:IsValid() then
						if 
								not table.HasValue(self.passengers, touchedEnt)
								and !table.HasValue(self.entities, touchedEnt)
								and touchedEnt != self
								and !string.find(touchedEnt:GetClass(), "func*")
								and IsValid(self.topRotor)
								and touchedEnt:GetMoveType() != MOVETYPE_NOCLIP
						then
							local rotorVel = self.topRotor:GetPhysicsObject():GetAngleVelocity():Length()
							local dmg, mass;
							if touchedEnt:GetClass() == "worldspawn" then
								dmg = rotorVel*rotorVel/100000
								mass = 10000
							else
								dmg=(rotorVel*rotorVel + ph:GetVelocity():Length()*ph:GetVelocity():Length())/100000
								mass = touchedEnt:GetPhysicsObject():GetMass()
							end
							ph:AddVelocity((pos-self.topRotor:GetPos())*dmg/mass)
							self.phys:AddVelocity((self.topRotor:GetPos() - pos)*dmg/mass)
							self:DamageBigRotor(dmg)
							e.Entity:TakeDamage(dmg, IsValid(self.passengers[1]) and self.passengers[1] or self, self)
						end
					end
				end
				
				e:Spawn()
				e:SetNotSolid( false )
				e:SetParent(self.topRotor)
				e.VehicleIgnoresItself = true
				local obb = e:OBBMaxs()
				self.RotorWidth = (obb.x>obb.y and obb.x or obb.y)
				self.RotorHeight = obb.z
				self.topRotor.vis = e
			end
			self.backRotor = self:addBackRotor()
			self:SetNWEntity("rotor_rear", self.backRotor)
			constraint.Axis(self, self.topRotor, 0, 0, self.TopRotor.pos, Vector(0,0,1), 0,0,0,1)
			if self.TwinBladed then
				constraint.Axis(self, self.backRotor, 0, 0, self.BackRotor.pos, Vector(0,0,1),0,0,0,1)
			else
				constraint.Axis(self, self.backRotor, 0, 0, self.BackRotor.pos, Vector(0, 1, 0), 0,0,0,1)
			end
			self:AddOnRemove(self.topRotor)
			self:AddOnRemove(self.backRotor)
		end
	end

	function ENT:addBackRotor()--USSFLAGG
		local e = self:addEntity"v92_veh_hitdetector"
		e:SetModel(self.BackRotor.model)
		e:SetAngles(self:LocalToWorldAngles(self.BackRotor.angles))
		e:SetPos(self:LocalToWorld(self.BackRotor.pos))
		e.Owner = self.Owner
		e:SetNWFloat("rotorhealth", 100)
		e.VehicleIgnoresItself = true
		e.TouchFunc = function(touchedEnt, pos) -- not colliding with world
			local ph = touchedEnt:GetPhysicsObject()
			if ph:IsValid() then
				if
					not table.HasValue(self.passengers, touchedEnt)
					and not table.HasValue(self.entities, touchedEnt)
					and touchedEnt != self
					and not string.find(touchedEnt:GetClass(), "func*")
					and IsValid(self.topRotor)
					and IsValid(self.backRotor)
					and touchedEnt:GetMoveType() != MOVETYPE_NOCLIP
				then
					local rotorVel = self.backRotor:GetPhysicsObject():GetAngleVelocity():Length()
					local dmg, mass;
					if touchedEnt:GetClass() == "worldspawn" then
						dmg = rotorVel*rotorVel/100000
						mass = 10000
					else
						dmg = ( rotorVel * rotorVel + ph:GetVelocity( ):Length( ) * ph:GetVelocity( ):Length( ) ) / 100000
						mass = touchedEnt:GetPhysicsObject():GetMass()
					end
					ph:AddVelocity( ( pos - self.backRotor:GetPos( ) ) * dmg / mass )
					self.phys:AddVelocity( ( self.backRotor:GetPos( ) - pos ) * dmg / mass )
					self:DamageSmallRotor( dmg )
					touchedEnt:TakeDamage( dmg , IsValid( self.passengers[1] ) and self.passengers[1] or self , self )
				end
			end
		end
		e.OnTakeDamage = function(e, dmg)
			if !dmg:IsExplosionDamage() then
				dmg:ScaleDamage(0.2)
			end
			self.LastAttacker = dmg:GetAttacker()
			self.LastDamageTaken = CurTime()
			self:DamageSmallRotor(dmg:GetDamage())
			e:TakePhysicsDamage(dmg)
		end
		e.Think = function(self) end
		e:Spawn()
		e.Phys=e:GetPhysicsObject()
		if e.Phys:IsValid() then
			e.Phys:Wake()
			e.Phys:EnableGravity(false)
			e.Phys:EnableDrag(false)
			e.Phys:SetMass(10)
		end
		e.fHealth = 40
		self:SetNWEntity("vnt_air_rotor_rear", e)
		return e
	end

	-- END OLD CODE
	
end
