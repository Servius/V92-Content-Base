
------------------------------------------------------
if not VNTCB then return false end --	Prevent this file from loading if for some odd reason the base Lua isn't loaded
------------------------------------------------------

AddCSLuaFile()

ENT.Type = "anim"

ENT.PrintName = "V92 Parachute Flight" -- nice name
ENT.Category = VNTCB.Category.VNT -- (String) Category
ENT.Instructions = VNTCB.instructions -- (String) Instruction
ENT.Author = VNTCB.author -- (String) Author
ENT.Contact = VNTCB.contact -- (String) Contact
ENT.Purpose = VNTCB.purpose -- (String) Purpose

-- Client-side wankery
if CLIENT then

	-- client think, every tick
	function ENT:Think( )

		-- self and owner are valid
		if IsValid( self ) and IsValid( self.Owner ) then

			-- fixes the lagging behind, thanks to Sam from GMod Tower
			self:SetRenderOrigin( self.Owner:GetPos( ) )

		end

	end

end

-- Server-side cummies
if SERVER then

	--	Server initialize
	function ENT:Initialize( )
	
		-- we set this in the weapon itself
		--self:SetModel( self.Model )
		
		-- set our physics shit
		self:PhysicsInit( MOVETYPE_VPHYSICS )
		self:SetMoveType( MOVETYPE_NONE )
		self:SetSolid( SOLID_VPHYSICS )
		
		-- Draw shadow
		self:DrawShadow( true )
		
		-- draw model
		self:SetNoDraw( false )
		
		-- model is solid
		self:SetNotSolid( false )

		-- set our owner
		self:SetNetworkedString( "Owner" , "World" )

	end

	-- Server think, every tick
	function ENT:Think( )
	
		-- self and owner are valid
		if IsValid( self ) and IsValid( self.Owner ) then

			-- set pos
			self:SetPos( self.Owner:GetPos( ) )
			
			-- set angles
			self:SetAngles( self.Owner:GetAngles() )

		end

		-- if the owner isn't qualified
		if self.Owner:GetNWInt("V92ParachutingPhase") <= 0 then
		
			-- remove it
			SafeRemoveEntity( self )

		end
	end
	
end
