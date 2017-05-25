
------------------------------------------------------
if not VNTCB then return false end --	Prevent this file from loading if for some odd reason the base Lua isn't loaded
------------------------------------------------------

AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "V92 Parachute Ground" -- nice name
ENT.Category = VNTCB.Category.VNT -- (String) Category
ENT.Instructions = VNTCB.instructions -- (String) Instruction
ENT.Author = VNTCB.author -- (String) Author
ENT.Contact = VNTCB.contact -- (String) Contact
ENT.Purpose = VNTCB.purpose -- (String) Purpose

-- Server-side cummies
if SERVER then

	function ENT:Initialize( )
	
		--self:SetModel( self.Model )
		self:PhysicsInit( MOVETYPE_VPHYSICS )
		self:SetMoveType( MOVETYPE_FLYGRAVITY )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetCollisionGroup( COLLISION_GROUP_WORLD )
		self:DrawShadow( true )
		self:SetNoDraw( false )
		self:SetNotSolid( false )
		--self:SetNetworkedString( "Owner" , "World" )

		local Physics = self:GetPhysicsObject()
		
		if IsValid( Physics ) then

			Physics:EnableGravity( true )
			Physics:EnableDrag( true )

		end
		
		-- set our remove timer
		timer.Simple( 15 , function( )
		
			--	if we're still valid
			if IsValid( self ) then
			
				-- remove it
				SafeRemoveEntity( self )
				
			end

		end )

	end

end
