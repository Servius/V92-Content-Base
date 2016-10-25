AddCSLuaFile( )
if not VNTCB then return false end
ENT.Type = "anim"
ENT.PrintName = "Weapon Entity"
ENT.Author = VNTCB.author
ENT.Information = "Uses 5.56x45mm NATO Ammo"
ENT.Category = VNTCategory.VNT
ENT.Spawnable = false
ENT.AdminOnly = true
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.WeaponName = "v92_base_wepent" -- (String) Name of this entity
ENT.SWEPNAME = "weapon_crowbar" -- (String) Name of the weapon entity in Lua/weapons/swep_name.lua
ENT.SENTMODEL = Model( "models/weapons/w_crowbar.mdl" ) -- (String) Model to use

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