
AddCSLuaFile()

local Walkspeed = CreateConVar ("VNT_SWep_Base_WalkSpeed", "125", {FCVAR_REPLICATED, FCVAR_ARCHIVE})
local Runspeed = CreateConVar ("VNT_SWep_Base_RunSpeed", "300", {FCVAR_REPLICATED, FCVAR_ARCHIVE})
local WeightMod	= CreateClientConVar("VNT_SWep_Base_WeightModToggle", 0, true, false)		// Enable/Disable
local Jamming	= CreateClientConVar("VNT_SWep_Base_JamToggle", 0, true, false)		// Enable/Disable
local FirstDraw = CreateClientConVar("VNT_SWep_Base_DrawToggle", 0, true, false)		// Enable/Disable
SWEP.Base 					= "v92_base_wep"

if CLIENT then
	SWEP.PrintName			= "Nope"			// 'Nice' Weapon name (Shown on HUD)	
	SWEP.Slot				= 2							// Slot in the weapon selection menu
	SWEP.SlotPos			= 1							// Position in the slot
end

SWEP.HoldType				= "shotgun"
SWEP.ShellEffect			= ""	// "effect_mad_fx_shell_pistol" or "effect_mad_fx_shell_rifle" or "effect_mad_fx_shell_shotgun"
SWEP.ShellDelay				= 0

SWEP.Pistol					= false
SWEP.Rifle					= false
SWEP.Shotgun				= true
SWEP.Sniper					= false

SWEP.ShotgunReloading		= false
SWEP.ShotgunFinish			= 0.5
SWEP.ShotgunBeginReload		= 0.1
SWEP.Penetration			= false
SWEP.Ricochet				= false
/*---------------------------------------------------------
   Name: SWEP:Reload()
   Desc: Reload is being pressed.
---------------------------------------------------------*/
function SWEP:Reload()

	if self.Owner:KeyDown(IN_USE) and self.Weapon:GetDTBool(40) then
		--self.Weapon:SetNextPrimaryFire(CurTime() + 10)
		--self.Weapon:SetNextSecondaryFire(CurTime() + 10)
		--self.ActionDelay = (CurTime() + 10)
		self:SetIronsights(false)
		--self.Owner:GiveAmmo( self:Clip1(), self:GetPrimaryAmmoType() )
		--self:Throw()
	
	
	else

		if (self.ActionDelay > CurTime()) or self.Owner:KeyDown(IN_SPEED) then return end 
		if self.Weapon:GetDTBool(40) or (self:GetNWBool("BigJammed") or self:GetNWBool("LittleJammed")) or (self:Clip1() == (self.Primary.ClipSize + 1)) then return end

		if (self.Weapon:GetNWBool("Reloading") or self.ShotgunReloading) then return end

		if (self.Weapon:Clip1() < self.Primary.ClipSize and self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) then
			if not IsValid(self.Weapon) then return end
			self.ShotgunReloading = true
			self.Owner:DoReloadEvent()
			self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			self.Weapon:SendWeaponAnim(ACT_VM_RELOAD)

			timer.Simple(self.ShotgunBeginReload, function()
				if not IsValid(self.Weapon) then return end
				self.ShotgunReloading = false
				self.Weapon:SetNetworkedBool("Reloading", true)
				self.Weapon:SetVar("ReloadTime", CurTime() + self.Owner:GetViewModel():SequenceDuration())
				self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
				self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			end)
		
			if (SERVER) then
				self.Owner:SetFOV( 0, 0.15 )
				self:SetIronsights(false)
			end
		end
	end
end


