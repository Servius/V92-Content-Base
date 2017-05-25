AddCSLuaFile( )
ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.WeaponName = "v92_base_ammobox"
ENT.AMMOTOGIVE = 1
ENT.AMMONAME = "V92 Ammo Carton Base"
ENT.AMMOTYPE = "smg"
ENT.AMMOMDL = Model( "models/jessev92/items/ammo_buckshot.mdl" )
ENT.PrintName = ( "Box of " .. ENT.AMMONAME )
ENT.Information = "Gives " .. ENT.AMMOTOGIVE .. " rounds of " .. ENT.AMMONAME .. " Ammo"
ENT.Author = "V92"
ENT.Category = VNTCB.Category.VNT
ENT.Spawnable = false
ENT.AdminOnly = true

if CLIENT then
	language.Add( ENT.WeaponName , ENT.PrintName )

	function ENT:Draw( )
		self:DrawModel( )
	end

	function ENT:Initialize( )
	end
else
	resource.AddWorkshop( "763938735" )

	function ENT:SpawnFunction( ply , tr )
		if ( not tr.Hit ) then return end
		local SpawnPos = tr.HitPos + tr.HitNormal * 16
		local ent = ents.Create( self.WeaponName )
		ent:SetPos( SpawnPos )
		ent:Spawn( )
		ent:Activate( )

		return ent
	end

	function ENT:Initialize( )
		self:SetModel( self.AMMOMDL )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:DrawShadow( true )
		self:SetCollisionGroup( COLLISION_GROUP_WEAPON )
		local phys = self:GetPhysicsObject( )

		if ( phys:IsValid( ) ) then
			phys:Wake( )
		end

		self:SetUseType( SIMPLE_USE )
	end

	function ENT:PhysicsCollide( data , physobj )
		-- Play sound on bounce
		if ( data.Speed > 80 and data.DeltaTime > 0.2 ) then
			self:EmitSound( "Default.ImpactSoft" )
		end
	end

	function ENT:OnTakeDamage( dmginfo )
		self:TakePhysicsDamage( dmginfo )
	end

	function ENT:Use( activator , caller )
		self:Remove( )
		self:EmitSound( "BaseCombatCharacter.AmmoPickup" )

		if ( activator:IsPlayer( ) ) then
			activator:GiveAmmo( self.AMMOTOGIVE , self.AMMOTYPE )
		end
	end
end