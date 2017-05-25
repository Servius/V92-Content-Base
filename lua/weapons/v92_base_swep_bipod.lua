
AddCSLuaFile( )
------------------------------------------------------
if not VNTCB then return false end --	Prevent this file from loading if for some odd reason the base Lua isn't loaded
------------------------------------------------------
--	Jesse V92's Custom SWep Base					--
--	Start Date:	2016/07/14							--
--	Purpose: Create a good SWep base				--
------------------------------------------------------
--	Spawn settings									--	Can we spawn this?
------------------------------------------------------

SWEP.Spawnable = false -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = true -- (Boolean) Admin only spawnable
SWEP.Base = VNTCB.Bases.Wep -- (Weapon) Base to derive from

------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------

SWEP.PrintName = "V92 Bipod Base" -- (String) Printed name on menu
SWEP.Category = VNTCB.Category.VNT -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Shotgun Settings								--	Settings for shotguns
------------------------------------------------------

if SERVER then

	resource.AddWorkshop( SWEP.WorkshopID )
	
end --	Setup Clientside Info - This block must be in every weapon!

function SWEP:Initialize( )

	self:CustomInitialize( )

	
	self.Owner:ShouldDropWeapon( true ) --	(Boolean) Drop on death
	self:ShouldDropOnDie( true )

	local VModel = self.Owner:GetViewModel( )
	self.ActionDelay = ( CurTime( ) + VModel:SequenceDuration( ) + 0.25 )

end --	Called when the weapon is first loaded

------------------------------------------------------
--	Primary Fire Functions							--
------------------------------------------------------

function SWEP:PrimaryAttack( )

	if IsValid( self ) and IsValid(self.Owner) then

		if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then

			local VModel = self.Owner:GetViewModel( )

			--	Not the first time we predicted this? Owner isn't alive? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then
			
				-- print("not IsFirstTimePredicted() - PrimaryAttack()")
				
				return false

			end

			--	Check for various things that say, "hey fucktard, you can't shoot now"
			-- if not self:CanPrimaryAttack( ) then 

				-- print( "not can primary fire" )

				-- return false

			-- end

			if self.Owner:KeyDown( IN_USE ) then

				self:ToggleBipodCustom()

				print( "toggle bipod custom" )
				
				return false

			end

			--	we can't fire underwater & we're underwater
			if ( self.CanFireUnderwater == false and self.Owner:WaterLevel( ) > 2 ) then

				--print( "cant fire underwater" )
			
				return false
				
			else
	
				--	If our mag isn't empty
				if self:Clip1( ) > 0  then
					
					self:PrimaryAttackFireCallBackBipod()

					--print( "attack1 callback" )

				end

			end
			
		end					

	end

end --	+attack1 has been pressed.

