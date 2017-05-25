
AddCSLuaFile()

if not ( vnt or VNTCB ) then

	return false
	
end

ENT.Base = VNTCB.Bases.Vehicle_AirRotary
ENT.Type = "anim"

ENT.Spawnable = false
ENT.AdminOnly = false

ENT.IgnoreDamage = true
ENT.UsePhysicalRotor = true
ENT.IsSubmersible	= false
ENT.RotorWidth = 10
ENT.rotorDir	= 1
ENT.BackRotorDir = 1
ENT.RotorPosition	= Vector(83, 0, 0.5)
ENT.BackRotorPosition = Vector(-400,5,137)
ENT.Weight = 800
ENT.CreateRotorWash = false

if CLIENT then

	include("v92/keyboard.lua")

	function ENT:Think()

		--print( "plane think" )

		if self.AreFlapsDeployed then

			print( "flaps out" )

			if self:GetPhysicsObject():GetVelocity():Length() > 5 then

				print( "Vector speed met" )

				if not self.sounds.DiveBrakes:IsPlaying() then

					print( "Sound not playing, playing sound" )

					self.sounds.DiveBrakes:Play()

				end

			else

				print( "Vector speed NOT met" )

				if self.sounds.DiveBrakes:IsPlaying() then

					print( "Sound playing, fading out sound" )

					self.sounds.DiveBrakes:FadeOut( 1 )

				end

			end
			
		else

			--print( "flaps in" )

		end

		if not IsValid( self ) then return end
		if not self:GetNWBool("locked") then
			local mouseFlight = self:GetNWBool("active")
			if self.sounds.Start then
				if mouseFlight != self.IsOn then
					if mouseFlight then
						self.sounds.Start:Play()
					else
						self.sounds.Start:Stop()
					end
					self.IsOn=mouseFlight
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
			local frt=CurTime()-self.LastThink
			local e=LocalPlayer():GetViewEntity()
			if !IsValid(e) then e=LocalPlayer() end
			local pos=e:GetPos()
			local spos=self:GetPos()
			local doppler=(pos:Distance(spos+e:GetVelocity())-pos:Distance(spos+self:GetVelocity()))/200*self.rotorRPM

			self.smoothUp = self.smoothUp - (self.smoothUp-self:GetNWFloat("up"))*frt*10
			self.rotorRPM = self.rotorRPM - (self.rotorRPM-self:GetNWFloat("rotorRPM"))*frt*10
			self.engineRPM = self.engineRPM - (self.engineRPM-self:GetNWFloat("rotorRPM"))*frt*10

			local engineVal = math.Clamp(self.engineRPM*100+self.engineRPM*self.smoothUp*3+doppler, 0, 200)
			local val = math.Clamp(self.rotorRPM*100 + doppler, 0, 200)

			local vehicle = LocalPlayer():GetVehicle()
			local inVehicle = false
			if --[[GetConVar("gmod_vehicle_viewmode"):GetInt() == 0 and]] vehicle and vehicle:IsValid() and vehicle:GetNetworkedEntity("vnt_vehicle") == self then
				inVehicle = true
			end

			local volume = tonumber(LocalPlayer():GetInfo("VNT_Vehicle_CL_volume"))

			self.sounds.Engine:ChangePitch(engineVal,0.1)
			self.sounds.Engine:ChangeVolume(volume*math.Clamp(engineVal*engineVal/4000, 0, inVehicle and 1 or 5),0.1)
			self.sounds.Blades:ChangePitch(math.Clamp(val, 50, 150),0.1)
			self.sounds.Blades:ChangeVolume(volume*math.Clamp(val*val/5000, 0, inVehicle and 0.4 or 5),0.1)
			if self.sounds.Start then
				self.sounds.Start:ChangeVolume(volume*math.Clamp(100 - self.engineRPM*150, 0, 100)/100,0.1)
				self.sounds.Start:ChangePitch(100 - self.engineRPM*30,0.1)
			end
			self.LastThink=CurTime()
		else
			self.sounds.Engine:Stop()
			self.sounds.Blades:Stop()
			if self.sounds.Start then
				self.sounds.Start:Stop()
			end
		end

	end

	function ENT:CalcThirdPersonView(k,p,pos,ang,view)
		local a = vnt.key.down(tonumber(p:GetInfo("VNT_Vehicle_CL_key_15")))
		local b=p:GetInfo("VNT_Vehicle_CL_mouse")=="1"
		local c=p:GetInfo("VNT_Vehicle_CL_usejoystick")=="1"
		if k==1 then
			if a then
				p.vnt.heliFreeAim = true
			elseif p.vnt.heliFreeAim then
				p.vnt.heliFreeAim = false
				p.vnt.heliResetView = true
			end
		end
		if (k==1 and (!c and a!=b) or (c and b)) or (k!=1 and a) then
			ang=self:GetAngles()
		end
		
		ang:RotateAroundAxis(self:GetRight(),-10)
		
		p.vnt.viewAng = p.vnt.viewAng or Angle(0,0,0)

		local m=math.Clamp(CurTime()-p.wac_air_v_time,0,1)
		if p:GetInfo("VNT_Vehicle_CL_smoothview")=="1" then
			p.vnt.viewAng = WAC.SmoothApproachAngles(p.vnt.viewAng, ang, 10*m)
			view.angles = p.vnt.viewAng
		else
			p.vnt.viewAng = WAC.SmoothApproachAngles(p.vnt.viewAng, ang-self:GetAngles(), 10*m)
			view.angles = p.vnt.viewAng + self:GetAngles()
		end
		
		local tr = util.QuickTrace(self:LocalToWorld(Vector(-50,0,100))+self:GetVelocity()/50,view.angles:Forward()*-self.ThirdPDist,{self,self:GetNWEntity("rotor_rear")})
		view.origin=tr.HitPos-tr.Normal*10
		return view
	end

	function ENT:Draw()
		self:DrawModel()
		if !self.Seats or self:GetNWBool("locked") then return end
		self:DrawPilotHud()
		self:DrawWeaponSelection()
	end

