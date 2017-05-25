
AddCSLuaFile( )

------------------------------
------------------------------
--	TYPES OF SHELLS
------------------------------
------------------------------
--	1 = 10x25mm Auto
--	2 = 12-Gauge
--	3 = .380 ACP
--	4 = .45 ACP
--	5 = .50 AE
--	6 = .50 BMG
--	7 = 5.45x39mm Warsaw Pact
--	8 = 7.62x25mm Warsaw Pact
--	9 = 7.62x33mm Warsaw Pact
--	10 = 7.62x39mm Warsaw Pact
--	11 = 7.62x54mm Warsaw Pact
--	12 = 7.92x57mm Warsaw Pact
--	13 = 9x18mm Warsaw Pact
--	14 = 9x19mm NATO
--	15 = 5.56x45mm NATO
--	16 = 5.56x45mm NATO 1st Belt Link
--	17 = 5.56x45mm NATO Belt Link
--	18 = 7.62x51mm NATO
--	19 = 7.62x51mm NATO 1st Belt Link
--	20 = 7.62x51mm NATO Belt Link
--	21 = M1 Garand En Bloc Clip

EFFECT.Models = { }
EFFECT.Sounds = { }

EFFECT.Models[ 1 ] = Model( "models/jessev92/items/shells/10x25mm.mdl" )
EFFECT.Sounds[ 1 ] = { Pitch = 100 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 2 ] = Model( "models/jessev92/items/shells/12gauge.mdl" )
EFFECT.Sounds[ 2 ] = { Pitch = 110 , Wavs = { "weapons/fx/tink/shotgun_shell1.wav" , "weapons/fx/tink/shotgun_shell2.wav" , "weapons/fx/tink/shotgun_shell3.wav" } }

