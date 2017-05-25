
AddCSLuaFile( )

if not VNTCB then return false end

ENT.Type = "anim"
ENT.PrintName = "Kit Bag Base"
ENT.Author = VNTCB.author
ENT.Information = "Gives you a preset weapon kit"
ENT.Category = VNTCB.Category.VNT
ENT.Spawnable = false
ENT.AdminOnly = true
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.WeaponsToGive = ENT.WeaponsToGive or {} -- ( String ) Name of the weapon entity in Lua / weapons / swep_name.lua
ENT.AmmoToGive = { 
	["pistol"] = 36
} --	Ammo to give the user
ENT.KitBagName = "v92_base_kitbag" -- ( String ) Name of this entity
ENT.KitBagModel = Model( "models/JesseV92/payday2/items/bag_loot_static.mdl" ) -- ( String ) Model to use
ENT.KitBagSkin = 0 -- ( Integer ) Skin to use
ENT.RemoveOnSpawn = false -- Remove the weapon on spawn , I.E. for the fists or unarmed SWeps
ENT.ContentCollisionSound = nil -- Physics collisions
ENT.BagCollisionSound = nil -- Physics collisions
ENT.PickupSound = nil -- Pickup sounds

--	Gibs
--	If we need more , tell me to add more and I will just for you , babe.
ENT.GibLifetime = 16 -- ( Integer ) Lifetime of Gibs
ENT.GibOne = nil -- ( Table: First Gib Model , Vector( Pos ) , Angle( Ang ) , Skin( Integer ) )
ENT.GibTwo = nil -- ( Table: Second Gib Model , Vector( Pos ) , Angle( Ang ) , Skin( Integer ) )
ENT.GibThree = nil -- ( Table: Third Gib Model , Vector( Pos ) , Angle( Ang ) , Skin( Integer ) )
ENT.GibFour = nil -- ( Table: Fourth Gib Model , Vector( Pos ) , Angle( Ang ) , Skin( Integer ) )
ENT.GibFive = nil -- ( Table: Fifth Gib Model , Vector( Pos ) , Angle( Ang ) , Skin( Integer ) )

--	Template Content
--[[

	ENT.WeaponsToGive = { "weapon_crowbar" , "weapon_pistol" } -- ( String ) Name of the weapon entity in Lua / weapons / swep_name.lua
	ENT.AmmoToGive = { 
		["pistol"] = 36 , 
	} --	Ammo to give the user
	ENT.KitBagName = "v92_base_kitbag" -- ( String ) Name of this entity
	ENT.KitBagModel = Model( "models / JesseV92 / payday2 / items / bag_loot_static.mdl" ) -- ( String ) Model to use
	ENT.RemoveOnSpawn = false -- Remove the weapon on spawn , I.E. for the fists or unarmed SWeps
	ENT.ContentCollisionSound = Sound( "BaseCombatWeapon.WeaponDrop" ) -- Physics collisions
	ENT.BagCollisionSound = Sound( "Rubber.ImpactHard" ) -- Physics collisions
	ENT.PickupSound = Sound( "jessev92 / fx / zipper1.wav" ) -- Pickup sounds

--]]