function SWEP:PrimaryAttackFireCallBackBipod( )

	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			local PrimaryDelay = ( 60 / self.Primary.RPM ) -- (Float) Don't touch
			local PrimaryDamage = ( math.random( self.Primary.PureDmg - 3 , self.Primary.PureDmg + 3 ) * GetConVarNumber( "VNT_Base_SWep_DamageMul" ) )

			if self.CurrentMode == 1 then

				self.Primary.Automatic = false
				
				if SERVER then
				
					self:FireBullet( PrimaryDamage , self.EffectiveRange , self.Primary.NumShots , self.Primary.Force , "Right" )
					
				end
				
				self:SetNextPrimaryFire( CurTime( ) + PrimaryDelay )
				self:TakePrimaryAmmo( 1 )
				
			elseif self.CurrentMode == 2 then

				self.Primary.Automatic = false
				self.BurstTimer = CurTime( )
				self.BurstCounter = self.BurstShots - 1
				self:SetNextPrimaryFire( CurTime( ) + PrimaryDelay )
				
			elseif self.CurrentMode == 3 then

				self.Primary.Automatic = true
				
				if SERVER then
				
					self:FireBullet( PrimaryDamage , self.EffectiveRange , self.Primary.NumShots , self.Primary.Force , "Right" )
					
				end
				
				self:SetNextPrimaryFire( CurTime( ) + PrimaryDelay )
				self:TakePrimaryAmmo( 1 )

			elseif self.HasSpecialFireMode[1] and self.CurrentMode == 4 then

				self.Primary.Automatic = self.HasSpecialFireMode[2]

				if SERVER then
				
					self:FireBullet( PrimaryDamage , self.EffectiveRange , self.Primary.NumShots , self.Primary.Force , "Right" )
					
				end

				local SpecialDelay = ( 60 / self.HasSpecialFireMode[4] ) -- (Float) Don't touch
				self:SetNextPrimaryFire( CurTime( ) + SpecialDelay )
				self:TakePrimaryAmmo( 1 )
				
			end

			--	Play our firing animations
			self:PlayFiringAnimation( "Right" , self:Clip1() )

			--	Add a delay before we fire our next bullet based on RPM
			self.ActionDelay = ( CurTime( ) + PrimaryDelay )

			--	If our Jam toggle is set to true then
			if not GetConVarNumber( "VNT_Base_SWep_JamToggle" ) == 0 and not self.StoppageRate == 0 then
				--	If we're holstered or mag is empty then qui	t
				if self:Get_IsHolstered( ) or self:Clip1( ) <= 1 then return end
				--	Set our Jam chance to be based on our CVa	r
				local JamDice = math.random( 1 , self.StoppageRate )
				if GetConVarNumber( "VNT_Debug" ) == 1 then MsgN( JamDice ) end

				--	If we hit our small jam chance
				if JamDice > ( self.StoppageRate - 5 ) then
					--	Set jammed little to true and run the function
					self:Set_HasSmallJam( true )

					self:MessagePrint( "PrimarySmall" )
				
				elseif JamDice <= 1 then
					--	Else if we hit one
					--	Set our big jam to true and run the function
					self:Set_HasLargeJam( true )

					self:MessagePrint( "PrimaryLarge" )
				
				end

			end
			
		end

	end

end

