
AddCSLuaFile( )

------------------------------------------------------
if not VNTCB then return false end					--	Prevent this file from loading if for some odd reason the base Lua isn't loaded
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
--	Spawn settings									--
--	Can we spawn this?								--
------------------------------------------------------

SWEP.Spawnable = false -- (Boolean) Can be spawned via the menu
SWEP.AdminOnly = false -- (Boolean) Admin only spawnable
SWEP.Base = VNTCB.Bases.Wep -- (Weapon) Base to derive from

------------------------------------------------------
--	Client Information								--
--	Info used in the client block of the weapon		--
------------------------------------------------------

--SWEP.WeaponName = VNTCB.Bases.WepParachute -- (String) Name of the weapon script
SWEP.WeaponName = "v92_base_swep_parachute" -- (String) Name of the weapon script
--SWEP.WeaponEntityName = VNTCB.Bases.WepParachute -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.WeaponEntityName = "v92_base_parachute_ent" -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.PrintName = "V92 Parachute Base" -- (String) Printed name on menu
SWEP.Category = VNTCB.Category.VNT -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Model Information								--	
--	Model settings and infomation					--
------------------------------------------------------

SWEP.UseHands = true -- (Boolean) Leave at false unless the model uses C_Arms
SWEP.ViewModelFlip = false -- (Boolean) Only used for vanilla CS:S models
SWEP.ViewModel = Model( "models/jessev92/weapons/sprinting_c.mdl" ) -- (String) View model - v_*
SWEP.WorldModel = Model( "models/jessev92/rnl/weapons/parachute_closed_2017_w.mdl" ) -- (String) World model - w_*

------------------------------------------------------
--	Primary Fire Settings							--
--	Settings for the primary fire of the weapon		--
------------------------------------------------------

SWEP.Primary.ClipSize = -1 -- (Integer) Size of a magazine
SWEP.Primary.DefaultClip = 1 -- (Integer) Default number of ammo you spawn with
SWEP.Primary.Ammo = "parachute" -- (String) Primary ammo used by the weapon, bullets probably
SWEP.Secondary.Ammo = "none" -- (String) Primary ammo used by the weapon, bullets probably

------------------------------------------------------
--	Parachute										--
--	HQ, Send in the Fly-Boys!						--
------------------------------------------------------

SWEP.ViewModelPacked = Model( "models/jessev92/weapons/sprinting_c.mdl" ) -- (String) View model before deployment - v_*
SWEP.ViewModelOpen = Model( "models/jessev92/ffow/weapons/parachute_c.mdl" ) -- (String) View model after deployment - v_*
SWEP.WorldModelPacked = Model( "models/jessev92/rnl/weapons/parachute_closed_2017_w.mdl" ) -- (String) World model before deployment - w_*
SWEP.WorldModelOpen = Model( "models/jessev92/rnl/weapons/parachute_open_2017_w.mdl" ) -- (String) World model after deployment - w_*
SWEP.ParachuteModel = Model( "models/jessev92/rnl/items/parachute.mdl" ) -- (String) Name of the parachute model while active
SWEP.GroundModel = Model( "models/jessev92/rnl/weapons/parachute_open_2017_w.mdl" ) -- (String) Name of the parachute model when you land
SWEP.FireDelay = 1.5 -- (Float) Delay between pulls

SWEP.ParachuteModelOffset = Vector( 0 , 0 , 0 ) -- Used to fix the position of models

SWEP.SeqDraw = nil -- { "draw" }
SWEP.SeqHolster = nil -- { "holster" }
SWEP.SeqIdle = nil -- { "idle" }
SWEP.SeqParachuteForward = nil -- { "forward" }
SWEP.SeqParachuteLeft = nil -- { "left" }
SWEP.SeqParachuteRight = nil -- { "right" }
SWEP.SeqParachuteBack = nil -- { "back" }

SWEP.Sounds = {

	["Freefall"] = Sound( "RNL.Parachute.Wind.NoFlap" ) ,
	["Deploy"] = Sound( "RNL.Parachute.Deploy" ) ,
	["Ride"] = Sound( "RNL.Parachute.Wind" ) ,
	["Land"] = Sound( "BF3.Equipment.Parachute.Land" ) ,
	["Unclip"] = Sound( "Combine_Soldier.ZipLine.Clip" ) ,

}

