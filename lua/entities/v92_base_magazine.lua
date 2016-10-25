AddCSLuaFile( )
ENT.Type = "anim"
ENT.PrintName = "V92 Magazine Base"
ENT.Author = "V92"
ENT.Information = "Base for Magazines"
ENT.Category = "92nd Dev Unit"
ENT.Spawnable = false
ENT.AdminOnly = true
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.WeaponName = "v92_base_magazine" -- (String) Name of this entity
ENT.MAGTABLENAME = "v92_mag_stanag" -- (String) Name of the magazine type table
ENT.MAGSIZE = 30 -- (Integer) Size of the Mag in bullets
ENT.MAGNAME = "STANAG" -- (String) Nice name for the UI
ENT.MAGAMMO = "556x45mmnato" -- (String) Ammo type used by the mag
ENT.MAGMODEL = Model( "models/Items/battery.mdl" ) -- (String) Model used for the magazine

if CLIENT then
	function ENT:Draw( )
		self:DrawModel( )
	end

	language.Add( ENT.WeaponName , ENT.PrintName )
else
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
		self:SetModel( self.SENTMODEL )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:DrawShadow( true )
		local phys = self:GetPhysicsObject( )

		if ( phys:IsValid( ) ) then
			phys:Wake( )
		end

		self:SetUseType( SIMPLE_USE )
	end

	function ENT:PhysicsCollide( data , phys )
		if ( data.Speed > 120 and data.DeltaTime > 0.4 ) then
			self:EmitSound( "BaseCombatWeapon.WeaponDrop" )
		end
	end

	function ENT:Use( ply )
		if ply:IsPlayer( ) and not ply:HasWeapon( self.WeaponName ) then
			self:EmitSound( "BaseCombatCharacter.AmmoPickup" )
			ply:Give( self.SWEPNAME )
			self:Remove( )
		end
	end
end