/*---------------------------------------------------------
   Name: SWEP:Think()
   Desc: Called every frame.
---------------------------------------------------------*/
function SWEP:Think()

	if self.Weapon:Clip1() > self.Primary.ClipSize then
		self.Weapon:SetClip1(self.Primary.ClipSize)
	end

	if (self.Weapon:Clip1() == 0) then
		if self.Weapon:GetNetworkedBool("Reloading") == true then
			if self.Weapon:GetNetworkedInt("ReloadTime") < CurTime() then
				if (self.Weapon:Clip1() >= self.Primary.ClipSize or self.Owner:GetAmmoCount(self.Primary.Ammo) <= 0) then
					self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					self.Weapon:SetNetworkedBool("Reloading", false)
					--self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_START)
					--if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
						--self:IdleAnimation(self.Owner:GetViewModel():SequenceDuration())
					--end
				else
					self.Weapon:SetNetworkedInt("ReloadTime", CurTime() + self.Owner:GetViewModel():SequenceDuration())
					self.Weapon:SendWeaponAnim(ACT_SHOTGUN_PUMP)
					self.Owner:RemoveAmmo(1, self.Primary.Ammo, false)
					local AnimationTime = self.Owner:GetViewModel():SequenceDuration()
					self.ReloadingTime = CurTime() + AnimationTime
					self:SetNextPrimaryFire(CurTime() + AnimationTime)
					self:SetNextSecondaryFire(CurTime() + AnimationTime)
					self.Weapon:SetClip1(self.Weapon:Clip1() + 1)
		

					if (self.Weapon:Clip1() >= self.Primary.ClipSize or self.Owner:GetAmmoCount(self.Primary.Ammo) <= 0) then
						self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
						self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					else
						self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
						self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					end
				end
			end
		end
	else
		if self.Weapon:GetNetworkedBool("Reloading") == true then
			if self.Weapon:GetNetworkedInt("ReloadTime") < CurTime() then
				if (self.Weapon:Clip1() >= self.Primary.ClipSize or self.Owner:GetAmmoCount(self.Primary.Ammo) <= 0) then
					self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					self.Weapon:SetNetworkedBool("Reloading", false)
					self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_FINISH)
					local AnimationTime = self.Owner:GetViewModel():SequenceDuration()
					self.ReloadingTime = CurTime() + AnimationTime
					self:SetNextPrimaryFire(CurTime() + AnimationTime)
					self:SetNextSecondaryFire(CurTime() + AnimationTime)
				else
					self.Weapon:SetNetworkedInt("ReloadTime", CurTime() + self.Owner:GetViewModel():SequenceDuration())
					self.Weapon:SendWeaponAnim(ACT_VM_RELOAD)
					local AnimationTime = self.Owner:GetViewModel():SequenceDuration()
					self.ReloadingTime = CurTime() + AnimationTime
					self:SetNextPrimaryFire(CurTime() + AnimationTime)
					self:SetNextSecondaryFire(CurTime() + AnimationTime)
					self.Owner:RemoveAmmo(1, self.Primary.Ammo, false)
					self.Weapon:SetClip1(self.Weapon:Clip1() + 1)

					if (self.Weapon:Clip1() >= self.Primary.ClipSize or self.Owner:GetAmmoCount(self.Primary.Ammo) <= 0) then
						self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
						self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					else
						self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
						self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
					end
				end
			end
		end
	end

	if (self.Owner:KeyPressed(IN_ATTACK)) and (self.Weapon:GetNWBool("Reloading", true)) then
		self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.Weapon:SetNetworkedInt("ReloadTime", CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.Weapon:SetNetworkedBool("Reloading", false)

		timer.Simple(self.Owner:GetViewModel():SequenceDuration(), function()
		if not IsValid(self.Owner) then return end
			self.Weapon:SendWeaponAnim(ACT_SHOTGUN_RELOAD_FINISH)
			local AnimationTime = self.Owner:GetViewModel():SequenceDuration()
			self.ReloadingTime = CurTime() + AnimationTime
			self:SetNextPrimaryFire(CurTime() + AnimationTime)
			self:SetNextSecondaryFire(CurTime() + AnimationTime)
		end)
	end

	self:SecondThink()

	if self.IdleDelay < CurTime() and self.IdleApply and self.Weapon:Clip1() >= 0 then
		local WeaponModel = self.Weapon:GetOwner():GetActiveWeapon():GetClass()

		if self.Weapon:GetOwner():GetActiveWeapon():GetClass() == WeaponModel and self.Owner:Alive() then

			self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
	

			if self.AllowPlaybackRate and not self.Weapon:GetDTBool(41) then
				self.Owner:GetViewModel():SetPlaybackRate(1)
			else
				self.Owner:GetViewModel():SetPlaybackRate(0)
			end	
		end

		self.IdleApply = false
	elseif self.Weapon:Clip1() <= 0 then
		self.IdleApply = false
	end
	
	local Tr = self.Owner:GetEyeTrace()
		if Tr.Entity:IsValid() and (Tr.Entity:IsNPC() or Tr.Entity:IsPlayer()) and self.Pistol then
		self.DontNearWall = true
	else
		self.DontNearWall = false
	end
	
	if Tr.Hit and Tr.HitPos:Distance(self.Owner:GetShootPos()) < 45 and !self.NearWall and !self.DontNearWall then
		self.NearWall = true
		if !self.Weapon:GetDTBool(40) and !self.Owner:KeyDown(IN_SPEED) and self.Weapon:GetDTBool(41) then
		self:SetIronsights(false)
		end
	elseif Tr.HitPos:Distance(self.Owner:GetShootPos()) > 46 and self.NearWall then
		timer.Simple(0.2, function()
		self.NearWall = false
		end)
	end
	
	if self.Weapon:GetDTBool(41) and self.Owner:KeyDown(IN_SPEED) then
		self:SetIronsights(false)
	end

	// If you're running or if your weapon is holsted, the third person animation is going to change
	if self.Owner:KeyDown(IN_SPEED) or self.Weapon:GetDTBool(40) then
		if self.Rifle or self.Sniper or self.Shotgun then
			self:SetWeaponHoldType("passive")
		
		elseif self.Pistol then
			self:SetWeaponHoldType("normal")
		end
		
	else
		self:SetWeaponHoldType(self.HoldType)
	end

	self:NextThink(CurTime())
end
/*--------------------------------------------------------
   Name: SWEP:Deploy()
   Desc: Whip it out.
---------------------------------------------------------*/
function SWEP:Deploy()

	if self.Weapon:GetDTBool(40) then
		bHolsted = !self.Weapon:GetDTBool(40)
		self:SetHolsted(bHolsted)
	end	

	self.ShotgunReloading = false
	self.Weapon:SetNetworkedBool("Reloading", false)

	self.Weapon:SetNextPrimaryFire(CurTime() + self.DeployDelay)
	self.Weapon:SetNextSecondaryFire(CurTime() + self.DeployDelay)
	self.ActionDelay = (CurTime() + self.DeployDelay)

	if (SERVER) then
		self:SetIronsights(false)
	end
	
	self:DeployAnimation()

	if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
		self:IdleAnimation(self.Owner:GetViewModel():SequenceDuration())
	end

	if self.Weapon:GetDTBool(40) then
		return true
	end
end

/*---------------------------------------------------------
   Name: SWEP:DeployAnimation()
---------------------------------------------------------*/
function SWEP:DeployAnimation()
	
	if not self.FirstDraw and (self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) then
		self:Reload()
		self.Weapon:SendWeaponAnim(ACT_FIRE_END)
		self.FirstDraw = true
	else	
		self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
	end
end