if CLIENT then

	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName , SWEP.PrintName )
	killicon.Add( SWEP.WeaponName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )

elseif SERVER then

	resource.AddWorkshop( SWEP.WorkshopID )

end --	Setup Clientside Info - This block must be in every weapon!

SWEP.ParaEntFlight = "v92_parachute_flight" -- Don't Touch
SWEP.ParaEntGround = "v92_parachute_ground" -- Don't Touch

function SWEP:Initialize( )

	self:SendWeaponAnim( ACT_VM_IDLE_1 )

	self.FreefallSound = CreateSound( self , self.Sounds.Freefall )
	self.DeploySound = CreateSound( self , self.Sounds.Deploy )
	self.RideSound = CreateSound( self , self.Sounds.Ride )
	self.LandSound = CreateSound( self , self.Sounds.Land )
	self.UnclipSound = CreateSound( self , self.Sounds.Unclip )
	
end

function SWEP:HoldTypeParachuteAnims( )

	--	If we're owner, a player, valid, and alive then
	if IsValid( self.Owner ) then
	
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			if self.HoldMeRight == VNTCB.HoldType.Parachute then

				if self.Owner:GetNWInt("V92ParachutingPhase") == 0 then
					
					self:SetHoldType( "normal" )

				else
				
					self:SetHoldType( "duel" )
					
				end

			end		
			
		end
		
	end
	
end

function SWEP:CanPrimaryAttack()
	
	if ( 
			self.Owner:GetNWInt("V92ParachutingPhase") > 0
		)
	then
	
		--print( "can't shoot" )
		return false

	else

		--print( "can shoot" )
		return true
		
	end

end

function SWEP:PrimaryAttack()

	--print( "Primary Attack Run" )

	if ( 
			self.Owner:InVehicle() or 
			self.Owner:OnGround() or 
			self:Ammo1() <= 0 or 
			self.Owner:GetNWInt("V92ParachutingPhase") > 0 or
			not (
				self.Owner:GetVelocity().z < 250
			)
		)
	then
	
		--print( "Primary - Conditions Not Met 1" )
		return 

	end

	--print( "Firing delays..." )

	self.ActionDelay = (CurTime() + self.FireDelay + 0.05)
	self:SetNextPrimaryFire(CurTime() + self.FireDelay)
	self:SetNextSecondaryFire(CurTime() + self.FireDelay)

	--print( "Changing models..." )

	self.ViewModel = self.ViewModelOpen
	self.WorldModel = self.WorldModelOpen
	
	if SERVER then

		local ParaEnt = ents.Create( self.ParaEntFlight )
		ParaEnt:SetModel( self.ParachuteModel )
		ParaEnt:SetPos( self.Owner:GetPos( ) )
		ParaEnt:SetAngles( self.Owner:GetAngles() )
		ParaEnt:Spawn( )
		ParaEnt:Activate( )
		ParaEnt:SetOwner( self.Owner )

	end

	--[[if self.FreefallSound:IsPlaying() then

		--print( "Stopping freefall sound..." )
		self.FreefallSound:FadeOut( 1 )

	end--]]

	if not self.DeploySound:IsPlaying() then

		--print( "Playing deploy sound..." )
		self.DeploySound:Play()

	end

	if not self.RideSound:IsPlaying() then
	
		--print( "Playing Ride sound..." )
		self.RideSound:Play()

	end

	--print( "Playing anims..." )

	if self.SeqDraw != nil then

		self:SpecialAnimation( self.SeqDraw )

	elseif self.SeqIdle != nil then

		self:SpecialAnimation( self.SeqIdle )

	end

	--print( "Setting owner variable parachuting phase 1..." )

	self.Owner:SetNWInt("V92ParachutingPhase", 1 )

	self:TakePrimaryAmmo( 1 )

end

