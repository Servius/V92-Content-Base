
AddCSLuaFile( )

------------------------------------------------------
if not VNTCB then return false end --	Prevent this file from loading if for some odd reason the base Lua isn't loaded
------------------------------------------------------
--	Jesse V92's Custom SWep Base					--
--	Start Date:	2016/07/14							--
--	Purpose: Create a good SWep base				--
------------------------------------------------------
--	If you want to make weapons, you need to change	--
--		only the values listed with comments below.	--
--	The rest of it has been coded so it will read	--
--		these values and react properly.			--
--	If you want to make SWeps, refer to samples.	--
--	Those will show you in how to make SWeps.		--
--	When in doubt, contact me.						--
------------------------------------------------------
--	REMOVE LINES YOU DID NOT CHANGE!				--
--	THIS WILL SPEED UP LOAD TIMES!					--
------------------------------------------------------
--	Spawn settings									--	Can we spawn this?
------------------------------------------------------

SWEP.Spawnable = false -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = true -- (Boolean) Admin only spawnable
SWEP.Base = VNTCB.Bases.Wep -- (Weapon) Base to derive from

------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------

SWEP.PrintName = "V92 Melee Base" -- (String) Printed name on menu
SWEP.Category = VNTCB.Category.VNT -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

if SERVER then

	resource.AddWorkshop( SWEP.WorkshopID )
	
end --	Setup Clientside Info - This block must be in every weapon!

function SWEP:Initialize( )

	self:CustomInitialize( )

	self.Owner:ShouldDropWeapon( true ) --	(Boolean) Drop on death
	self:ShouldDropOnDie( true )
	self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )

end --	Called when the weapon is first loaded

------------------------------------------------------
--	Primary Fire Functions							--
------------------------------------------------------

function SWEP:PrimaryAttack( )

	if IsValid(self.Owner) then

		if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then

			--	Not the first time we predicted this? Owner isn't alive? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then return false end

			--	Run our melee SLASH function
			self:Melee( "Slash" )
			
			return false

		end
		
	end
	
end --	+attack1 has been pressed.

function SWEP:SecondaryAttack( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	Not the first time we predicted this? Owner isn't alive? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then return false end

			-- If +ATTACK2 & +USE then
			if self.Owner:KeyDown( IN_USE ) then
		
				--	if we're a melee, holster
				self:ToggleHolster( )

			else
			
				--	Stab
				self:Melee( "Stab" )
			
			end
			
			--	End the function here
			return false
			
		end
		
	end
	
end --	+attack2 has been pressed.

------------------------------------------------------
--	Reload Functions								--
------------------------------------------------------

function SWEP:Reload( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			--	If we've already run this exit out
			if not IsFirstTimePredicted() then return end

			if self.Owner:KeyDown( IN_USE ) and self:Get_IsHolstered( ) then
			
				--	Run the throw function
				self:Throw( )

				--	End our function
				return false
			end
			
			-- Custom function for child SWeps
			self:CustomReload( )
	
		end
	
	end

end --	Reload is being pressed.

------------------------------------------------------
--	Think Functions									--
------------------------------------------------------

function SWEP:Think( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			--	Run our second think function in the children
			self:CustomThink( )

			if self.UseWorldAnimations then
			
				self:HoldTypeAnimations( )

			end

			if self.AltFireMelee == false and self.HasMeleeAttack and ( self.Owner:KeyDown( IN_WALK ) and self.Owner:KeyDown( IN_ATTACK2 ) ) and self.ActionDelay <= CurTime( ) then
			
				self:MeleeBashThink( )
			
			end

			--	If we press use, and we're not moving then
			if self.HasHelpingHanims then 
			
				self:HelpingHandThink( )
			
			end

			self:NextThink( CurTime( ) + 0.5 )
			
		end
		
	end
	
end --	Called every frame
