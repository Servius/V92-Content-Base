
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

SWEP.WeaponName = VNTCB.Bases.WepDeployable -- (String) Name of the weapon script
SWEP.WeaponEntityName = VNTCB.Bases.WepDeployable -- (String) Name of the weapon entity in Lua/Entities/Entityname.lua
SWEP.PrintName = "V92 Deployable Base" -- (String) Printed name on menu
SWEP.Category = VNTCB.Category.VNT -- (String) Category
SWEP.Instructions = VNTCB.instructions -- (String) Instruction
SWEP.Author = VNTCB.author -- (String) Author
SWEP.Contact = VNTCB.contact -- (String) Contact
SWEP.Purpose = VNTCB.purpose -- (String) Purpose
SWEP.WorkshopID = "505106454" -- (Integer) Workshop ID number of the upload that contains this file.

------------------------------------------------------
--	Model Information								--	Model settings and infomation
------------------------------------------------------

SWEP.ViewModel = Model( "models/weapons/c_slam.mdl" ) -- (String) View model - v_*
SWEP.WorldModel = Model( "models/weapons/w_slam.mdl" ) -- (String) World model - w_*
SWEP.UseHands = true -- (Boolean) Leave at false unless the model uses C_Arms

------------------------------------------------------
--	Grenades										-- These'll come in handy
------------------------------------------------------

SWEP.GroupNotify = Sound( "BF2.VO.USGrunt_MedicHere" )
SWEP.GroupNotifyEmpty = Sound( "BF2.VO.USGrunt_NoMedic" )
SWEP.GrenadeLauncherEntity = "v92_deployable_medic" -- (String) Name of the grenade launcher shell entity in Lua/Entities/Entityname.lua
SWEP.GrenadeLauncherForce = 3500 -- (Integer) Force of grenade launchers and shell throwers like that.

SWEP.Sounds = {
	["Throw"] = Sound( "WeaponFrag.Throw" ) ,
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

	self.HoldMeRight = VNTCB.HoldType.Support -- (String) Hold type table for our weapon, Lua/autorun/sh_v92_base_swep.Lua

end

function SWEP:PrimaryAttack()

	--print( "1" )

	if ( 
			self:Ammo1() <= 0 or 
			self.Owner:GetNWInt("Throw") > CurTime( )
		)
	then

		return false

	end

	self.ActionDelay = (CurTime() + GetConVarNumber( "VNT_SWep_Deployable_PlaceDelay" ) + 0.05)
	self:SetNextPrimaryFire(CurTime() + GetConVarNumber( "VNT_SWep_Deployable_PlaceDelay" ) )
	self:SetNextSecondaryFire(CurTime() + GetConVarNumber( "VNT_SWep_Deployable_PlaceDelay" ) )

	if self.SeqThrow != nil then

		self:SpecialAnimation( table.Random( self.SeqThrow ) )

	end

	self.Owner:SetAnimation(PLAYER_ATTACK1)

	timer.Simple(0.35, function()	
	
		if not IsValid(self.Owner) then 
		
			return 
			
		end 
		
		if SERVER then

			self:ThrowDeployable() 

			for _, _V in pairs(ents.FindInSphere(self.Owner:GetPos(), GetConVarNumber("VNT_SWep_Deployable_FindRadius") * 2 ) ) do

				if _V:IsPlayer() and self.Owner:UniqueID() != _V:UniqueID() and _V:Alive() then

					self.Owner:EmitSound( self.GroupNotify )

					break

				end

			end

		end
		
		self:FireViewPunches( )
		
	end )

end

function SWEP:ThrowDeployable()

	local deployable = ents.Create(self.GrenadeLauncherEntity)

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

	deployable:SetPos(pos)
	deployable:GetAngles(Angle(math.random(1, 100), math.random(1, 100), math.random(1, 100)))
	deployable:SetOwner(self.Owner)
	deployable:Spawn()

	local phys = deployable:GetPhysicsObject()

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

		if IsValid( self ) then

			if self:Ammo1() > 0 then

				-- Send the animation

				if self.SeqDraw != nil then

					self:SpecialAnimation( table.Random( self.SeqDraw ) )

				end

			else

				if SERVER then

					self.Owner:SetActiveWeapon( "v92_int_blank" )
					--self.Owner:ConCommand( "lastinv" )
					
				end

				if IsValid( self ) then
				
					self:Remove()
					
				end

			end
			
		end

	end )

end

function SWEP:SecondaryAttack()

	if self.Owner:KeyDown( IN_USE ) and self.ActionDelay < CurTime() then

		--	cycle the fire mode
		self:ToggleFireMode( )
		return false

	end

end