AddCSLuaFile( )
if not VNTCB then return false end
ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "V92 Tank Shell Base"
ENT.Author = VNTCB.author
ENT.Category = VNTCB.Category.VNT
ENT.WeaponName = "v92_base_projectile"
ENT.ShellMMSize = 20
ENT.TravelSnd = Sound( "BF2.Artillery.Fall" )
ENT.MDL = Model( "models/weapons/W_missile_closed.mdl" )
------------------------------------------------------
------------------------------------------------------
--	Nothing beyond this needs to be included		--
------------------------------------------------------
------------------------------------------------------
ENT.Spawnable = false
ENT.AdminOnly = true

if CLIENT then
	language.Add( ENT.WeaponName , ENT.PrintName )

	function ENT:Draw( )
		self.Entity:DrawModel( )
	end
else
	function ENT:Initialize( )
		self.matType = MAT_DIRT
		self.hitAngle = Angle( 270 , 0 , 0 )
		self.flightvector = self:GetForward( ) * 300
		self.timeleft = CurTime( ) + 5
		self.AirburstTime = CurTime( ) + 5
		self:SetModel( self.MDL )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_NONE )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetColor( Color( 255 , 255 , 255 , 255 ) )
		self:SetNoDraw( false )
		self:EmitSound( self.TravelSnd )
		TracerType = ents.Create( "env_spritetrail" )
		TracerType:SetKeyValue( "lifetime" , "0.05" )
		TracerType:SetKeyValue( "startwidth" , "90" )
		TracerType:SetKeyValue( "endwidth" , "15" )
		TracerType:SetKeyValue( "spritename" , "trails/laser.vmt" )
		TracerType:SetKeyValue( "rendermode" , "5" )
		TracerType:SetKeyValue( "rendercolor" , "200 200 50" )
		TracerType:SetPos( self:GetPos( ) )
		TracerType:SetParent( self )
		TracerType:Spawn( )
		TracerType:Activate( )
		Glow = ents.Create( "env_sprite" )
		Glow:SetKeyValue( "model" , "orangecore2.vmt" )
		Glow:SetKeyValue( "rendercolor" , "235 235 75" )
		Glow:SetKeyValue( "scale" , "0.4" )
		Glow:SetPos( self:GetPos( ) )
		Glow:SetParent( self )
		Glow:Spawn( )
		Glow:Activate( )
	end

	function ENT:Think( )
		if self.timeleft < CurTime( ) then
			self:Remove( )
		end

		if self.AirburstTime < CurTime( ) then
			self:StopSound( self.TravelSnd )
			util.BlastDamage( self , self , tr.HitPos , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_rad" ) ) , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_dmg" ) ) )
			local FXAirBurst = EffectData( )
			FXAirBurst:SetOrigin( self:GetPos( ) )
			FXAirBurst:SetScale( self.ShellMMSize * 2 )
			FXAirBurst:SetMagnitude( self.ShellMMSize * 0.75 )
			util.Effect( "fx_airburst" , FXAirBurst )
			self:Remove( )
		end

		local trace = { }
		trace.start = self:GetPos( )
		trace.endpos = self:GetPos( ) + self.flightvector
		trace.filter = self
		trace.mask = MASK_SHOT + MASK_WATER -- Trace for stuff that bullets would normally hit
		local tr = util.TraceLine( trace )

		if tr.Hit then
			self:StopSound( self.TravelSnd )

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
			FXTankShell:SetEntity( self )
			FXTankShell:SetOrigin( self:GetPos( ) )
			FXTankShell:SetScale( self.ShellMMSize / 12 )
			FXTankShell:SetRadius( self.matType )
			FXTankShell:SetAngles( self.hitAngle )
			util.Effect( "fx_impact_shell" , FXTankShell )
			util.BlastDamage( self , self , tr.HitPos , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_rad" ) ) , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_dmg" ) ) )
			util.BlastDamage( self , self , tr.HitPos , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_rad" ) ) , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_dmg" ) ) )
			util.ScreenShake( tr.HitPos , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_dmg" ) ) , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_rad" ) ) / 5 , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_rad" ) ) / 5 , self.ShellMMSize * ( GetConVarNumber( "vnt_proj_rad" ) ) )
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