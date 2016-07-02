
AddCSLuaFile()

local RecoilMul = CreateConVar ("VNT_SWep_Base_RecoilMultiplier", "1", {FCVAR_REPLICATED, FCVAR_ARCHIVE})
local DamageMul = CreateConVar ("VNT_SWep_Base_DamageMultiplier", "1", {FCVAR_REPLICATED, FCVAR_ARCHIVE})
local AccuracyMul = CreateConVar ("VNT_SWep_Base_AccuracyMultiplier", "1", {FCVAR_REPLICATED, FCVAR_ARCHIVE})
local Walkspeed = CreateConVar ("VNT_SWep_Base_WalkSpeed", "125", {FCVAR_REPLICATED, FCVAR_ARCHIVE})
local Runspeed = CreateConVar ("VNT_SWep_Base_RunSpeed", "300", {FCVAR_REPLICATED, FCVAR_ARCHIVE})
local WeightMod	= CreateClientConVar("VNT_SWep_Base_WeightModToggle", 0, true, false)		// Enable/Disable
local ManualHolster	= CreateClientConVar("VNT_SWep_Base_ManualHolsterToggle", 0, true, false)		// Enable/Disable
local EnableShell	= CreateClientConVar("VNT_SWep_Base_ShellToggle", 1, true, false)		// Enable/Disable
local EnableFlash	= CreateClientConVar("VNT_SWep_Base_FlashToggle", 1, true, false)		// Enable/Disable
local Jamming	= CreateClientConVar("VNT_SWep_Base_JamToggle", 0, true, false)		// Enable/Disable
local FirstDraw = CreateClientConVar("VNT_SWep_Base_DrawToggle", 0, true, false)		// Enable/Disable

SWEP.Base 				= "v92_base_wep"

if CLIENT then
	SWEP.PrintName			= "No"			// 'Nice' Weapon name (Shown on HUD)	
	SWEP.Slot				= 2							// Slot in the weapon selection menu
	SWEP.SlotPos			= 1							// Position in the slot
end

/*---------------------------------------------------------
   Name: SWEP:SetIronsights()
---------------------------------------------------------*/
function SWEP:SetIronsights(b)

	if (self.Owner) then
		if (b) then
			if (SERVER) then
				self.Owner:SetFOV(65, 0.2)
			end
	
			if self.AllowIdleAnimation then
		
				self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
				
				self.Owner:GetViewModel():SetPlaybackRate(0)
			end
			if WeightMod:GetBool() then
				self.Weapon:EmitSound("Universai.IronIn")
				self.Owner:SetRunSpeed(Walkspeed:GetFloat()*self.Speed*self.Mass)
				self.Owner:SetWalkSpeed(Walkspeed:GetFloat()*self.Speed*self.Mass)
			else
				self.Weapon:EmitSound("Universai.IronIn")
			end
		else
			if (SERVER) then
				self.Owner:SetFOV(0, 0.2)
			end

			if self.AllowPlaybackRate and self.AllowIdleAnimation then
				self.Owner:GetViewModel():SetPlaybackRate(1)
			end	
			if WeightMod:GetBool() and not self.Weapon:GetDTBool(0) then
				self.Owner:SetRunSpeed(Runspeed:GetFloat()*self.Mass)
				self.Owner:SetWalkSpeed(Walkspeed:GetFloat()*self.Mass)
				self.Weapon:EmitSound("Universai.IronOut")
			else
				self.Weapon:EmitSound("Universai.IronOut")
			end
		end
	end

	if (self.Weapon) then
		self.Weapon:SetDTBool(1, b)
	end
end

/*---------------------------------------------------------
   Name: SWEP:SetMode()
---------------------------------------------------------*/
function SWEP:SetMode(b)

	if (self.Owner) then
		if (b) then
			if self.Type == 1 then
				self.Primary.Automatic = self.data.Automatic
				//self.Weapon:SendWeaponAnim(ACT_VM_UNDEPLOY)
			elseif self.Type == 2 then
				// Nothing here for the burst fire mode
				self.Weapon:EmitSound("Weapof_Misc.Switch")
			elseif self.Type == 3 then
				self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
				local Animation = self.Owner:GetViewModel()
				Animation:SetSequence(Animation:LookupSequence("m16a4_firemode"))
			end

			if (SERVER) then
				self.Owner:PrintMessage(HUD_PRINTTALK, self.data.ModeMsg)
			end
		else
			if self.Type == 1 then
				self.Primary.Automatic = !self.data.Automatic
				//self.Weapon:SendWeaponAnim(ACT_VM_UNDEPLOY)
			elseif self.Type == 2 then
				// Nothing here for the burst fire mode
				self.Weapon:EmitSound("Weapof_Misc.Switch")
			elseif self.Type == 3 then
				// Nothing here for the burst fire mode
				self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
				local Animation = self.Owner:GetViewModel()
				Animation:SetSequence(Animation:LookupSequence("m16a4_firemode"))
			end

			if (SERVER) then
				self.Owner:PrintMessage(HUD_PRINTTALK, self.data.NormalMsg)
			end
		end
	end

	if (self.Weapon) then
		self.Weapon:SetDTBool(3, b)
	end
end
/*---------------------------------------------------------
   Name: SWEP:SetHolsted()
---------------------------------------------------------*/
function SWEP:SetHolsted(b)

	if (self.Owner) then
		if (b) then
			self.Weapon:SendWeaponAnim(ACT_VM_HOLSTER)
		else
			self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
		end
	end

	if (self.Weapon) then
		self.Weapon:SetDTBool(0, b)
	end
end

/*---------------------------------------------------------
   Name: SWEP:DeployAnimation()
---------------------------------------------------------*/
function SWEP:DeployAnimation()
	if not self.FirstDraw and self.Weapon:Clip1() > 0 then
		self.FirstDraw = true
	end
	if not self.FirstDraw and (self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) and FirstDraw:GetBool() then
		self:Reload()
		self.Weapon:SendWeaponAnim(ACT_FIRE_END)
		self.FirstDraw = true
	else	
		self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
	end
end
