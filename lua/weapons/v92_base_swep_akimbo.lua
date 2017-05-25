
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

SWEP.PrintName = "V92 Akimbo Base" -- (String) Printed name on menu
SWEP.Category = VNTCB.Category.VNT -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Akimbo Settings									--	Settings for akimbo weapons; I.E. CSS Dualies
------------------------------------------------------

SWEP.IsAkimbo = true -- (Boolean) Is this an akimbo weapon?
SWEP.MuzzleAttachLeft = 3 -- (Integer) The number of the attachment point for left muzzle flashes, typically "3"
SWEP.ShellAttachLeft = 4 -- (Integer) The number of the attachment point for left shell ejections, typically "4"
SWEP.BurstCountLeft = 3 -- (Integer) Amounts of shots to be fired by burst, left hand weapon; used in akimbo
SWEP.BurstShotsL = ( SWEP.BurstCountLeft + 1 ) -- (Integer) Don't touch
SWEP.BurstCounterL = 0 -- (Integer) Don't touch
SWEP.BurstTimerL = 0 -- (Integer) Don't touch

if SERVER then

	resource.AddWorkshop( SWEP.WorkshopID )
	
end --	Setup Clientside Info - This block must be in every weapon!

function SWEP:Initialize( )

	self:CustomInitialize( )

	self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.25 )

end --	Called when the weapon is first loaded

------------------------------------------------------
--	Primary Fire Functions							--
------------------------------------------------------

function SWEP:CanPrimaryAttack( )

	if IsValid(self.Owner) then

		if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then

			--	If we're reloading return false
			if self:Get_IsReloading()  then

				return false

			end

			if not self.CanShootWhenUnDeployed and self:Get_IsGenericDeployed() == false then
			
				return false
			
			end
		
			if self:Get_HasSmallJam( ) then
			
				self:MessagePrint( "RightSmall" )

				return false
				
			end
			
			if self:Get_HasLargeJam( ) then
			
				self:MessagePrint( "RightLarge" )

				return false

			end
			
			if self:Get_IsHolstered( ) or self:Clip1( ) <= 0 or self.IsCloseToWall or ( GetConVarNumber( "VNT_Base_SWep_SprintNShoot" ) == 0 and self.Owner:KeyDown( IN_SPEED ) ) then
				--	mag's empty
				--(self.Primary.ClipSize <= 0 and self.Melee == false) or				--	or we don't use ammo/we're not melee
				--not self.Owner:IsNPC() or											--	or we're not an NPC
				--	or we have a big jam
				--	or we have a small jam
				--	or we're sprinting
				--	or we're near a wall
				--	If the mag is empty, the bolt is back, and we're not a melee then
				if ( self:Clip1( ) <= 1 ) and self.FiringPinForward == false and self.WeaponType ~= 1 then

					--	play our suppressed dry fire
					if ( self.WeaponType == 2 ) then

						self:EmitSound( self.Sounds.FiringPinPistol )

						if SERVER then

							--self:PlaySounds( "FiringPinPistol" )

						end
						
					else

						self:EmitSound( self.Sounds.FiringPin )

						if SERVER then

							--self:PlaySounds( "FiringPin" )

						end

					end

					self.FiringPinForward = true
					
				end

				return false --	we can't shoot
	
			end
			
			return true --	we can shoot

		end
		
	end

end --	Check if we can run +attack

function SWEP:PrimaryAttack( )

	if IsValid(self.Owner) then

		if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then

			--	Not the first time we predicted this? Owner isn't alive? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then

				return false

			end

			if self:Get_IsGrenadeLauncherDeployed( ) or self.WeaponType == VNTCB.WeaponType.GLauncher then
			
				self:EntityShooter( )

				return false
				
			end

			--	we can't fire underwater & we're underwater
			if ( self.CanFireUnderwater == false and self.Owner:WaterLevel( ) > 2 ) then
			
				return false
				
			else

				if ( self.Owner:KeyDown( IN_USE ) and self:Get_IsInIronSights( ) == false ) and self.ActionDelay < CurTime() then
				
					self:DeployFunctionCallBack( )

					return false

				end

				--	Check for various things that say, "hey fucktard, you can't shoot now"
				if not self:CanPrimaryAttack( ) then return end

				--	If our mag isn't empty
				if self:Clip1( ) > 0  then
					
					self:PrimaryAttackFireCallBack()

					if self:Get_IsInScope( ) then

						self:BoltActionCallBack( )
						
					end
			
				end
				
			end
			
		end
		
	end
	
