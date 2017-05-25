
AddCSLuaFile( )
if not VNTCB then return false end
ENT.Type = "anim"
ENT.PrintName = "Weapon Entity Base"
ENT.Author = VNTCB.author
ENT.Information = "Uses Some Ammo"
ENT.Category = VNTCB.Category.VNT
ENT.Spawnable = false
ENT.AdminOnly = true
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.SWepName = "weapon_crowbar" -- (String) Name of the weapon entity in Lua/weapons/swep_name.lua
ENT.WeaponName = ENT.SWepName .. "_ent" -- (String) Name of this entity
ENT.SEntModel = Model( "models/weapons/w_crowbar.mdl" ) -- (String) Model to use
ENT.RemoveOnSpawn = false -- Remove the weapon on spawn, I.E. for the fists or unarmed SWeps
ENT.CollisionSound = Sound( "BaseCombatWeapon.WeaponDrop" ) -- Physics collisions
ENT.PickupSound = Sound( "BaseCombatCharacter.AmmoPickup" ) -- Pickup sounds

if SERVER then

	
	-- Spawn function
	function ENT:SpawnFunction( ply , tr )

		if ( not tr.Hit ) then return end
		
		local SpawnPos = tr.HitPos + tr.HitNormal * 16
		local ent = ents.Create( self.WeaponName )
		ent:SetPos( SpawnPos )
		ent:Spawn( )
		ent:Activate( )

		return ent
	end

	-- Server-side initialize
	function ENT:Initialize( )
		
		self:SetModel( self.SEntModel )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:DrawShadow( true )
		local phys = self:GetPhysicsObject( )

		if ( phys:IsValid( ) ) then
			phys:Wake( )
		end

		self:SetUseType( SIMPLE_USE )
		
		-- Auto-removal for invalid shit
		if self.RemoveOnSpawn != false then
			self:Remove()
			return false
		end
	
	end

	-- Physics collisions
	function ENT:PhysicsCollide( data , phys )
	
		-- If over a speed
		if ( data.Speed > 120 and data.DeltaTime > 0.4 ) then
			-- Play a sound
			sound.Play( self.CollisionSound , self:GetPos() )
		end
	end

	function ENT:Use( ply )

		if ply:IsPlayer( ) and not ply:HasWeapon( self.WeaponName ) then

			if not ply:KeyDown( IN_SPEED ) then

				ply:PickupObject( self )

			else 

				if self.PickupSound != nil then

					sound.Play( self.PickupSound , self:GetPos() )

				end

				ply:Give( self.SWepName , true )

				SafeRemoveEntity( self )

			end

		end

	end

else -- If client

	function ENT:Draw( )
		self:DrawModel( )
	end

	-- Add the entity to the language files so it prints a nice name
	language.Add( ENT.WeaponName , ENT.PrintName )

end
