
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
SWEP.AdminOnly = false -- (Boolean) Admin only spawnable
SWEP.Base = VNTCB.Bases.Wep -- (Weapon) Base to derive from

------------------------------------------------------
--	Client Information								--	Info used in the client block of the weapon
------------------------------------------------------

SWEP.WeaponName = VNTCB.Bases.Wep -- (String) Name of the weapon script
SWEP.WeaponEntityName = VNTCB.Bases.Wep -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.PrintName = "V92 Grenade Base" -- (String) Printed name on menu
SWEP.Category = VNTCB.Category.VNT -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Model Information								--	Model settings and infomation
------------------------------------------------------

SWEP.ViewModel = Model( "models/weapons/c_grenade.mdl" ) -- (String) View model - v_*
SWEP.WorldModel = Model( "models/weapons/w_grenade.mdl" ) -- (String) World model - w_*
SWEP.UseHands = true -- (Boolean) Leave at false unless the model uses C_Arms

------------------------------------------------------
--	Grenades										-- These'll come in handy
------------------------------------------------------

SWEP.FireDelay = 1.5 -- (Float) Delay between tosses
SWEP.FuseTime = 5 -- (Float) Timer on the fuse before detonation
SWEP.CanCookGrenade = true -- (Boolean) Can we cook it?
SWEP.GrenadeLauncherEntity = "v92_grenade_frag" -- (String) Name of the grenade launcher shell entity in Lua/Entities/Entityname.lua
SWEP.GrenadeLauncherForce = 3500 -- (Integer) Force of grenade launchers and shell throwers like that.

SWEP.Sounds = {
	["Throw"] = Sound( "WeaponFrag.Throw" ) ,
	["Primed"] = Sound( "Grenade.Blip" ) ,
	["CookTick"] = Sound( "Grenade.Blip" ) ,
}

if CLIENT then

	SWEP.WepSelectIcon = surface.GetTextureID( "vgui/hud/" .. SWEP.WeaponName )
	SWEP.RenderGroup = RENDERGROUP_BOTH
	language.Add( SWEP.WeaponName , SWEP.PrintName )
	killicon.Add( SWEP.WeaponName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )
	--killicon.Add( SWEP.WeaponEntityName , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )
	killicon.Add( SWEP.GrenadeLauncherEntity , "vgui/entities/" .. SWEP.WeaponName , Color( 255 , 255 , 255 ) )

elseif SERVER then

	resource.AddWorkshop( SWEP.WorkshopID )

end --	Setup Clientside Info - This block must be in every weapon!

function SWEP:CustomInitialize( )

	self.HoldMeRight = VNTCB.HoldType.Grenade -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua

end

