AddCSLuaFile( )
ENT.Type = "anim"
ENT.PrintName = "Ammo Crate Base"
ENT.Author = "V92"
ENT.Instructions = "Ammo Crate"
ENT.Category = "92nd Dev Unit"
ENT.Spawnable = false
ENT.AdminOnly = true
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.AutomaticFrameAdvance = true
ENT.WeaponName = "v92_base_ammocrate" -- (String) Name of this entity
ENT.SENTMODEL = Model( "models/Items/ammocrate_pistol.mdl" ) -- (String) Model to use

if CLIENT then
	function ENT:Draw( )
		self:DrawModel( )
	end
elseif SERVER then
	resource.AddWorkshop( "763938735" )

	function ENT:SpawnFunction( ply , tr )
		if ( not tr.Hit ) then return end
		local SpawnPos = tr.HitPos + tr.HitNormal * 64
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
		self:SetUseType( SIMPLE_USE )
		self:SetBodygroup( 1 , 1 )
		self:DropToFloor( )
		self.use = true
		local phys = self:GetPhysicsObject( )

		if ( phys:IsValid( ) ) then
			phys:Wake( )
		end
	end
end