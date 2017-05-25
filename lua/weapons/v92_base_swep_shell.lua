
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

SWEP.PrintName = "V92 Shell Loader Base" -- (String) Printed name on menu
SWEP.Category = VNTCB.Category.VNT -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Shotgun Settings								--	Settings for shotguns
------------------------------------------------------

SWEP.PumpAction = false -- (Boolean) Is the shotgun pump action?
SWEP.StartInsertsARound = false -- (Boolean) Does the start reloading anim insert a round in the sequence?
SWEP.ShellReload = true -- (Boolean) Does this weapon use individual shells?
SWEP.ShellReloadInsertStyle = false -- (Boolean) Does this weapon use ACT_VM_RELOAD_INSERT_PULL and ACT_VM_RELOAD_INSERT and ACT_VM_RELOAD_END ?
SWEP.ShellReloadCustom = false -- (Boolean) Does this weapon use custom shell reload animation names? Exists because the ENUMS for the DoD:S shell insert animations aren't in GMod
SWEP.ShellReloadCustomSequences = { "reload_start" , "reload_loop" , "reload_end" } -- ( Table: String , String , String ) Start reload sequence name , single insert sequence name , end reload sequence name

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

			if self:Get_IsShotgunReloading() then
			
				self:SetNextPrimaryFire( CurTime( ) + VModel:SequenceDuration( ) + 0.1 )
				self:SetNextSecondaryFire( CurTime( ) + VModel:SequenceDuration( ) + 0.1 )
				return false

			else

				--	Check for various things that say, "hey fucktard, you can't shoot now"
				-- if not self:CanPrimaryAttack( ) then 

					-- print( "not can primary fire" )

					-- return false

				-- end

				--	we can't fire underwater & we're underwater
				if ( self.CanFireUnderwater == false and self.Owner:WaterLevel( ) > 2 ) then

					--print( "cant fire underwater" )
				
					return false
					
				else

					if ( self.Owner:KeyDown( IN_USE ) and self:Get_IsInIronSights( ) == false ) and self.ActionDelay < CurTime() then
					
						self:DeployFunctionCallBack( )

						--print( "deployfunction callback" )

						return false

					end

					--	If our mag isn't empty
					if self:Clip1( ) > 0  then
						
						self:PrimaryAttackFireCallBack()

						--print( "attack1 callback" )
					
						if self:Get_IsInScope( ) then

							self:BoltActionCallBack( )

							--print( "bolt callback" )
							
						end
						
					end

				end
				
			end					

		end
		
	end
	
end --	+attack1 has been pressed.

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

				if self.IsAkimbo then
				
					--	Check for various things that say, "hey fucktard, you can't shoot now"
					if not self:CanSecondaryAttack( ) then return end

					--	If our mag isn't empty
					if self:Clip2( ) > -1 then
		
						self:SecondaryAttackFireCallBack( )

					end

					-- print( "is akimbo" )

				else
				
					if not self:Get_IsShotgunReloading() then
					
					
						self:ToggleIronsights()

						-- print( "Toggle Irons - not reloading shell" )

					end

				end
				
				return false

			end					

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

				-- print( "Clip1 < ClipSize1 AND Has Ammo1")

				--	Play our anim
				if self.SeqReloadStart != nil then

					self:SpecialAnimation( table.Random( self.SeqReloadStart ) )
				
				elseif self.SeqReload != nil then

				self:SpecialAnimation( table.Random( self.SeqReload ) )

				end

				if self.StartInsertsARound and self:Ammo1() > 0 then
				
					self:SetClip1(self:Clip1() + 1)
				
				end
			
				self:Set_IsShotgunReloading( true )

				self.ActionDelay = ( CurTime( ) + self.Owner:GetViewModel( ):SequenceDuration( ) )
				
				if self.ActionDelay <= CurTime() then
				
					self:ShellThink( "Insert" )
					
				end

				print( "Set_IsShotgunReloading = true" )
				
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

			if self:Get_IsShotgunReloading() then
			
				if
					(
						self:Ammo1() < 0 or 
						self:Clip1() >= self.Primary.ClipSize
					)
					or
					(
						self.Owner:KeyPressed( IN_ATTACK ) or
						self.Owner:KeyPressed( IN_ATTACK2 ) or
						self.Owner:KeyPressed( IN_SPEED )
					)					
				then

					print( "think to shellthink finished")
				
					self:ShellThink( "Finished" )

					return false
					
				end

			end					

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