function SWEP:PrimaryAttack()

	--print( "1" )

	if ( 
			self:Ammo1() <= 0 or 
			self.Owner:GetNWInt("Throw") > CurTime() or
			self.Owner:GetNWInt("Primed") != 0
		)
	then
	
		--print( "1b" )
		return 

	end

	--print( "2" )

	self.ActionDelay = (CurTime() + self.FireDelay + 0.05)
	self:SetNextPrimaryFire(CurTime() + self.FireDelay)
	self:SetNextSecondaryFire(CurTime() + self.FireDelay)

	-- Send the animation

	if self.SeqPullPin != nil then

		self:SpecialAnimation( table.Random( self.SeqPullPin ) )

	end

	self.Owner:SetNWInt("Primed", 1)
	self.Owner:SetNWInt("Throw", CurTime() + 1)
	self.Owner:SetNWBool("Cooked", false)

	if not self.CanCookGrenade then return end

	--print( "1" )

	--if self.Owner:GetNWBool("Reloading") then return end

	--print( "2" )

	if self.Owner:GetNWInt("Primed") == 0 then return end

	--print( "3" )

	if self.Owner:GetNWInt("Primed") == 2 then return end

	--print( "4" )

	self.Owner:SetNWBool("Reloading", true)

	timer.Simple( self.FuseTime + 0.1 , function() 

		if not IsValid( self ) then 

			return

		end

		if not IsValid(self.Owner) then 

			return 

		end 

		self.Owner:SetNWBool( "Reloading" , false )

	end )

	--print( "5" )

	self:MessagePrint( "ModePrimed" )

	self:EmitSound( self.Sounds.Primed )

	--print( "6" )

	self.Owner:SetNWBool("Cooked", true)
	self.NextExplode = CurTime() + self.FuseTime

	--print( "7" )

	if not IsValid(self.Owner) then return end
	
	--print( "8" )

	timer.Simple(self.FuseTime, function()
	
	--print( "9" )
	
		if not IsFirstTimePredicted() then return end
		
	--print( "10" )

		if not IsValid( self ) then return end
		
	--print( "11" )

		if self.Owner:GetNWBool("Cooked") and self.Owner:GetActiveWeapon():GetClass() == self.WeaponName and self.Owner:Alive() then
		
	--print( "12" )

			if self.Owner:GetNWInt("Primed") == 1 then
			
	--print( "13" )

				local grenade = ents.Create(self.GrenadeLauncherEntity)

				local pos = self.Owner:GetShootPos()
					pos = pos + self.Owner:GetForward() * 1
					pos = pos + self.Owner:GetRight() * 7
	
					if self.Owner:KeyDown(IN_SPEED) then
					
	--print( "14" )

						pos = pos + self.Owner:GetUp() * -4
					else

	--print( "15" )

						pos = pos + self.Owner:GetUp() * 1
						
					end

				grenade:SetPos(pos)

				grenade:GetAngles(Vector(math.random(1, 100), math.random(1, 100), math.random(1, 100)))
				grenade:SetOwner(self.Owner)
				grenade:SetNWInt("Cook", 0)
				grenade:Spawn()

				self.Owner:SetNWInt("Primed", 0)
				self.Owner:SetNWBool("Cooked", false)

	--print( "16" )

				timer.Simple(0.6, function()
	--print( "17" )

					if not IsValid(self.Owner) then return end
	--print( "18" )


					if self:Ammo1() > 0 then
	--print( "19" )

						-- Send the animation

						if self.SeqDraw != nil then

							self:SpecialAnimation( table.Random( self.SeqDraw ) )

						end

						self.Owner:SetNWInt("Primed", 0)

					else
	--print( "20" )

						self.Owner:SetNWInt("Primed", 0)
						self.Owner:ConCommand("lastinv")
					end
	--print( "21" )

				end)

			end
			
		end 

	end)

end

function SWEP:SecondaryAttack()

	if self.Owner:KeyDown( IN_USE ) and self.ActionDelay < CurTime() then

		--	cycle the fire mode
		self:ToggleFireMode( )
		return false

	end

end

function SWEP:Think()

	self:CustomThink()

	if (self.Owner:GetNWInt("Primed") == 1 and not self.Owner:KeyDown(IN_ATTACK)) then

		if self.Owner:GetNWInt("Throw") < CurTime() then

			self.Owner:SetNWInt("Primed", 2)

			self.Owner:SetNWInt("Throw", CurTime() + 1.5)

			if self.SeqThrow != nil then

				self:SpecialAnimation( table.Random( self.SeqThrow ) )

			end

			self.Owner:SetAnimation(PLAYER_ATTACK1)

			timer.Simple(0.35, function()	
			
				if not IsValid(self.Owner) then 
				
					return 
					
				end 
				
				if SERVER then

					self:ThrowGrenade() 

				end
				
				self:FireViewPunches( )
				
			end )

		end

	end

	-- If we're cooked and last cook time is < CurTime()
	if self.Owner:GetNWBool("Cooked") and self.Owner:GetNWBool("LastShootCook") < CurTime() then

		--	If the game is a SP server or a client
		if ( ( game.SinglePlayer( ) and SERVER ) or CLIENT ) then

			-- Set our last shoot time
			self:SetNWFloat("LastShootTime", CurTime())
			
			-- Emit a sound
			self.Owner:EmitSound( self.Sounds.CookTick )

		end

		-- Set our next cook tick time
		self.Owner:SetNWBool( "LastShootCook" , CurTime() + 1 )

	end