if SERVER then

	
	-- Spawn function
	function ENT:SpawnFunction( ply , TraceResult )

		if ( not TraceResult.Hit ) then return end
		
		local SpawnPos = TraceResult.HitPos + TraceResult.HitNormal * 16
		local ent = ents.Create( self.KitBagName )
		ent:SetPos( SpawnPos )
		ent:Spawn( )
		ent:Activate( )

		return ent
	end

	-- Server-side initialize
	function ENT:Initialize( )
		
		self:SetModel( self.KitBagModel )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetUseType( SIMPLE_USE )
		self:DrawShadow( true )
		self:SetSkin( self.KitBagSkin )
		
		local phys = self:GetPhysicsObject( )

		if ( phys:IsValid( ) ) then
			phys:Wake( )
		end

		-- Auto-removal for invalid shit
		if self.RemoveOnSpawn != false then
			self:Remove( )
			return false
		end
	
	end

	-- Physics collisions
	function ENT:PhysicsCollide( data , phys )
	
		-- If over a entitySpeed
		if ( data.Speed  >  120 and data.DeltaTime  >  0.4 ) then
			-- Play a sound
			if self.ContentCollisionSound != nil then
				self:EmitSound( self.ContentCollisionSound , self:GetPos( ) )
			end
			if self.BagCollisionSound != nil then
				sound.Play( self.BagCollisionSound , self:GetPos( ) )
			end
		end
	end

	function ENT:Use( ply )
		if ply:IsPlayer( ) then
			if not ply:KeyDown( IN_SPEED ) then
				ply:PickupObject( self )
			else 
			
				if self.PickupSound != nil then
					sound.Play( self.PickupSound , self:GetPos( ) )
				end

				for _ , Weapon in pairs( self.WeaponsToGive ) do
					ply:Give( tostring( Weapon ) , true )
				end

				for AmmoType , AmmoCount in pairs( self.AmmoToGive ) do

					if not ( AmmoType ==  "BaseClass" ) then
					
						ply:GiveAmmo( AmmoCount , AmmoType , true )
					
					end
					
				end

				if self.GibOne != nil then
					
					self.GibOneEnt = ents.Create( "prop_physics" )
					self.GibOneEnt:SetModel( self.GibOne[1] )
					self.GibOneEnt:SetSkin( self.GibOne[4] )		
					self.GibOneEnt:SetLocalPos( self:GetPos( ) + self.GibOne[2] )
					self.GibOneEnt:SetLocalAngles( self:GetAngles( ) + self.GibOne[3] )
					self.GibOneEnt:Spawn( )
					self.GibOneEnt:Activate( )

				end

				if self.GibTwo != nil then
					
					self.GibTwoEnt = ents.Create( "prop_physics" )
					self.GibTwoEnt:SetModel( self.GibTwo[1] )
					self.GibTwoEnt:SetSkin( self.GibTwo[4] )
					self.GibTwoEnt:SetLocalPos( self:GetPos( ) + self.GibTwo[2] )
					self.GibTwoEnt:SetLocalAngles( self:GetAngles( ) + self.GibTwo[3] )
					self.GibTwoEnt:Spawn( )
					self.GibTwoEnt:Activate( )

				end

				if self.GibThree != nil then
					
					self.GibThreeEnt = ents.Create( "prop_physics" )
					self.GibThreeEnt:SetModel( self.GibThree[1] )
					self.GibThreeEnt:SetSkin( self.GibThree[4] )
					self.GibThreeEnt:SetLocalPos( self:GetPos( ) + self.GibThree[2] )
					self.GibThreeEnt:SetLocalAngles( self:GetAngles( ) + self.GibThree[3] )
					self.GibThreeEnt:Spawn( )
					self.GibThreeEnt:Activate( )
	
				end

				if self.GibFour != nil then
					
					self.GibFourEnt = ents.Create( "prop_physics" )
					self.GibFourEnt:SetModel( self.GibFour[1] )
					self.GibFourEnt:SetSkin( self.GibFour[4] )
					self.GibFourEnt:SetLocalPos( self:GetPos( ) + self.GibFour[2] )
					self.GibFourEnt:SetLocalAngles( self:GetAngles( ) + self.GibFour[3] )
					self.GibFourEnt:Spawn( )
					self.GibFourEnt:Activate( )

				end

				if self.GibFive != nil then
					
					self.GibFiveEnt = ents.Create( "prop_physics" )
					self.GibFiveEnt:SetModel( self.GibFive[1] )
					self.GibFiveEnt:SetSkin( self.GibFive[4] )
					self.GibFiveEnt:SetLocalPos( self:GetPos( ) + self.GibFive[2] )
					self.GibFiveEnt:SetLocalAngles( self:GetAngles( ) + self.GibFive[3] )
					self.GibFiveEnt:Spawn( )
					self.GibFiveEnt:Activate( )

				end

				self:SetNoDraw( true )
				self:SetSolid( SOLID_NONE )
				self:DrawShadow( false )
				
				timer.Simple( self.GibLifetime , function( )

					if self.GibOne != nil then

						SafeRemoveEntity( self.GibOneEnt )
					
					end
					
					if self.GibTwo != nil then
					
						SafeRemoveEntity( self.GibTwoEnt )					
					
					end
					
					if self.GibThree != nil then
					
						SafeRemoveEntity( self.GibThreeEnt )
					
					end
					
					if self.GibFour != nil then
					
						SafeRemoveEntity( self.GibFourEnt )
					
					end
					
					if self.GibFive != nil then
					
						SafeRemoveEntity( self.GibFiveEnt )					
					
					end

					SafeRemoveEntity( self )

				end )
				
			end
			
		end
		
	end
	
else -- If client

	function ENT:Draw( )
		self:DrawModel( )
	end

	-- Add the entity to the language files so it prints a nice name
	language.Add( ENT.KitBagName , ENT.PrintName )

end