EFFECT.Models[ 3 ] = Model( "models/JesseV92/items/shells/380acp.mdl" )
EFFECT.Sounds[ 3 ] = { Pitch = 85 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 4 ] = Model( "models/JesseV92/items/shells/45acp.mdl" )
EFFECT.Sounds[ 4 ] = { Pitch = 85 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 5 ] = Model( "models/JesseV92/items/shells/50ae.mdl" )
EFFECT.Sounds[ 5 ] = { Pitch = 90 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 6 ] = Model( "models/JesseV92/items/shells/50bmg.mdl" )
EFFECT.Sounds[ 6 ] = { Pitch = 105 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 7 ] = Model( "models/JesseV92/items/shells/545x39mm.mdl" )
EFFECT.Sounds[ 7 ] = { Pitch = 95 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 8 ] = Model( "models/JesseV92/items/shells/762x25mm.mdl" )
EFFECT.Sounds[ 8 ] = { Pitch = 90 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 9 ] = Model( "models/JesseV92/items/shells/792x33mm.mdl" )
EFFECT.Sounds[ 9 ] = { Pitch = 92 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 10 ] = Model( "models/JesseV92/items/shells/762x39mm.mdl" )
EFFECT.Sounds[ 10 ] = { Pitch = 95 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 11 ] = Model( "models/JesseV92/items/shells/762x54mm.mdl" )
EFFECT.Sounds[ 11 ] = { Pitch = 98 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 12 ] = Model( "models/JesseV92/items/shells/792x57mm.mdl" )
EFFECT.Sounds[ 12 ] = { Pitch = 100 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 13 ] = Model( "models/JesseV92/items/shells/9x18mm.mdl" )
EFFECT.Sounds[ 13 ] = { Pitch = 89 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 14 ] = Model( "models/JesseV92/items/shells/9x19mm.mdl" )
EFFECT.Sounds[ 14 ] = { Pitch = 85 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 15 ] = Model( "models/JesseV92/items/shells/556x45mm.mdl" )
EFFECT.Sounds[ 15 ] = { Pitch = 102 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 16 ] = Model( "models/JesseV92/items/shells/556link1st.mdl" )
EFFECT.Sounds[ 16 ] = { Pitch = 90 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 17 ] = Model( "models/JesseV92/items/shells/556link.mdl" )
EFFECT.Sounds[ 17 ] = { Pitch = 90 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 18 ] = Model( "models/JesseV92/items/shells/762x51mm.mdl" )
EFFECT.Sounds[ 18 ] = { Pitch = 105 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 19 ] = Model( "models/JesseV92/items/shells/762link1st.mdl" )
EFFECT.Sounds[ 19 ] = { Pitch = 105 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 20 ] = Model( "models/JesseV92/items/shells/762link.mdl" )
EFFECT.Sounds[ 20 ] = { Pitch = 105 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

EFFECT.Models[ 21 ] = Model( "models/JesseV92/items/shells/garand_clip.mdl" )
EFFECT.Sounds[ 21 ] = { Pitch = 80 , Wavs = { "player/pl_shell1.wav" , "player/pl_shell2.wav" , "player/pl_shell3.wav" } }

function EFFECT:Init( data )
	if not IsValid( data:GetEntity( ) ) then
		self:SetModel( Model( "models/JesseV92/items/shells/556x45mm.mdl" ) )
		self.RemoveMe = true

		return
	end

	local bullettype = math.Clamp( ( data:GetScale( ) or 1 ) , 1 , 21 )
	local angle , pos = self:GetBulletEjectPos( data:GetOrigin( ) , data:GetEntity( ) , data:GetAttachment( ) )
	local direction = angle:Forward( )
	local directionUp = angle:Up( )
	local ang = LocalPlayer( ):GetAimVector( ):Angle( )
	self:SetPos( pos )
	self:SetModel( self.Models[ bullettype ] or Model( "models/JesseV92/items/shells/556x45mm.mdl" ) )
	self:PhysicsInitBox( Vector( -1 , -1 , -1 ) , Vector( 1 , 1 , 1 ) )
	self:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
	self:SetCollisionBounds( Vector( -128 - 128 , -128 ) , Vector( 128 , 128 , 128 ) )
	local phys = self:GetPhysicsObject( )

	if IsValid( phys ) then
		phys:Wake( )
		phys:SetDamping( 0 , 15 )
		if bullettype == 21 then
			phys:SetVelocity( direction * math.random( 356 , 364 ) )
		else
			phys:SetVelocity( direction * math.random( 100 , 125 ) )
		end
		phys:AddAngleVelocity( ( VectorRand( ) * 500 ) )
		phys:SetMaterial( "gmod_silent" )
	end

	self:SetAngles( ang )
	self.HitSound = table.Random( self.Sounds[ bullettype ].Wavs )
	self.HitPitch = self.Sounds[ bullettype ].Pitch + math.random( -10 , 10 )
	self.SoundTime = CurTime( ) + math.Rand( 0.5 , 0.75 )
	
	local ShellTime = GetConVarNumber( "VNT_Base_SWep_ShellTime" )
	self.LifeTime = CurTime( ) + ShellTime
	self.Alpha = 255
end

function EFFECT:GetBulletEjectPos( Position , Ent , Attachment )
	if ( not Ent:IsValid( ) ) then return Angle( ) , Position end
	if ( not Ent:IsWeapon( ) ) then return Angle( ) , Position end

	-- Shoot from the ViewModel
	if ( Ent:IsCarriedByLocalPlayer( ) and GetViewEntity( ) == LocalPlayer( ) ) then
		local ViewModel = LocalPlayer( ):GetViewModel( )

		if ( ViewModel:IsValid( ) ) then
			local att = ViewModel:GetAttachment( Attachment )
			if ( att ) then return att.Ang , att.Pos end
		end
	else
		-- Shoot from the world model
		local att = Ent:GetAttachment( Attachment )
		if ( att ) then return att.Ang , att.Pos end
	end

	return Angle( ) , Position
end

function EFFECT:Think( )
	if self.RemoveMe then return false end

	if self.SoundTime and self.SoundTime < CurTime( ) then
		self.SoundTime = nil
		self:EmitSound( self.HitSound , self:GetPos( ) , 50 , self.HitPitch )
	end

	if self.LifeTime < CurTime( ) then
		self.Alpha = ( self.Alpha or 255 ) - 2
		self:SetColor( Color( 255 , 255 , 255 , self.Alpha ) )
	end

	return self.Alpha > 2
end

function EFFECT:Render( )
	self:DrawModel( )
end