function SWEP:ShellReloadCallback( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then
		
			local VModel = self.Owner:GetViewModel( )

			print( "Callback" )
	
			if ( 
					(
						(
							self.CanChamber and
							self:Get_HasRoundInChamber( ) and
							self:Clip1() <
							( 
								self.Primary.ClipSize + self.Primary.ClipSizePlus 
							)
						)
						or
						( 
							self:Clip1() < self.Primary.ClipSize 	
						)
					)
					and 
					( 
						self:Ammo1() > 0 
					) 
				)
			then
			
				self:ShellThink( "Insert" )

				--return false
	
			else--[[if ( 
					(
						(
							self.CanChamber and
							self:Clip1() >=
							( 
									self.Primary.ClipSize + self.Primary.ClipSizePlus 
							)
						)
						or
						( 
							self:Clip1() >= self.Primary.ClipSize 	
						)
					)
					or
					( 
						self:Ammo1() < 0 
					) 
				)
			then
			--]]				
			
				self:ShellThink( "Finished" )

				self:SetNextPrimaryFire(CurTime() + VModel:SequenceDuration() + 0.1 )
				self:SetNextSecondaryFire(CurTime() + VModel:SequenceDuration() + 0.1 )

				return false
			
			end
			
		end
	
	end
	
end

function SWEP:ShellThink( Action )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			local VModel = self.Owner:GetViewModel( )

			-- print( "ShellReload AND Get_IsShotgunReloading" )
		
			if self.ActionDelay and CurTime() >= self.ActionDelay then

				-- print( "ActionDelay AND ActionDelay <= CurTime()")
			
				if Action == "Insert" then

					if self.SeqReloadLoop != nil then

						self:SpecialAnimation( table.Random( self.SeqReloadLoop ) )

					elseif self.SeqReload != nil then

						self:SpecialAnimation( table.Random( self.SeqReload ) )

					end

					self:SetClip1( self:Clip1() + 1 )
					self.Owner:RemoveAmmo( 1, self.Primary.Ammo )
					
					-- print( self.ActionDelay )
					
					self.ActionDelay = CurTime() + VModel:SequenceDuration()
					
					-- print( self.ActionDelay )

					self:SetNextPrimaryFire(CurTime() + VModel:SequenceDuration() + 0.1 )
					self:SetNextSecondaryFire(CurTime() + VModel:SequenceDuration() + 0.1 )

					self:ShellReloadCallback()

				else--if Action == "Finished" then

					if self.SeqReloadEnd != nil then

						self:SpecialAnimation( table.Random( self.SeqReloadEnd ) )

					elseif self.SeqReload != nil then

						self:SpecialAnimation( table.Random( self.SeqReload ) )

					end

					self.ActionDelay = CurTime()
					self:Set_IsShotgunReloading( false )
					self:Set_IsReloading( false )
					self:Set_HasRoundInChamber( true )
					self:SetNextPrimaryFire(CurTime() + VModel:SequenceDuration() + 0.1 )
					self:SetNextSecondaryFire(CurTime() + VModel:SequenceDuration() + 0.1 )
					
					if GetConVarNumber( "VNT_Base_SWep_ShellToggle" ) ~= 0 and ( self.WeaponType != 1 or self.WeaponType != 9 ) then

						if self.ShellType != nil and self.RevolverShells != nil then

							local RevolverFX = EffectData( )    --  Create our shell data
							RevolverFX:SetEntity( self )    --  Set the parent
							RevolverFX:SetNormal( self.Owner:GetAimVector( ) )  --  Get our aim vector
							RevolverFX:SetAttachment( self.ShellAttach )    --  Get our attachment point
							RevolverFX:SetScale( self.ShellType )   --  Get our shell type

							--  Run a loop, from self.RevolverShells which ejects the number of shells in the revolver
							for ShellLoopCount =  1 , self.RevolverShells do

								timer.Simple( self.ShellDelay , function( )

									--	If we've already run this exit out
									if not IsFirstTimePredicted() then return end

									if IsValid( self ) and IsValid( self.Owner ) then

										util.Effect( self.ShellEffect , RevolverFX , true , false )

									end

								end )

								if ShellLoopCount > self.RevolverShells then

									break

								end

							end

							if self.Akimbo then

								local RevolverLeftFX = EffectData( )    --  Create our shell data
								RevolverLeftFX:SetEntity( self )    --  Set the parent
								RevolverLeftFX:SetNormal( self.Owner:GetAimVector( ) )  --  Get our aim vector
								RevolverLeftFX:SetAttachment( self.MuzzleAttachLeft )   --  Get our attachment point
								RevolverLeftFX:SetScale( self.ShellType )   --  Get our shell type

								--  Run a loop, from self.RevolverShells which ejects the number of shells in the revolver
								for ShellLoopCount =  1 , self.RevolverShells do

									timer.Simple( self.ShellDelay , function( )

										if IsValid( self ) and IsValid( self.Owner ) then

											util.Effect( self.ShellEffect , RevolverFX , true , false )

										end

									end )

									if ShellLoopCount > self.RevolverShells then

										break

									end

								end

							end
							
						end
						
					end

					return false

				end

			end
			
		end
		
	end

end