end --	+attack1 has been pressed.

function SWEP:PrimaryAttackFireCallBack( )

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
			if self.SeqPrimary != nil then

				self:SpecialAnimation( table.Random( self.SeqPrimary ) )

			end

			--	Add a delay before we fire our next bullet based on RPM
			self.ActionDelay = ( CurTime( ) + PrimaryDelay )

			if self.SeqShotgunPump != nil and self.PumpAction then

				self:SGPump( )

			end

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

function SWEP:CanSecondaryAttack( )

	if IsValid(self.Owner) then

		if self.Owner:IsPlayer( ) and self.Owner:IsValid( ) then

			--	If we're reloading return false
			--if self:Get_IsReloading() or self:Get_IsShotgunReloading( )  then
			if self:Get_IsReloading()  then
				
				--print( "can't sec fire reloading" )
				return false

			end

			if not self.CanIronWhenUnDeployed and self:Get_IsGenericDeployed() == false then
			
				--print( "can't sec fire canironwhenundeployed" )
				return false
			
			end

			if self:Get_HasSmallJamLeft( ) then
			
				self:MessagePrint( "LeftSmall" )

				return false
				
			end
			
			if self:Get_HasLargeJamLeft( ) then
			
				self:MessagePrint( "LeftLarge" )

				return false

			end
				
			--if ( self:Get_IsHolstered( ) ) or self:Clip2( ) <= 0 or self.Secondary.ClipSize <= 0 or self:Get_HasLargeJam( ) or self:Get_HasSmallJam( ) or self.Owner:KeyDown( IN_SPEED ) or self.WeaponType == 1 or self.IsCloseToWall then
			if ( self:Get_IsHolstered( ) ) or self:Clip2( ) <= 0 or self.Secondary.ClipSize <= 0 or self.IsCloseToWall or ( GetConVarNumber( "VNT_Base_SWep_SprintNShoot" ) != 0 and self.Owner:KeyDown( IN_SPEED ) )  then
				--	mag's empty
				--	or we don't use ammo
				--	or we have a big jam
				--	or we have a small jam
				--	or we're sprinting
				--	or we're a melee
				--	or we're near a wall
				--print( "can't sec fire look at long condition" )
				return false --	we can't shoot
			else
				return true --	we can shoot
			end --	If holstered,
		end
	end
end --	Check if we can run +attack2