function SWEP:Think()

	if not self.Owner:Alive() then

		self.FreefallSound:Stop()
		self.DeploySound:Stop()
		self.RideSound:Stop()
		self.LandSound:Stop()
		self.UnclipSound:Stop()

		return false

	end

	if IsValid( self ) then

		if self.Owner:IsPlayer() then

			self:HoldTypeParachuteAnims( )

			if self.Owner:GetNWInt("V92ParachutingPhase") == 1 then

				self.Owner:SetMoveType( MOVETYPE_FLYGRAVITY )

				self.Owner:SetGravity( 0.5 )

				--print( "player move type is now " .. self.Owner:GetMoveType() )

				if 
					--self.Owner:GetMoveType() == MOVETYPE_NOCLIP or 
					self.Owner:InVehicle() or 
					self.Owner:OnGround() or
					self.Owner:WaterLevel() > 0 or
					not self.Owner:Alive()
				then 

					self.Owner:SetNWInt("V92ParachutingPhase", 0 )
				
					--print( "Landed or something - cutting the line" )

					if not self.LandSound:IsPlaying() then

						--print( "Playing Land sound..." )
						self.LandSound:Play()

					end

					if not self.UnclipSound:IsPlaying() then

						--print( "Playing Unclip sound..." )
						self.UnclipSound:Play()

					end

					if self.RideSound:IsPlaying() then

						--print( "Stopping Ride sound..." )
						self.RideSound:FadeOut( 1 )

					end

					if SERVER then
					
						local Landed = ents.Create( self.ParaEntGround )
						Landed:SetModel( self.GroundModel )
						Landed:SetPos( self.Owner:GetPos( ) + self.Owner:GetUp( ) * 15 + self.Owner:GetForward( ) * 0 )
						Landed:SetAngles( self.Owner:GetAngles() )
						Landed:Spawn( )
						Landed:Activate( )
						Landed:SetOwner( self.Owner )

					end
					
					self.Owner:SetMoveType( MOVETYPE_WALK )

					self.Owner:SetGravity( 1 )

					--print( "player move type is now " .. self.Owner:GetMoveType() )

					self.ViewModel = self.ViewModelPacked
					self.WorldModel = self.WorldModelPacked
					
					self.Owner:RemoveAmmo( self:Ammo1() , "parachute" )
					
					timer.Simple( 2 , function( )
					
						if IsValid( self ) and IsValid( self.Owner ) then
							
							if CLIENT then
								
								self.Owner:ConCommand( "lastinv" )
								
							end
							
							if SERVER then

								self.Owner:StripWeapon( self.WeaponName )
							
							end
							
						end
							
					end )
					
				end

			end

		end
	
	end
	
end

function SWEP:Deploy()

	-- Send the animation

	if self.SeqDraw != nil then

		self:SpecialAnimation( self.SeqDraw )

	elseif self.SeqIdle != nil then

		self:SpecialAnimation( self.SeqIdle )

	end

	self.Owner:SetNWInt("V92ParachutingPhase", 0 )

	-- Set our delays
	self.ActionDelay = (CurTime() + self.FireDelay + 0.05)
	self:SetNextPrimaryFire(CurTime() + self.FireDelay)
	self:SetNextSecondaryFire(CurTime() + self.FireDelay)

end

function SWEP:Holster()

	if self.Owner:GetNWInt("V92ParachutingPhase") == 1 then
	
		--print( "Holster - Parachute phase 1, false holster" )
		
		return false
		
	else

		return true

	end

end

function SWEP:CanSecondaryAttack()

	if not self.Owner:KeyDown( IN_USE ) then
	
		return false
		
	end

end

function SWEP:SecondaryAttack( )
	
	--	We valid?
	if IsValid( self.Owner ) then
	
		--	Are we player, alive?
		if self.Owner:IsPlayer() and self.Owner:Alive() then

			--	Not the first time we predicted this? Owner isn't alive? Fuck'em right in the arse!
			if not IsFirstTimePredicted() then return end

			if ( self.Owner:KeyDown( IN_USE ) ) then

				--	cycle the fire mode
				self:ToggleFireMode( )
				
			end
			
		end
		
	end

	return false

end

function SWEP:OnRemove()

	self.FreefallSound:Stop()
	self.DeploySound:Stop()
	self.RideSound:Stop()
	self.LandSound:Stop()
	self.UnclipSound:Stop()

end