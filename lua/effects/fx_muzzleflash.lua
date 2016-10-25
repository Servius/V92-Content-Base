AddCSLuaFile( )

--[[---------------------------------------------------------
	EFFECT:Init(data)
---------------------------------------------------------]]
function EFFECT:Init( data )
	self.WeaponEnt = data:GetEntity( )
	self.Attachment = data:GetAttachment( )
	self.Position = self:GetTracerShootPos( data:GetOrigin( ) , self.WeaponEnt , self.Attachment )
	self.Forward = data:GetNormal( )
	self.Angle = self.Forward:Angle( )
	self.Right = self.Angle:Right( )
	self.Up = self.Angle:Up( )
	local AddVel 		= self.WeaponEnt:GetOwner():GetVelocity()
	local emitter = ParticleEmitter( self.Position )

	--	BF2
	local flashtype = math.Clamp( ( data:GetScale( ) or 1 ) , 1 , 6 )
	if flashtype <= 1 then
		if math.random( 1 , 2 ) == 1 then
			local particle = emitter:Add( "jessev92/fx/muzzleflash_bf2" , self.Position )
			if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
			particle:SetVelocity( self.Forward * 0 )
			particle:SetAirResistance( 160 )
			particle:SetDieTime( 0.1 )
			particle:SetStartAlpha( 255 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand( 2, 4 ) )
			particle:SetEndSize( 6 )
			particle:SetRoll( math.Rand( 180 , 480 ) )
			particle:SetRollDelta( math.Rand( -1 , 1 ) )
			particle:SetColor( 255 , 255 , 255 )
		end

		local particle = emitter:Add( "sprites/heatwave" , self.Position + 8 * self.Forward )
		if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
		particle:SetVelocity( 350 * self.Forward + 1.1 * self.WeaponEnt:GetOwner( ):GetVelocity( ) )
		particle:SetAirResistance( 160 )
		particle:SetDieTime( 0.1 )
		particle:SetStartAlpha( 255 )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( 5 )
		particle:SetEndSize( 20 )
		particle:SetRoll( math.Rand( 180 , 480 ) )
		particle:SetRollDelta( math.Rand( -1 , 1 ) )
		particle:SetColor( 255 , 255 , 255 )
		local particle = emitter:Add( "particle/particle_smokegrenade" , self.Position )
		if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
		particle:SetVelocity( 100 * self.Forward + 8 * VectorRand( ) ) -- + AddVel)
		particle:SetAirResistance( 400 )
		particle:SetGravity( Vector( 0 , 0 , math.Rand( 25 , 100 ) ) )
		particle:SetDieTime( math.Rand( 1.0 , 2.0 ) )
		particle:SetStartAlpha( math.Rand( 225 , 255 ) )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( math.Rand( 2 , 4 ) )
		particle:SetEndSize( math.Rand( 6 , 8 ) )
		particle:SetRoll( math.Rand( -25 , 25 ) )
		particle:SetRollDelta( math.Rand( -0.05 , 0.05 ) )
		particle:SetColor( 120 , 120 , 120 )
		emitter:Finish( )
		
	--	CSS X
	elseif flashtype == 2 then
		
		if math.random( 1 , 2 ) == 1 then
			local particle = emitter:Add( "effects/muzzleflashx" , self.Position )
			if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
			particle:SetVelocity( self.Forward * 0 )
			particle:SetAirResistance( 160 )
			particle:SetDieTime( 0.1 )
			particle:SetStartAlpha( 255 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand( 2, 4 ) )
			particle:SetEndSize( 6 )
			particle:SetColor( 255 , 255 , 255 )
		end

		local particle = emitter:Add( "sprites/heatwave" , self.Position + 8 * self.Forward )
		if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
		particle:SetVelocity( 350 * self.Forward + 1.1 * self.WeaponEnt:GetOwner( ):GetVelocity( ) )
		particle:SetAirResistance( 160 )
		particle:SetDieTime( 0.1 )
		particle:SetStartAlpha( 255 )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( 10 )
		particle:SetEndSize( 20 )
		particle:SetRoll( math.Rand( 180 , 480 ) )
		particle:SetRollDelta( math.Rand( -1 , 1 ) )
		particle:SetColor( 255 , 255 , 255 )
		local particle = emitter:Add( "particle/particle_smokegrenade" , self.Position )
		if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
		particle:SetVelocity( 100 * self.Forward + 8 * VectorRand( ) ) -- + AddVel)
		particle:SetAirResistance( 400 )
		particle:SetGravity( Vector( 0 , 0 , math.Rand( 25 , 100 ) ) )
		particle:SetDieTime( math.Rand( 1.0 , 2.0 ) )
		particle:SetStartAlpha( math.Rand( 225 , 255 ) )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( math.Rand( 2 , 4 ) )
		particle:SetEndSize( math.Rand( 6 , 8 ) )
		particle:SetRoll( math.Rand( -25 , 25 ) )
		particle:SetRollDelta( math.Rand( -0.05 , 0.05 ) )
		particle:SetColor( 120 , 120 , 120 )
		emitter:Finish( )
		
	-- CSS Custom X 1
	elseif flashtype == 3 then
		
		if math.random( 1 , 2 ) == 1 then
			local particle = emitter:Add( "jessev92/fx/muzzleflash_x_1" , self.Position )
			if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
			particle:SetVelocity( self.Forward * 0 )
			particle:SetAirResistance( 160 )
			particle:SetDieTime( 0.1 )
			particle:SetStartAlpha( 255 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand( 2, 4 ) )
			particle:SetEndSize( 6 )
			particle:SetRoll( math.Rand( 15 , 20 ) )
			--particle:SetRollDelta( math.Rand( -1 , 1 ) )
			particle:SetRollDelta( 1 )
			particle:SetColor( 255 , 255 , 255 )
		end

		local particle = emitter:Add( "sprites/heatwave" , self.Position + 8 * self.Forward )
		if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
		particle:SetVelocity( 350 * self.Forward + 1.1 * self.WeaponEnt:GetOwner( ):GetVelocity( ) )
		particle:SetAirResistance( 160 )
		particle:SetDieTime( 0.1 )
		particle:SetStartAlpha( 255 )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( 10 )
		particle:SetEndSize( 20 )
		particle:SetRoll( math.Rand( 180 , 480 ) )
		particle:SetRollDelta( math.Rand( -1 , 1 ) )
		particle:SetColor( 255 , 255 , 255 )
		local particle = emitter:Add( "particle/particle_smokegrenade" , self.Position )
		if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
		particle:SetVelocity( 100 * self.Forward + 8 * VectorRand( ) ) -- + AddVel)
		particle:SetAirResistance( 400 )
		particle:SetGravity( Vector( 0 , 0 , math.Rand( 25 , 100 ) ) )
		particle:SetDieTime( math.Rand( 1.0 , 2.0 ) )
		particle:SetStartAlpha( math.Rand( 225 , 255 ) )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( math.Rand( 2 , 4 ) )
		particle:SetEndSize( math.Rand( 6 , 8 ) )
		particle:SetRoll( math.Rand( -25 , 25 ) )
		particle:SetRollDelta( math.Rand( -0.05 , 0.05 ) )
		particle:SetColor( 120 , 120 , 120 )
		emitter:Finish( )
		
	--	Siminov INS
	elseif flashtype == 4 then
		
		if math.random( 1 , 2 ) == 1 then
			local particle = emitter:Add( "effects/muzzleflash" .. math.random( 1 , 4 ) , self.Position )
			if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
			particle:SetVelocity( self.Forward * 0 )
			particle:SetAirResistance( 160 )
			particle:SetDieTime( 0.1 )
			particle:SetStartAlpha( 255 )
			particle:SetEndAlpha( 0 )
			particle:SetStartSize( math.Rand( 2, 4 ) )
			particle:SetEndSize( 6 )
			particle:SetRoll( math.Rand( 180 , 480 ) )
			particle:SetRollDelta( math.Rand( -1 , 1 ) )
			particle:SetColor( 255 , 255 , 255 )
		end

		local particle = emitter:Add( "sprites/heatwave" , self.Position + 8 * self.Forward )
		if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
		particle:SetVelocity( 350 * self.Forward + 1.1 * self.WeaponEnt:GetOwner( ):GetVelocity( ) )
		particle:SetAirResistance( 160 )
		particle:SetDieTime( 0.1 )
		particle:SetStartAlpha( 255 )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( 10 )
		particle:SetEndSize( 20 )
		particle:SetRoll( math.Rand( 180 , 480 ) )
		particle:SetRollDelta( math.Rand( -1 , 1 ) )
		particle:SetColor( 255 , 255 , 255 )
		local particle = emitter:Add( "particle/particle_smokegrenade" , self.Position )
		if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
		particle:SetVelocity( 100 * self.Forward + 8 * VectorRand( ) ) -- + AddVel)
		particle:SetAirResistance( 400 )
		particle:SetGravity( Vector( 0 , 0 , math.Rand( 25 , 100 ) ) )
		particle:SetDieTime( math.Rand( 1.0 , 2.0 ) )
		particle:SetStartAlpha( math.Rand( 225 , 255 ) )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( math.Rand( 2 , 4 ) )
		particle:SetEndSize( math.Rand( 6 , 8 ) )
		particle:SetRoll( math.Rand( -25 , 25 ) )
		particle:SetRollDelta( math.Rand( -0.05 , 0.05 ) )
		particle:SetColor( 120 , 120 , 120 )
		emitter:Finish( )
		
	--	Siminov INS Shotgun
	elseif flashtype == 5 then
			
		for i = 1 , 32 do
			local particle = emitter:Add( "effects/yellowflare" , self.Position )
			particle:SetVelocity( ( ( self.Forward + VectorRand( ) * 0.5 ) * math.Rand( 150 , 300 ) ) )
			particle:SetDieTime( math.Rand( 0.5 , 2 ) )
			particle:SetStartAlpha( 255 )
			particle:SetStartSize( 2 )
			particle:SetEndSize( 2 )
			particle:SetRoll( 0 )
			particle:SetGravity( Vector( 0 , 0 , -50 ) )
			particle:SetCollide( true )
			particle:SetBounce( 0.8 )
			particle:SetAirResistance( 375 )
			particle:SetStartLength( 0.2 )
			particle:SetEndLength( 0 )
			particle:SetVelocityScale( true )
			particle:SetCollide( true )
		end

		local particle = emitter:Add( "effects/yellowflare" , self.Position + 8 * self.Forward )
		particle:SetVelocity( self.Forward + 1.1 * AddVel )
		particle:SetAirResistance( 160 )
		particle:SetDieTime( 0.25 )
		particle:SetStartAlpha( 255 )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( 30 )
		particle:SetEndSize( 40 )
		particle:SetRoll( math.Rand( 180 , 480 ) )
		particle:SetRollDelta( math.Rand( -1 , 1 ) )
		particle:SetColor( 255 , 255 , 255 )
		emitter:Finish( )

	elseif flashtype >= 6 then
	
		local particle = emitter:Add( "sprites/heatwave" , self.Position )
		if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
		particle:SetVelocity( 350 * self.Forward + 1.1 * self.WeaponEnt:GetOwner( ):GetVelocity( ) )
		particle:SetAirResistance( 160 )
		particle:SetDieTime( 0.1 )
		particle:SetStartAlpha( 200 )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( 10 )
		particle:SetEndSize( 20 )
		particle:SetRoll( math.Rand( 180 , 480 ) )
		particle:SetRollDelta( math.Rand( -1 , 1 ) )
		particle:SetColor( 255 , 255 , 255 )
		local particle = emitter:Add( "particle/particle_smokegrenade" , self.Position )
		if not IsValid( data:GetEntity( ) ) or not IsValid( self.WeaponEnt:GetOwner( ) ) then return end
		particle:SetVelocity( 100 * self.Forward + 8 * VectorRand( ) ) -- + AddVel)
		particle:SetAirResistance( 400 )
		particle:SetGravity( Vector( 0 , 0 , math.Rand( 25 , 100 ) ) )
		particle:SetDieTime( math.Rand( 0.5 , 0.75 ) )
		particle:SetStartAlpha( math.Rand( 125 , 150 ) )
		particle:SetEndAlpha( 0 )
		particle:SetStartSize( math.Rand( 2 , 4 ) )
		particle:SetEndSize( math.Rand( 6 , 8 ) )
		particle:SetRoll( math.Rand( -25 , 25 ) )
		particle:SetRollDelta( math.Rand( -0.05 , 0.05 ) )
		particle:SetColor( 120 , 120 , 120 )
		emitter:Finish( )
		
	end
end

--[[---------------------------------------------------------
	EFFECT:Think()
---------------------------------------------------------]]
function EFFECT:Think( )
	return false
end

--[[---------------------------------------------------------
	EFFECT:Render()
---------------------------------------------------------]]
function EFFECT:Render( )
end