function SWEP:SecondaryAttack( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	Not the first time we predicted this? Owner isn't alive? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then return end

			if ( self.Owner:KeyDown( IN_USE ) ) then
			
				if not ( self:Get_IsInScope( ) or self:Get_IsInIronSights( ) ) then

					--	cycle the fire mode
					self:ToggleFireMode( )
					return false
					
				else
				
					--	Cycle our sniper scope zoom factor
					self:ToggleZoom( )
					return false
					
				end
				
			end
			
			if not ( self.Owner:KeyDown( IN_USE ) ) and self.Owner:KeyDown( IN_WALK ) then
				
				--	Toggle the suppressor
				self:ToggleSuppressor( )
				
			end
		
			--	Check for various things that say, "hey fucktard, you can't shoot now"
			if not self:CanSecondaryAttack( ) then return end

			--	If our mag isn't empty
			if self:Clip2( ) > -1 then

				self:SecondaryAttackFireCallBack( )

			end

		end
		
	end
	
end --	+attack2 has been pressed.

function SWEP:SecondaryAttackFireCallBack( )

	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local SecondaryDelay = ( 60 / self.Secondary.RPM ) -- (Float) Don't touch
			local SecondaryDamage = ( ( math.random( self.Secondary.PureDmg - 3 , self.Secondary.PureDmg + 3 ) ) * GetConVarNumber( "VNT_Base_SWep_DamageMul" ) )

			--	If we're suppressed then
			if self:Get_IsSuppressorAttached( ) then

				--self:EmitSound( self.Sounds.PrimarySuppressed )
			
				--	Emit our suppressed sound
				if SERVER then

					self:PlaySounds( "PrimarySup" )
					
				end
				
			else

				--self:EmitSound( self.Sounds.Primary )
			
				--	Else emit the normal sound
				if SERVER then

					self:PlaySounds( "Primary" )
					
				end
				
			end

			if self.CurrentMode == 1 then
			
				self.Secondary.Automatic = false
				
				if self:CanSecondaryAttack( ) then
					
					if SERVER then
					
						self:FireBullet( SecondaryDamage , self.EffectiveRange , self.Secondary.NumShots , self.Secondary.Force , "Left" )
						
					end
					
					self:SetNextSecondaryFire( CurTime( ) + SecondaryDelay )
					self:TakeSecondaryAmmo( 1 )
					
				end
				
			elseif self.CurrentMode == 2 then
			
				self.Secondary.Automatic = false
				
				if self:CanSecondaryAttack( ) then
				
					self.BurstTimerL = CurTime( )
					self.BurstCounterL = self.BurstShotsL - 1
					self:SetNextSecondaryFire( CurTime( ) + SecondaryDelay )
					
				end
				
			elseif self.CurrentMode == 3 then
			
				self.Secondary.Automatic = true
				
				if self:CanSecondaryAttack( ) then
					
					if SERVER then
					
						self:FireBullet( SecondaryDamage , self.EffectiveRange , self.Secondary.NumShots , self.Secondary.Force , "Left" )
						
					end
					
					self:SetNextSecondaryFire( CurTime( ) + SecondaryDelay )
					self:TakeSecondaryAmmo( 1 )
					
				end
				
			end

			--	Play our firing animations
			if self.SeqSecondary != nil then

				self:SpecialAnimation( table.Random( self.SeqSecondary ) )

			end

			--	Add a delay before we fire our next bullet based on RPM
			self.ActionDelay = ( CurTime( ) + SecondaryDelay )

			--	If our Jam toggle is set to true then
			if not GetConVarNumber( "VNT_Base_SWep_JamToggle" ) == 0 and not self.StoppageRate == 0 then
				--	If we're holstered or mag is empty then qui	t
				if self:Get_IsHolstered( ) or self:Clip2( ) <= 1 then return end
				--	Set our Jam chance to be based on our CVa	r
				local JamDice = (math.random( 1 , self.StoppageRate ))

				--	If we hit our small jam chance
				if JamDice > ( JamDice - 5 ) then
				
					--	Set jammed little to true and run the function
					self:Set_HasSmallJamLeft( true )

					self:MessagePrint( "LeftSmall" )
				
				--	Else if we hit one
				elseif JamDice <= 1 then
				
					--	Set our big jam to true and run the function
					self:Set_HasLargeJamLeft( true )

					self:MessagePrint( "LeftLarge" )
					
				end

			end

			return false
			
		end
		
	end

end

function SWEP:Reload( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
			
			--	If we've already run this exit out
			if not IsFirstTimePredicted() then return end

			--	If jammed, we're not reloading, we're clearing a jam
			if ( self:Get_HasLargeJam( ) or self:Get_HasSmallJam( ) or self:Get_HasLargeJam(Left ) or self:Get_HasSmallJamLeft( ) )  then

				self:MessagePrint( "ClearingJam" )

				--	Run the shitty jammed functon
				self:WeaponJammed()

				self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.1 )
				
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
				not ( ( self.CanReloadWhenNotEmpty and self:Clip1() > 0 ) or ( self.CanReloadWhenUnDeployed and self:Get_IsGenericDeployed() == false ) ) 
			
			then
	
				--	End our function
				return false

			end
	
			if ( self:Get_IsInScope( ) ) and not ( self.ScopeType == 2 ) then
				
				self:ToggleViewModelDraw( "DrawItForMe" )
				
			end

			--	If we're in iron sights, toggle out of them and continue
			if self:Get_IsInIronSights( ) or self:Get_IsInScope( ) then self:ToggleIronsights( ) end

			--	If we have our GL deployed then
			if self:Get_IsGrenadeLauncherDeployed( ) or ( self.WeaponType == VNTCB.WeaponType.GLauncher ) then
			
				if not self.WeaponType == VNTCB.WeaponType.GLauncher then
					
					--	If we have ammo for it, and it's not loaded then
					if self.Owner:GetAmmoCount( self.Secondary.Ammo ) > 0 and self:Get_IsGrenadeLauncherLoaded( ) == false then
					
						--	Play the specified deploy reload
						if self.SeqReloadDeployed != nil then

							self:SpecialAnimation( table.Random( self.SeqReloadDeployed ) )
							--self:SelectAnimationToPlay( "ReloadDeployed" , self:Clip1() )
							
						end

					end

				else
					
					--	If we have ammo for it, and it's not loaded then
					if self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 and self:Get_IsGrenadeLauncherLoaded( ) == false then
						
						--	Play the specified deploy reload
						if self.SeqReload != nil then

							self:SpecialAnimation( table.Random( self.SeqReload ) )
							-- self:SelectAnimationToPlay( "Reload" , self:Clip1() )

						end

					end
				
				end

				if CLIENT then
				
					--	Set our time to fire until after the sequence has played
					self:SetNextPrimaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
					self:SetNextSecondaryFire( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
					
				elseif SERVER then

					--	Now we're loaded so signal we can fire
					self:Set_IsGrenadeLauncherLoaded( true )
					
					--	Our hammer is back
					self.LauncherPinForward = false
					
				end

				--	Return false and end the reload function
				return false
				
			end

			if GetConVarNumber( "VNT_Base_SWep_ShellToggle" ) ~= 0 and ( self.WeaponType != 1 or self.WeaponType != 9 ) then

				if self.ShellType != nil and self.RevolverShells != nil then
			   
					local RevolverFX = EffectData( )    --  Create our shell data
					RevolverFX:SetEntity( self )    --  Set the parent
					RevolverFX:SetNormal( self.Owner:GetAimVector( ) )  --  Get our aim vector
					RevolverFX:SetAttachment( self.ShellAttach )    --  Get our attachment point
					RevolverFX:SetScale( self.ShellType )   --  Get our shell type
				   
					--  Run a loop, from self.RevolverShells which ejects the number of shells in the revolver
					for _, ShellLoopCount in ipairs( self.RevolverShells ) do
				   
						util.Effect( self.ShellEffect , RevolverFX , true , false )
					   
					end

					local RevolverLeftFX = EffectData( )    --  Create our shell data
					RevolverLeftFX:SetEntity( self )    --  Set the parent
					RevolverLeftFX:SetNormal( self.Owner:GetAimVector( ) )  --  Get our aim vector
					RevolverLeftFX:SetAttachment( self.MuzzleAttachLeft )   --  Get our attachment point
					RevolverLeftFX:SetScale( self.ShellType )   --  Get our shell type
				   
					--  Run a loop, from self.RevolverShells which ejects the number of shells in the revolver
					for _, ShellLoopCount in ipairs( self.RevolverShells ) do
				   
						util.Effect( self.ShellEffect , RevolverLeftFX , true , false )
					   
					end

				end

			end

			--	Play the next function	
			self:Set_IsReloading( true )

			self:ReloadAnimation( )
			
			if self.CanChamber then
			
				self:ChamberRound( self:Clip1() , self:Clip2() )
				
			end

			self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) + 0.1 )

			-- Custom function for child SWeps
			self:CustomReload( )
	
		end
	
	end

end --	Reload is being pressed.
