
AddCSLuaFile()

local	_SELFENTNAME	= "v92proj_magshell"
local	_INFONAME		= "Magnetic Shell"

ENT.Type		= "anim"
ENT.Base		= "base_gmodentity" 
ENT.PrintName	= _INFONAME
ENT.Author 		= "V92"
ENT.Category	= "92nd Dev Unit - Internal SEnts"

ENT.Spawnable	= false
ENT.AdminOnly	= true

ENT.ShellMMSize	= 100

if CLIENT then

	language.Add( _SELFENTNAME , _INFONAME )
	function ENT:Draw()	self.Entity:DrawModel()	end
	
end

if SERVER then

	function ENT:Initialize()   
		self.matType = MAT_DIRT
		self.hitAngle = Angle(270, 0, 0)
		self.flightvector = self.Entity:GetForward() * 300
		self.timeleft = CurTime() + 5

		self.AirburstTime = CurTime() + 5 
		self:SetModel( "models/items/ar2_grenade.mdl" )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_NONE )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetColor( Color(255,255,255,255) )
		self:SetNoDraw( false )

		Tracer = ents.Create("env_spritetrail")
			Tracer:SetKeyValue("lifetime","0.05")
			Tracer:SetKeyValue("startwidth","90")
			Tracer:SetKeyValue("endwidth","15")
			Tracer:SetKeyValue("spritename","trails/laser.vmt")
			Tracer:SetKeyValue("rendermode","5")
			Tracer:SetKeyValue("rendercolor","200 200 50")
			Tracer:SetPos(self.Entity:GetPos())
			Tracer:SetParent(self.Entity)
			Tracer:Spawn()
			Tracer:Activate()

		Glow = ents.Create("env_sprite")
			Glow:SetKeyValue("model","orangecore2.vmt")
			Glow:SetKeyValue("rendercolor","235 235 75")
			Glow:SetKeyValue("scale","0.4")
			Glow:SetPos(self.Entity:GetPos())
			Glow:SetParent(self.Entity)
			Glow:Spawn()
			Glow:Activate()
	end
	
	function ENT:Think()
		if self.timeleft < CurTime() then	self:Remove()	end
		if self.AirburstTime < CurTime() then
			util.BlastDamage(self, self, tr.HitPos, self.ShellMMSize * (GetConVarNumber("vnt_proj_rad")), self.ShellMMSize * (GetConVarNumber("vnt_proj_dmg")) )
			local FXAirBurst = EffectData()
				FXAirBurst:SetOrigin(self.Entity:GetPos())
				FXAirBurst:SetScale(self.ShellMMSize * 2)
				FXAirBurst:SetMagnitude(self.ShellMMSize * 0.75 )
			util.Effect( "fx_airburst", FXAirBurst )
			self:Remove()
		end

		local trace = {}
			trace.start 	= self.Entity:GetPos()
			trace.endpos 	= self.Entity:GetPos() + self.flightvector
			trace.filter 	= self.Entity 
			trace.mask 	= MASK_SHOT + MASK_WATER			// Trace for stuff that bullets would normally hit

		local tr = util.TraceLine( trace )
		
		if tr.Hit then
			if tr.HitSky then
				self:Remove()
				return true
			end
			
			if tr.MatType==83 then
				local FXWaterSplash = EffectData()
					FXWaterSplash:SetOrigin( tr.HitPos )
					FXWaterSplash:SetNormal( tr.HitNormal )		// In case you hit sideways water?
					FXWaterSplash:SetScale( self.ShellMMSize * 2 )			// Big splash for big bullets
				util.Effect( "watersplash", FXWaterSplash )
				self:Remove()
				return true
			end

			local FXTankShell = EffectData()
				FXTankShell:SetEntity(self.Entity)
				FXTankShell:SetOrigin(self:GetPos())
				FXTankShell:SetScale(self.ShellMMSize / 12 )
				FXTankShell:SetRadius(self.matType)
				FXTankShell:SetAngles(self.hitAngle)
			util.Effect("fx_impact_shell",FXTankShell)
			
			util.BlastDamage(self, self, tr.HitPos, self.ShellMMSize * (GetConVarNumber("vnt_proj_rad")), self.ShellMMSize * (GetConVarNumber("vnt_proj_dmg")) )
			util.ScreenShake(tr.HitPos, self.ShellMMSize * (GetConVarNumber("vnt_proj_dmg")), self.ShellMMSize * (GetConVarNumber("vnt_proj_rad")) / 5, self.ShellMMSize * (GetConVarNumber("vnt_proj_rad")) / 5, self.ShellMMSize * (GetConVarNumber("vnt_proj_rad")) )
			util.Decal("Scorch", tr.HitPos + tr.HitNormal, tr.HitPos - tr.HitNormal)
			self:Remove()	
		end

		self:SetPos(self:GetPos() + self.flightvector)
		self.flightvector = self.flightvector + ( Vector(math.Rand(-0.1,0.1), math.Rand(-0.1,0.1),math.Rand(-0.1,0.1)) + Vector(0,0,-0.01) )
		self:SetAngles(self.flightvector:Angle())
		self:NextThink( CurTime() )
		return true
	end
end
