
AddCSLuaFile() 

if not VNTCB then return false end

ENT.Type = "anim"
ENT.PrintName = "Ammo Crate Base"
ENT.Instructions = "Ammo Crate"
ENT.Author = VNTCB.author
ENT.Category = VNTCB.Category.VNT
ENT.Spawnable = false
ENT.AdminOnly = true
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.AutomaticFrameAdvance = true

ENT.CrateEntity = "v92_base_ammocrate" -- (String) Name of this entity
ENT.CrateModel = Model( "models/Items/ammocrate_pistol.mdl" ) -- (String) Model to use

if CLIENT then
	
	function ENT:Draw( )
		self:DrawModel( )
	end

elseif SERVER then

	resource.AddWorkshop( "763938735" )

	function ENT:SpawnFunction( ply , tr )
		if ( not tr.Hit ) then return end
		local SpawnPos = tr.HitPos + tr.HitNormal * 64
		local ent = ents.Create( self.CrateEntity )
		ent:SetPos( SpawnPos )
		ent:Spawn( )
		ent:Activate( )

		return ent
	end

	function ENT:Initialize( )
		self:SetModel( self.CrateModel )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetUseType( SIMPLE_USE )
		self:SetBodygroup( 1 , 1 )
		self:DropToFloor( )
		CanUse = true
		local phys = self:GetPhysicsObject( )

		if ( phys:IsValid( ) ) then
			phys:Wake( )
		end
	end
end