function SWEP:SecondaryAttack( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local VModel = self.Owner:GetViewModel( )

			--	Not the first time we predicted this? Owner isn't alive? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then return end

			if self:Get_IsShotgunReloading() then
			
				self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + 0.1 )
				self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + 0.1 )
				return false
				
			else
			
				if ( self.Owner:KeyDown( IN_USE ) ) then
				
					-- print( "mouse 2 + use" )
			
					if not ( self:Get_IsInScope( ) or self:Get_IsInIronSights( ) ) then

						--	cycle the fire mode
						self:ToggleFireMode( )
				
						-- print( "toggle fire mode" )

					else
					
						--	Cycle our sniper scope zoom factor
						self:ToggleZoom( )

						-- print( "toggle zoom" )

					end
					
					return false
					
				else
					
					if self.Owner:KeyDown( IN_WALK ) then
						
						--	Toggle the suppressor
						self:ToggleSuppressor( )

						-- print( "toggle supporessor" )
						
						return false
						
					end

				end

				self:ToggleIronsights()

				-- print( "Toggle Irons - not reloading shell" )

			end

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

			local VModel = self.Owner:GetViewModel( )

			--	If we've already run this exit out
			if not IsFirstTimePredicted() then return end

			if self:Get_IsShotgunReloading() then
				
				if
					(
						self:Ammo1() > 0 or 
						self:Clip1() < self.Primary.ClipSize
					)
				then

					self:ShellThink( "Insert" )

				else

					self:ShellThink( "Finished" )

				end

			end

			--	If jammed, we're not reloading, we're clearing a jam
			if ( self:Get_HasLargeJam( ) or self:Get_HasSmallJam( ) or self:Get_HasLargeJam(Left ) or self:Get_HasSmallJamLeft( ) )  then

				self:MessagePrint( "ClearingJam" )

				--	Run the shitty jammed functon
				self:WeaponJammed()

				self.ActionDelay = ( CurTime( ) + VModel:SequenceDuration( ) + 0.1 )
				
				--	End this function
				return false
				
			elseif self.Owner:KeyDown( IN_USE ) and self:Get_IsHolstered( ) then
			
				--	Run the throw function
				self:Throw( )

				--	End our function
				return false
				
			elseif	--	And Here... We... Go...
			
				( self:Get_IsReloading() or self:Get_IsShotgunReloading( ) ) or
				( ( self.ActionDelay > CurTime( ) ) or ( self.Owner:KeyDown( IN_SPEED ) ) ) or
				( ( self:Clip1() ) >= ( self.Primary.ClipSize + self.Primary.ClipSizePlus ) ) or
				( ( self:Ammo1() <= 0 ) ) or
				not ( ( self.CanReloadWhenNotEmpty and self:Clip1() > 0 ) or ( self.CanReloadWhenUnDeployed and self:Get_IsGenericDeployed() == false ) ) then
	
				--	End our function
				return false

			end
	
			if ( self:Get_IsInScope( ) ) and not ( self.ScopeType == 2 ) then
				
				self:ToggleViewModelDraw( "DrawItForMe" )
				
			end

			--	This is shit we only need for akimbo weapons
			if self.Akimbo then

				--	If we can't reload when not empty and 
				if self.CanReloadWhenNotEmpty == false and self:Clip2() != 0 then 
					--self.Owner:ChatPrint( "Can't reload until empty == true" )
					return false 
				end
				
				--	If the mag already loaded then
				if ( self:Clip2() ) >= ( self.Secondary.ClipSize + self.Secondary.ClipSizePlus ) then
					--self.Owner:ChatPrint( "Clip1 >= Clipsize + PlusSize" )
					return false
				end
				
				if ( self:Ammo2() <= 0 ) and self.Secondary.ClipSize > 0 then
					--self.Owner:ChatPrint( "Ammo2 <= 0" )
					return false
				end

			end

			--	If we're in iron sights, toggle out of them and continue
			if self:Get_IsInIronSights( ) or self:Get_IsInScope( ) then self:ToggleIronsights( ) end

			if ( self:Clip1() < self.Primary.ClipSize ) and self:Ammo1() > 0 then

				self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
				self:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
				
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

			--	Scope think functions
			if self.ScopeType != 0 then
			
				self:ScopeThink()
				
			end

			if self.UseWorldAnimations then
			
				self:HoldTypeAnimations( )

			end

			if self.AltFireMelee == false and self.HasMeleeAttack and ( self.Owner:KeyDown( IN_WALK ) and self.Owner:KeyDown( IN_ATTACK2 ) ) and self.ActionDelay <= CurTime( ) then
			
				self:MeleeBashThink( )
			
			end

			if GetConVarNumber( "VNT_Base_SWep_SpeedToggle" ) != 0 then
				
				self:SpeedModThink( )
				
			end
			
			if self.CurrentMode == 2 then
			
				self:BurstFireThink( )
			
			end

			--	If mag isn't empty
			if self:Clip1( ) > 0 then
			
				--	Prevents the bolt from clicking more than once when the mag is empty
				self.FiringPinForward = false
				
			end

			--	Near wall pull back code
			--	If we have burst shots left in out counter, or we're in a vehicle...
			if ( self.BurstCounter > 0 or self.BurstCounter > 0 ) or ( self.Owner:InVehicle() ) or GetConVarNumber( "VNT_Base_SWep_Doom_Toggle" ) != 0 then		
			
				return	--	... return so we don't end up finishing the burst after we pull back
				
			else	--	Else we continue
			
				self:ToggleDepthMod( )
				
			end

			--	If we're iron sighted, and we sprint, toggle out of them
			if self:Get_IsInIronSights( ) and ( GetConVarNumber( "VNT_Base_SWep_SprintNShoot" ) != 0 and self.Owner:KeyDown( IN_SPEED ) ) then
			
				self:ToggleIronsights( )
				
			end

			--	This tells the reload function if we have a round in the chamber, so that we can use self.CanChamber
			if self:Clip1() <= 0 then
			
				self:Set_HasRoundInChamber( false )
				
			end

			--	If we press use, and we're not moving then
			if self.HasHelpingHanims then 
			
				self:HelpingHandThink( )
			
			end

			self:NextThink( CurTime( ) + 0.5 )
			
		end
		
	end
	