end

if SERVER then

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
		
		["AngleDrag"] = Vector( 0.01 , 0.01 , 0.01 ) ,

	}

	ENT.Agility = {
		Thrust = 5.7
	}


	function ENT:addRotors()
		self.rotor = ents.Create("prop_physics")
		self.rotor:SetModel("models/props_junk/sawblade001a.mdl" )
		self.rotor:SetPos(self:LocalToWorld(self.RotorPosition))
		self.rotor:SetAngles(self:GetAngles() + Angle(90, 0, 0))
		self.rotor:SetOwner(self.Owner)
		self.rotor:Spawn()
		self.rotor.phys = self.rotor:GetPhysicsObject()
		self.rotor.phys:EnableGravity( true )
		self.rotor.phys:SetMass( 50 )
		self.rotor.phys:EnableDrag( true )
		self.rotor:SetNotSolid( true )
		self.rotor:SetNoDraw( true )
		self.rotor.health = 100
		self.rotor.VehicleIgnoresItself = true
		if self.RotorModel then
			local e = ents.Create"v92_veh_hitdetector"
			e:SetModel(self.RotorModel)
			e:SetPos(self:LocalToWorld(self.RotorPosition))
			e:SetAngles(self:GetAngles())
			
			e.TouchFunc = function(e)
				local ph = e:GetPhysicsObject()
				if ph:IsValid() then
					local pass=true
					for k,p in pairs(self.passengers) do
						if p==e then pass=false end
					end
					for _, ent in pairs(self.entities) do
						if ent == e then pass = false end
					end
					if pass and e != self and !string.find(e:GetClass(), "func*") and IsValid(self.rotor) and e:GetMoveType() != MOVETYPE_NOCLIP then
						local rotorVel = self.rotor:GetPhysicsObject():GetAngleVelocity():Length()
						local dmg=(rotorVel*rotorVel + ph:GetVelocity():Length()*ph:GetVelocity():Length())/100000
						ph:AddVelocity((e:GetPos()-self.rotor:GetPos())*dmg/e:GetPhysicsObject():GetMass()*10)
						self:DamageBigRotor(dmg)
						e:TakeDamage(dmg, IsValid(self.passengers[1]) and self.passengers[1] or self, self)
					end
				end
			end
			
			e:Spawn()
			e:SetOwner(self.Owner)
			e:SetParent(self.rotor)
			e.VehicleIgnoresItself = true
			local obb=e:OBBMaxs()
			self.RotorWidth=(obb.x>obb.y and obb.x or obb.y)
			self.RotorHeight=obb.z
			self.RotorModel=e
			self:AddOnRemove(e)
		end
		constraint.Axis(self, self.rotor, 0, 0, self.RotorPosition, Vector(0,0,1), 0,0,0.01,1)
		self:AddOnRemove(self.rotor)
		
	end

	function ENT:PhysicsUpdate(ph)
		if self.Lastphys==CurTime() then return end

		local vel = ph:GetVelocity()	
		local pos = self:GetPos()
		local ri = self:GetRight()
		local up = self:GetUp()
		local fwd = self:GetForward()
		local ang = self:GetAngles()
		local dvel = vel:Length()
		local lvel = self:WorldToLocal(pos+vel)
		
		local hover = self:calcHover(ph,pos,vel,ang)

		local throttle = self.controls.throttle/2 + 0.5

		local phm = FrameTime()*66 --(vnt.vehicle.cvars.doubleTick:GetBool() and 2 or 1)
		
		self.arcade = (
			IsValid(self.passengers[1])
			and self.passengers[1]:GetInfo("VNT_Vehicle_CL_arcade")
			or 0
		)

		if !self.disabled then
		
			if self.rotor and self.rotor.phys and self.rotor.phys:IsValid() then
				self.rotorRPM = math.Clamp(self.rotor.phys:GetAngleVelocity().z/3500*self.rotorDir,-1,1)
				if self.active and self.rotor:WaterLevel() <= 0 then
					self.engineRPM = math.Clamp(self.engineRPM+FrameTime(),0,1)
					self.rotor.phys:AddAngleVelocity(Vector(0,0,self.engineRPM*30 + throttle*self.engineRPM*20)*self.rotorDir*phm)
				else
					self.engineRPM = math.Clamp(self.engineRPM-FrameTime()*0.16*vnt.vehicle.cvars.startSpeed:GetFloat(), 0, 1)
				end
			end
		end
		
		if self.rotor then
		
			if IsValid( self ) then
			
				local brake = (throttle+1)*self.rotorRPM/900+self.rotor.phys:GetAngleVelocity().z/100
				self.rotor.phys:AddAngleVelocity(Vector(0,0,-brake + lvel.x*lvel.x/500000)*self.rotorDir*phm)
				
			end

		end

		local aeroVelocity, aeroAng = self:calcAerodynamics(ph)

		local controlAng =
			Vector(
				(self.controls.roll+hover.r)*lvel.x/400,
				(self.controls.pitch+hover.p)*lvel.x/400,
				self.controls.yaw*1.5*math.Clamp(lvel.x/20, 0, 1)
			) * self.Agility.Rotate * (1+self.arcade)

		local controlThrottle = fwd * (throttle * self.rotorRPM + self.rotorRPM/10) * self.Agility.Thrust
		
		ph:AddAngleVelocity((aeroAng + controlAng)*phm)
		ph:AddVelocity((aeroVelocity + controlThrottle)*phm)

		for _,e in pairs(self.wheels) do
			if IsValid(e) and e:GetPhysicsObject():IsValid() then
			local ph=e:GetPhysicsObject()
				local wpos = self:WorldToLocal(e:GetPos())
				
				local xpositive = (wpos.x >= 0 and 1 or -1)
				local ypositive = (wpos.y >= 0 and 1 or -1)

				e:GetPhysicsObject():AddVelocity(
					(self:LocalToWorld(Vector(0, 0,
						(math.abs(wpos.y) ^ (1/3))*ypositive*controlAng.x
						- (math.abs(wpos.x) ^ (1/3))*xpositive*controlAng.y
						+ 7
					)/4)-pos --+ up*ang.r*lpos.y/self.WheelStabilize
					+ aeroVelocity*0.8
					+ controlThrottle*0.8
				)*phm)

				if throttle < 0.5 then
					ph:AddAngleVelocity(ph:GetAngleVelocity()*(throttle-0.5)*phm)
				end
			end
		end
		--[[


		for _, e in pairs(self.wheels) do
			if IsValid(e) then
				local ph = e:GetPhysicsObject()
				if ph:IsValid() then
					if self.controls.throttle < -0.8 then
						ph:AddAngleVelocity(ph:GetAngleVelocity()*-0.5*phm)
					end
				end
			end
		end
		

		for _,e in pairs(self.wheels) do
			if IsValid(e) then
				local ph=e:GetPhysicsObject()
				if ph:IsValid() then
					local lpos = self:WorldToLocal(e:GetPos())
					local mass = e:GetPhysicsObject():GetMass()
					e:GetPhysicsObject():AddVelocity(
							Vector(0,0,6)+self:LocalToWorld(Vector(
								0, 0, lpos.x*controlAng.x/mass*10 + lpos.y*controlAng.y/mass*10
							)/4)-pos
					)
					--e:GetPhysicsObject():AddVelocity(up*ang.r*lpos.y/self.WheelStabilize/mass*10)
					if self.controls.throttle < -0.8 then -- apply wheel brake
						ph:AddAngleVelocity(ph:GetAngleVelocity()*-0.5)
					end
				end
			end
		end
		]]
		
		--[[ old
		for _,e in pairs(self.wheels) do
			if IsValid(e) and e:GetPhysicsObject():IsValid() then
			local ph=e:GetPhysicsObject()
				local lpos=self:WorldToLocal(e:GetPos())
				
				e:GetPhysicsObject():AddVelocity((self:LocalToWorld(Vector(0, 0,
						math.abs(lpos.y)*controlAng.x -
						math.abs(lpos.x)*controlAng.y
				)/4)-pos --+ up*ang.r*lpos.y/self.WheelStabilize
				+ aeroVelocity)*phm)

				if throttle < 0.5 then
					ph:AddAngleVelocity(ph:GetAngleVelocity()*(throttle-0.5)*phm)
				end
			end
		end
		]]

		self.Lastphys = CurTime()
	end

	function ENT:SetPropBlur( )

		if not ( IsValid( self ) or IsValid( self.RotorModel ) ) then
		
			return false
			
		end

		if self.rotorRPM > 0.5 then
		
			self.RotorModel:SetBodygroup( 1 , 2 )
		
		elseif self.rotorRPM > 0.25 and self.rotorRPM < 0.49 then
		
			self.RotorModel:SetBodygroup( 1 , 1 )
				
		elseif self.rotorRPM < 0.25 then
		
			self.RotorModel:SetBodygroup( 1 , 0 )
			
		end
		
	end

end
