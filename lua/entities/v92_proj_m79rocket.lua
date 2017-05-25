AddCSLuaFile( )
local _SELFENTNAME = "v92_proj_m79rocket"
local _INFONAME = "M79 MLRS Rocket"
ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = _INFONAME
ENT.Author = "V92"
ENT.Category = VNTCB.Category.VNT
ENT.Spawnable = false
ENT.AdminOnly = true
ENT.ShellMMSize = 65
ENT.ShellTravelSnd = "BF2.Rocket.Idle"

if CLIENT then
	language.Add( _SELFENTNAME , _INFONAME )

	function ENT:Draw( )
		self.Entity:DrawModel( )
	end
end

if SERVER then
	function ENT:Initialize( )
		self.matType = MAT_DIRT
		self.hitAngle = Angle( 270 , 0 , 0 )
		self.flightvector = self.Entity:GetForward( ) * 50
		self.timeleft = CurTime( ) + 5
		self.AirburstTime = CurTime( ) + 5
		self:SetModel( "models/jessev92/halo/vehicles/warthog_reach_m79_rocket.mdl" )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_NONE )
		self:SetSolid( SOLID_VPHYSICS ) -- CHEESECAKE!    >:3  
		self:EmitSound( Sound( self.ShellTravelSnd ) )
		TracerType = ents.Create( "env_spritetrail" )
		TracerType:SetKeyValue( "lifetime" , "0.1" )
		TracerType:SetKeyValue( "startwidth" , "90" )
		TracerType:SetKeyValue( "endwidth" , "15" )
		TracerType:SetKeyValue( "spritename" , "trails/laser.vmt" )
		TracerType:SetKeyValue( "rendermode" , "5" )
		TracerType:SetKeyValue( "rendercolor" , "225 225 35" )
		TracerType:SetPos( self.Entity:GetPos( ) )
		TracerType:SetParent( self.Entity )
		TracerType:Spawn( )
		TracerType:Activate( )
		Glow = ents.Create( "env_sprite" )
		Glow:SetKeyValue( "model" , "orangecore2.vmt" )
		Glow:SetKeyValue( "rendercolor" , "255 255 255" )
		Glow:SetKeyValue( "scale" , "0.4" )
		Glow:SetPos( self.Entity:GetPos( ) )
		Glow:SetParent( self.Entity )
		Glow:Spawn( )
		Glow:Activate( )
	end

	function ENT:Think( )
		if self.timeleft < CurTime( ) then
			self:Remove( )
		end

		if self.AirburstTime < CurTime( ) then
			util.BlastDamage( self , self , tr.HitPos , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_rad" ) ) , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_dmg" ) ) )
			local FXAirBurst = EffectData( )
			FXAirBurst:SetOrigin( self.Entity:GetPos( ) )
			FXAirBurst:SetScale( self.ShellMMSize * 2 )
			FXAirBurst:SetMagnitude( self.ShellMMSize * 0.75 )
			util.Effect( "fx_airburst" , FXAirBurst )
			self:Remove( )
		end

		local trace = { }
		trace.start = self.Entity:GetPos( )
		trace.endpos = self.Entity:GetPos( ) + self.flightvector
		trace.filter = self.Entity
		trace.mask = MASK_SHOT + MASK_WATER -- Trace for stuff that bullets would normally hit
		local tr = util.TraceLine( trace )

		if tr.Hit then
			if tr.HitSky then
				self:Remove( )

				return true
			end

			if tr.MatType == 83 then
				local FXWaterSplash = EffectData( )
				FXWaterSplash:SetOrigin( tr.HitPos )
				FXWaterSplash:SetNormal( tr.HitNormal ) -- In case you hit sideways water?
				FXWaterSplash:SetScale( self.ShellMMSize * 2 ) -- Big splash for big bullets
				util.Effect( "watersplash" , FXWaterSplash )
				self:Remove( )

				return true
			end

			local FXTankShell = EffectData( )
			FXTankShell:SetEntity( self.Entity )
			FXTankShell:SetOrigin( self:GetPos( ) )
			FXTankShell:SetScale( self.ShellMMSize / 12 )
			FXTankShell:SetRadius( self.matType )
			FXTankShell:SetAngles( self.hitAngle )
			util.Effect( "fx_impact_shell" , FXTankShell )
			util.BlastDamage( self , self , tr.HitPos , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_rad" ) ) , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_dmg" ) ) )
			util.ScreenShake( tr.HitPos , self.ShellMMSize / 2 , 10 , self.ShellMMSize / 10 , self.ShellMMSize / 5 )
			util.Decal( "Scorch" , tr.HitPos + tr.HitNormal , tr.HitPos - tr.HitNormal )
			self:Remove( )
		end

		self:SetPos( self:GetPos( ) + self.flightvector )
		self.flightvector = self.flightvector + ( Vector( math.Rand( -0.1 , 0.1 ) , math.Rand( -0.1 , 0.1 ) , math.Rand( -0.1 , 0.1 ) ) + Vector( 0 , 0 , -0.01 ) )
		self:SetAngles( self.flightvector:Angle( ) )
		self:NextThink( CurTime( ) )

		return true
	end
end