end --	Called every frame

function SWEP:ToggleBipodCustom( )
	
	--	If we're owner, a player, valid, and alive, and our gun has fire modes, and the toggle timer is expired then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			if self:Get_IsBipodDeployed( ) then
			
				self:Set_IsBipodDeployed( false )

				self:MessagePrint( "BipodUp" )

				if self:Clip1() > 8 and self.SeqUnDeploy != nil then

					self:SpecialAnimation( table.Random( self.SeqUnDeploy ) )

				else

					if self:Clip1() == 8 and self.SeqUnDeploy8 != nil then

						self:SpecialAnimation( table.Random( self.SeqUnDeploy8 ) )

					elseif self:Clip1() == 7 and self.SeqUnDeploy7 != nil then

						self:SpecialAnimation( table.Random( self.SeqUnDeploy7 ) )

					elseif self:Clip1() == 6 and self.SeqUnDeploy6 != nil then

						self:SpecialAnimation( table.Random( self.SeqUnDeploy6 ) )

					elseif self:Clip1() == 5 and self.SeqUnDeploy5 != nil then

						self:SpecialAnimation( table.Random( self.SeqUnDeploy5 ) )

					elseif self:Clip1() == 4 and self.SeqUnDeploy4 != nil then

						self:SpecialAnimation( table.Random( self.SeqUnDeploy4 ) )

					elseif self:Clip1() == 3 and self.SeqUnDeploy3 != nil then

						self:SpecialAnimation( table.Random( self.SeqUnDeploy3 ) )

					elseif self:Clip1() == 2 and self.SeqUnDeploy2 != nil then

						self:SpecialAnimation( table.Random( self.SeqUnDeploy2 ) )

					elseif self:Clip1() == 1 and self.SeqUnDeploy1 != nil then

						self:SpecialAnimation( table.Random( self.SeqUnDeploy1 ) )

					elseif self:Clip1() <= 0 and self.SeqUnDeploy0 != nil then

						self:SpecialAnimation( table.Random( self.SeqUnDeployEmpty ) )

					end

				end

			elseif self:Get_IsBipodDeployed( ) == false then
			
				self:Set_IsBipodDeployed( true )

				self:MessagePrint( "BipodDown" )
				
				if self:Clip1() > 8 and self.SeqDeloy != nil then

					self:SpecialAnimation( table.Random( self.SeqDeloy ) )

				else

					if self:Clip1() == 8 and self.SeqDeloy8 != nil then

						self:SpecialAnimation( table.Random( self.SeqDeloy8 ) )

					elseif self:Clip1() == 7 and self.SeqDeloy7 != nil then

						self:SpecialAnimation( table.Random( self.SeqDeloy7 ) )

					elseif self:Clip1() == 6 and self.SeqDeloy6 != nil then

						self:SpecialAnimation( table.Random( self.SeqDeloy6 ) )

					elseif self:Clip1() == 5 and self.SeqDeloy5 != nil then

						self:SpecialAnimation( table.Random( self.SeqDeloy5 ) )

					elseif self:Clip1() == 4 and self.SeqDeloy4 != nil then

						self:SpecialAnimation( table.Random( self.SeqDeloy4 ) )

					elseif self:Clip1() == 3 and self.SeqDeloy3 != nil then

						self:SpecialAnimation( table.Random( self.SeqDeloy3 ) )

					elseif self:Clip1() == 2 and self.SeqDeloy2 != nil then

						self:SpecialAnimation( table.Random( self.SeqDeloy2 ) )

					elseif self:Clip1() == 1 and self.SeqDeloy1 != nil then

						self:SpecialAnimation( table.Random( self.SeqDeloy1 ) )

					elseif self:Clip1() <= 0 and self.SeqDeloy0 != nil then

						self:SpecialAnimation( table.Random( self.SeqDeloyEmpty ) )

					end

				end

			end

			self:ChangeModel( ReDeploy )

			--	Add a delay before we can swap
			self.ActionDelay = self.ActionDelay + 1
			
		end
	end
end --	Toggle our bipod