end

function SWEP:Deploy()

	-- Send the animation
	local VModel = self.Owner:GetViewModel( )
	local DeployEnum = VModel:SelectWeightedSequence( ACT_VM_DRAW )
	VModel:SendViewModelMatchingSequence( DeployEnum )

	self.Owner:SetNWInt("Throw", CurTime() + self.FireDelay)
	self.Owner:SetNWInt("Primed", 0)
	self.Owner:SetNWBool("LastShootCook", CurTime())

	-- Set our delays
	self.ActionDelay = (CurTime() + self.FireDelay + 0.05)
	self:SetNextPrimaryFire(CurTime() + self.FireDelay)
	self:SetNextSecondaryFire(CurTime() + self.FireDelay)

end

function SWEP:ThrowGrenade()

	if (self.Owner:GetNWInt("Primed") != 2 or CLIENT) then return end

	if self.CanCookGrenade and not self.Owner:GetNWBool("Cooked") then
		self.NextExplode = CurTime() + self.FuseTime
		self:EmitSound( self.Sounds.Throw )
	end

	local grenade = ents.Create(self.GrenadeLauncherEntity)

	if self.CanCookGrenade then

		self.Owner:SetNWBool( "Cooked" , false )

		local RemainingTime = self.NextExplode - CurTime( )
		grenade:SetNWInt( "Cook" , CurTime( ) + RemainingTime )

	end

	local pos = self.Owner:GetShootPos()
		pos = pos + self.Owner:GetRight() * 7

		if self.Owner:KeyDown(IN_SPEED) and not self.Owner:Crouching() then
			pos = pos + self.Owner:GetUp() * -4
		elseif not self.Owner:Crouching() then
			pos = pos + self.Owner:GetForward() * -6
			pos = pos + self.Owner:GetUp() * 1
		else
			pos = pos + self.Owner:GetForward() * 1
			pos = pos + self.Owner:GetUp() * -24
		end

	grenade:SetPos(pos)
	grenade:GetAngles(Angle(math.random(1, 100), math.random(1, 100), math.random(1, 100)))
	grenade:SetOwner(self.Owner)
	grenade:Spawn()

	local phys = grenade:GetPhysicsObject()

	if self.Owner:KeyDown(IN_FORWARD) then

		self.Force = self.GrenadeLauncherForce + 1000

	elseif self.Owner:KeyDown(IN_BACK) then

		self.Force = self.GrenadeLauncherForce - 1000

	else

		self.Force = self.GrenadeLauncherForce

	end

	if not self.Owner:Crouching() then

		phys:ApplyForceCenter( self.Owner:GetAimVector() * self.Force * 1.2 + Vector( 0 , 0 , 200 ) )

	else

		phys:ApplyForceCenter( self.Owner:GetAimVector() * self.Force * 1.2 + Vector( 0 , 0 , 0 ) )

	end

	phys:AddAngleVelocity(Vector(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000)))

	self.Owner:RemoveAmmo( 1 , self:GetPrimaryAmmoType( ) )

	timer.Simple(0.6, function()

		if not IsValid(self.Owner) then return end

		-- Reset the primer status anyway because it's stored on the player data
		self.Owner:SetNWInt( "Primed" , 0 )

		if self:Ammo1() > 0 then

			-- Send the animation
			local VModel = self.Owner:GetViewModel( )
			local DeployEnum = VModel:SelectWeightedSequence( ACT_VM_DRAW )
			VModel:SendViewModelMatchingSequence( DeployEnum )

		else

			self:Remove()

			self.Owner:ConCommand( "lastinv" )

		end

	end )

end
