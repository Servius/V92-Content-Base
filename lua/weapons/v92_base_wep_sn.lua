// Variables that are used on both client and server
// The scope code is based on the Realistic Weapons Base made by Teta Bonita

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

SWEP.Base				= "v92_base_wep"

if CLIENT then

	SWEP.PrintName			= "V92 Sniper Base"		// 'Nice' Weapon name (Shown on HUD)	
	SWEP.Slot				= 3							// Slot in the weapon selection menu
	SWEP.SlotPos			= 1							// Position in the slot

	/*---------------------------------------------------------
	   Name: SWEP:DrawHUD()
	---------------------------------------------------------*/
	local iScreenWidth 	= surface.ScreenWidth()
	local iScreenHeight 	= surface.ScreenHeight()

	local SCOPEFADE_TIME = 0.4

	function SWEP:DrawHUD()

		self:SecondDrawHUD()
		self:DrawFuelHUD()

		if (self.Sniper) then

			local bScope = self.Weapon:GetDTBool(2)

			if bScope ~= self.bLastScope then // Are we turning the scope off/on?
				self.bLastScope = bScope
				self.fScopeTime = CurTime()
			elseif bScope then
				local fScopeZoom = self.Weapon:GetNetworkedFloat("ScopeZoom")

				if fScopeZoom ~= self.fLastScopeZoom then // Are we changing the scope zoom level?
			
					self.fLastScopeZoom = fScopeZoom
					self.fScopeTime = CurTime()
				end
			end
				
			local fScopeTime = self.fScopeTime or 0

			if fScopeTime > CurTime() - SCOPEFADE_TIME then
			
				local Mul = 1.0 -- This scales the alpha
				Mul = 1 - math.Clamp((CurTime() - fScopeTime) / SCOPEFADE_TIME, 0, 1)
			
				surface.SetDrawColor(0, 0, 0, 255 * Mul) // Draw a black rect over everything and scale the alpha for a neat fadein effect
				surface.DrawRect(0, 0, iScreenWidth,iScreenHeight)
			end

			if (bScope) then 
		
				// Draw the crosshair
				if not (self.RedDot) then
					surface.SetDrawColor(0, 0, 0, 255)
				end

				// Put the texture
				surface.SetDrawColor(0, 0, 0, 255)

				if (self.RedDot) then
					surface.SetTexture(surface.GetTextureID("scope/reddotscope"))
				else
					surface.SetTexture(surface.GetTextureID("scope/scope_detailed"))
				end

				surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)

				// Fill in everything else
				surface.SetDrawColor(0, 0, 0, 255)
				surface.DrawRect(self.QuadTable.x1 - 2.5, self.QuadTable.y1 - 2.5, self.QuadTable.w1 + 5, self.QuadTable.h1 + 5)
				surface.DrawRect(self.QuadTable.x2 - 2.5, self.QuadTable.y2 - 2.5, self.QuadTable.w2 + 5, self.QuadTable.h2 + 5)
				surface.DrawRect(self.QuadTable.x3 - 2.5, self.QuadTable.y3 - 2.5, self.QuadTable.w3 + 5, self.QuadTable.h3 + 5)
				surface.DrawRect(self.QuadTable.x4 - 2.5, self.QuadTable.y4 - 2.5, self.QuadTable.w4 + 5, self.QuadTable.h4 + 5)
			end
		end

		if (self.Weapon:GetDTBool(1) and not self.Weapon:GetNetworkedBool("Suppressor")) or (cl_crosshair_t:GetBool() == false) or (LocalPlayer():InVehicle()) then return end
		
		local hitpos = util.TraceLine ({
			start = LocalPlayer():GetShootPos(),
			endpos = LocalPlayer():GetShootPos() + LocalPlayer():GetAimVector() * 4096,
			filter = LocalPlayer(),
			mask = MASK_SHOT
		}).HitPos

		local screenpos = hitpos:ToScreen()
		
		local x = screenpos.x
		local y = screenpos.y

		if self.Primary.Cone < 0.005 then
			self.Primary.Cone = 0.005
		end
		
		local gap = ((self.Primary.Cone * 275) + (((self.Primary.Cone * 275) * (ScrH() / 720))) * (1 / self:CrosshairAccuracy())) * 0.75
		
		gap = math.Clamp(gap, 0, (ScrH() / 2) - 100)
		local length = cl_crosshair_l:GetInt()

		self:DrawCrosshairHUD(x - gap - length, y - 1, length, 3) 	// Left
		self:DrawCrosshairHUD(x + gap + 1, y - 1, length, 3) 		// Right
		self:DrawCrosshairHUD(x - 1, y - gap - length, 3, length) 	// Top 
		self:DrawCrosshairHUD(x - 1, y + gap + 1, 3, length) 		// Bottom
	end

	/*---------------------------------------------------------
	   Name: SWEP:TranslateFOV()
	---------------------------------------------------------*/
	local IRONSIGHT_TIME = 0.2

	function SWEP:TranslateFOV(current_fov)

		local fScopeZoom = self.Weapon:GetNetworkedFloat("ScopeZoom")

		if self.Weapon:GetDTBool(2) then return current_fov / fScopeZoom end
		
		local bIron = self.Weapon:GetDTBool(1)

		if bIron ~= self.bLastIron then // Do the same thing as in CalcViewModel. I don't know why this works, but it does.
			self.bLastIron = bIron 
			self.fIronTime = CurTime()
		end
		
		local fIronTime = self.fIronTime or 0

		if not bIron and (fIronTime < CurTime() - IRONSIGHT_TIME) then 
			return current_fov
		end
		
		local Mul = 1.0 // More interpolating shit
		
		if fIronTime > CurTime() - IRONSIGHT_TIME then
			Mul = math.Clamp((CurTime() - fIronTime) / IRONSIGHT_TIME, 0, 1)
			if not bIron then Mul = 1 - Mul end
		end

		current_fov = current_fov*(1 + Mul/self.IronSightZoom - Mul)

		return current_fov
	end

	/*---------------------------------------------------------
	   Name: SWEP:GetTracerOrigin()
	   Desc: Allows you to override where the tracer comes from (in first person view)
		   returning anything but a vector indicates that you want the default action.
	---------------------------------------------------------*/
	function SWEP:GetTracerOrigin()

		if (self.Weapon:GetDTBool(1)) then
			local pos = self:GetOwner():EyePos() + self:GetOwner():EyeAngles():Up() * -5
			return pos
		end
	end

	/*---------------------------------------------------------
	   Name: SniperCreateMove()
	---------------------------------------------------------*/
	local staggerdir = VectorRand():GetNormalized()

	local function SniperCreateMove(cmd)
		
		
		if (LocalPlayer():GetActiveWeapon():IsValid() and LocalPlayer():GetActiveWeapon():GetDTBool(2)) then
			local ang = cmd:GetViewAngles()

			local ft = FrameTime()

			
			if LocalPlayer():GetActiveWeapon():GetDTBool(3) then 
				ang.pitch = math.NormalizeAngle(ang.pitch + staggerdir.z * ft * 0.2)
				ang.yaw = math.NormalizeAngle(ang.yaw + staggerdir.x * ft * 0.2)
				staggerdir = (staggerdir + ft * 100 * VectorRand()):GetNormalized()
			elseif LocalPlayer():Crouching() then 
				ang.pitch = math.NormalizeAngle(ang.pitch + staggerdir.z * ft * 0.4)
				ang.yaw = math.NormalizeAngle(ang.yaw + staggerdir.x * ft * 0.4)
				staggerdir = (staggerdir + ft * 100 * VectorRand()):GetNormalized()
			elseif LocalPlayer():GetVelocity():Length() > 50 then
				ang.pitch = math.NormalizeAngle(ang.pitch + staggerdir.z * ft * 5)
				ang.yaw = math.NormalizeAngle(ang.yaw + staggerdir.x * ft * 5)
				staggerdir = (staggerdir + ft * 100 * VectorRand()):GetNormalized()
			else
				ang.pitch = math.NormalizeAngle(ang.pitch + staggerdir.z * ft * 1)
				ang.yaw = math.NormalizeAngle(ang.yaw + staggerdir.x * ft * 1)
				staggerdir = (staggerdir + ft * 10 * VectorRand()):GetNormalized()
			end
			
			
			cmd:SetViewAngles(ang)		
		end
		
	end
	hook.Add ("CreateMove", "SniperCreateMove", SniperCreateMove)

end

if SERVER then

	SWEP.HoldType				= "ar2"

	/*---------------------------------------------------------
	   Name: SWEP:OnRestore()
	   Desc: The game has just been reloaded. This is usually the right place
		   to call the GetNetworked* functions to restore the script's values.
	---------------------------------------------------------*/
	function SWEP:OnRestore()

		self:ResetVariables()

		return true
	end

	/*---------------------------------------------------------
	   Name: SWEP:OnRemove()
	   Desc: Called just before entity is deleted.
	---------------------------------------------------------*/
	function SWEP:OnRemove()

		self:ResetVariables()

		return true
	end

	/*---------------------------------------------------------
	   Name: SWEP:Equip()
	   Desc: A player or NPC has picked the weapon up.
	---------------------------------------------------------*/
	function SWEP:Equip(NewOwner)

		self:ResetVariables()

		return true
	end

	/*---------------------------------------------------------
	   Name: SWEP:OnDrop()
	   Desc: Weapon was dropped.
	---------------------------------------------------------*/
	function SWEP:OnDrop()

		self:ResetVariables()

		return true
	end
end

SWEP.Pistol				= false
SWEP.Rifle				= false
SWEP.Shotgun			= false
SWEP.Sniper				= true

SWEP.Penetration			= true
SWEP.Ricochet			= false

local sndZoomIn 		= Sound("Weapon_AR2.Special1")
local sndZoomOut 		= Sound("Weapon_AR2.Special2")
local sndCycleZoom 	= Sound("Default.Zoom")

/*---------------------------------------------------------
   Name: SWEP:Precache()
   Desc: Use this function to precache stuff.
---------------------------------------------------------*/
function SWEP:Precache()

	util.PrecacheSound("weapons/sniper/sniper_zoomin.wav")
	util.PrecacheSound("weapons/sniper/sniper_zoomout.wav")
	util.PrecacheSound("weapons/zoom.wav")
end

/*---------------------------------------------------------
   Name: SWEP:Initialize()
   Desc: Called when the weapon is first loaded.
---------------------------------------------------------*/
function SWEP:Initialize()
	self:SetWeaponHoldType(self.HoldType)
	if (CLIENT) then
		local iScreenWidth 	= surface.ScreenWidth()
		local iScreenHeight 	= surface.ScreenHeight()
		
		self.ScopeTable 		= {}
		self.ScopeTable.l 	= iScreenHeight * self.ScopeScale
		self.ScopeTable.x1 	= 0.5 * (iScreenWidth + self.ScopeTable.l)
		self.ScopeTable.y1 	= 0.5 * (iScreenHeight - self.ScopeTable.l)
		self.ScopeTable.x2 	= self.ScopeTable.x1
		self.ScopeTable.y2 	= 0.5 * (iScreenHeight + self.ScopeTable.l)
		self.ScopeTable.x3 	= 0.5 * (iScreenWidth - self.ScopeTable.l)
		self.ScopeTable.y3 	= self.ScopeTable.y2
		self.ScopeTable.x4 	= self.ScopeTable.x3
		self.ScopeTable.y4 	= self.ScopeTable.y1
				
		self.ParaScopeTable 	= {}
		self.ParaScopeTable.x 	= 0.5 * iScreenWidth - self.ScopeTable.l
		self.ParaScopeTable.y 	= 0.5 * iScreenHeight - self.ScopeTable.l
		self.ParaScopeTable.w 	= 2 * self.ScopeTable.l
		self.ParaScopeTable.h 	= 2 * self.ScopeTable.l
		
		self.ScopeTable.l 	= (iScreenHeight + 1) * self.ScopeScale

		self.QuadTable 		= {}
		self.QuadTable.x1 	= 0
		self.QuadTable.y1 	= 0
		self.QuadTable.w1 	= iScreenWidth
		self.QuadTable.h1 	= 0.5 * iScreenHeight - self.ScopeTable.l
		self.QuadTable.x2 	= 0
		self.QuadTable.y2 	= 0.5 * iScreenHeight + self.ScopeTable.l
		self.QuadTable.w2 	= self.QuadTable.w1
		self.QuadTable.h2 	= self.QuadTable.h1
		self.QuadTable.x3 	= 0
		self.QuadTable.y3 	= 0
		self.QuadTable.w3 	= 0.5 * iScreenWidth - self.ScopeTable.l
		self.QuadTable.h3 	= iScreenHeight
		self.QuadTable.x4 	= 0.5 * iScreenWidth + self.ScopeTable.l
		self.QuadTable.y4 	= 0
		self.QuadTable.w4 	= self.QuadTable.w3
		self.QuadTable.h4 	= self.QuadTable.h3

		self.LensTable 		= {}
		self.LensTable.x 		= self.QuadTable.w3
		self.LensTable.y 		= self.QuadTable.h1
		self.LensTable.w 		= 2 * self.ScopeTable.l
		self.LensTable.h 		= 2 * self.ScopeTable.l

		self.CrossHairTable 	= {}
		self.CrossHairTable.x11 = 0
		self.CrossHairTable.y11 = 0.5 * iScreenHeight
		self.CrossHairTable.x12 = iScreenWidth
		self.CrossHairTable.y12 = self.CrossHairTable.y11
		self.CrossHairTable.x21 = 0.5 * iScreenWidth
		self.CrossHairTable.y21 = 0
		self.CrossHairTable.x22 = 0.5 * iScreenWidth
		self.CrossHairTable.y22 = iScreenHeight
	end

	self.ScopeZooms 			= self.ScopeZooms or {5}
	self.CurScopeZoom			= 1

	self:ResetVariables()
end

/*---------------------------------------------------------
   Name: SWEP:ResetVariables()
   Desc: Reset all varibles.
---------------------------------------------------------*/
function SWEP:ResetVariables()

	self.bLastIron = false
	self.Weapon:SetDTBool(1, false)
	self.CurScopeZoom 		= 1
	self.fLastScopeZoom 		= 1
	self.bLastScope 			= false
	self.Weapon:SetDTBool(2, false)
	self.Weapon:SetNetworkedFloat("ScopeZoom", self.ScopeZooms[1])
	
end

/*---------------------------------------------------------
   Name: SWEP:Reload()
   Desc: Reload is being pressed.
---------------------------------------------------------*/
function SWEP:Reload()

	if self.Owner:KeyDown(IN_USE) and self.Weapon:GetDTBool(0) then
		self.Weapon:SetNextPrimaryFire(CurTime() + 10)
		self.Weapon:SetNextSecondaryFire(CurTime() + 10)
		self.ActionDelay = (CurTime() + 10)
		self:SetIronsights(false)
		self.Owner:GiveAmmo( self:Clip1(), self:GetPrimaryAmmoType() )
		self:Throw()
	end
	
	// When the weapon is already doing an animation, just return end because we don't want to interrupt it
	if (self.ActionDelay > CurTime()) or self.Owner:KeyDown(IN_SPEED) or self.Weapon:GetDTBool(0) then return end
		
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	self.Weapon:SetNextSecondaryFire(CurTime() + self.DeployDelay + 1.0)
	self.ActionDelay = (CurTime())

	// Need to call the default reload before the real reload animation (don't try to understand my reason)
	self.Weapon:DefaultReload(ACT_VM_RELOAD)

	if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
		self:IdleAnimation(self.Owner:GetViewModel():SequenceDuration())
	end

	if (self.Weapon:Clip1() < self.Primary.ClipSize) and (self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) then
		self:SetIronsights(false)
		self:ReloadAnimation()

		self:ResetVariables()

		if not (CLIENT) then
			self.Owner:DrawViewModel(true)
		end
	end
end
/*---------------------------------------------------------
   Name: SWEP:PrimaryAttack()
   Desc: +attack1 has been pressed.
---------------------------------------------------------*/
function SWEP:PrimaryAttack()

	// Holst/Deploy your fucking weapon
	if (not self.Owner:IsNPC() and not self.Owner:KeyDown(IN_SPEED) and not self.Weapon:GetDTBool(1) and not self.Owner:KeyDown(IN_RELOAD) and self.Owner:KeyDown(IN_USE)) then
		bHolsted = !self.Weapon:GetDTBool(0)
		self:SetHolsted(bHolsted)

		self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())

		self:SetIronsights(false)

		return
	end

	if (not self:CanPrimaryAttack()) then return end

	self.ActionDelay = (CurTime() + self.Primary.Delay + 0.05)
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self.Weapon:SetNextSecondaryFire(CurTime() + self.Primary.Delay)

	// If the burst mode is activated, it's going to shoot the three bullets (or more if you're dumb and put 4 or 5 bullets for your burst mode)
	if self.Weapon:GetNetworkedBool("Burst") then
		self.BurstTimer 	= CurTime()
		self.BurstCounter = self.BurstShots - 1
		self.Weapon:SetNextPrimaryFire(CurTime() + 0.5)
	end

	if (not self.Owner:IsNPC()) and (self.BoltActionSniper) and (self.Weapon:GetDTBool(1)) then
		self:ResetVariables()
		self.ScopeAfterShoot = true

		timer.Simple(self.Primary.Delay, function()
			if not self.Owner then return end

			if (self.ScopeAfterShoot) and (self.Weapon:Clip1() > 0) then
				self.Weapon:SetNextPrimaryFire(CurTime() + 0.2)
				self.Weapon:SetNextSecondaryFire(CurTime() + 0.2)
				self:SetIronsights(true)
			end
		end)
	end

	self.Weapon:EmitSound(self.Primary.Sound)

	self:TakePrimaryAmmo(1)

	self:ShootBulletInformation()
	
		local jamchance = math.random(1,1000) // 1000
	
	if Jamming:GetBool() then
		if self.Weapon:GetDTBool(0) or self.Weapon:Clip1()  <= 1 then return end
		if jamchance > 990 then
			self:SetNWBool("LittleJammed",true)
			self:Jammed()
		end
		if jamchance < 2 then
			self:SetNWBool("BigJammed",true)
			self:Jammed()
		end
	end
end

/*---------------------------------------------------------
   Name: function SimilarizeAngles()
---------------------------------------------------------*/
local LastViewAng = false

local function SimilarizeAngles(ang1, ang2)

	ang1.y = math.fmod (ang1.y, 360)
	ang2.y = math.fmod (ang2.y, 360)

	if math.abs (ang1.y - ang2.y) > 180 then
		if ang1.y - ang2.y < 0 then
			ang1.y = ang1.y + 360
		else
			ang1.y = ang1.y - 360
		end
	end
end

/*---------------------------------------------------------
   Name: function ReduceScopeSensitivity()
---------------------------------------------------------*/
local function ReduceScopeSensitivity(uCmd)

	if LocalPlayer():GetActiveWeapon() and LocalPlayer():GetActiveWeapon():IsValid() then
		local newAng = uCmd:GetViewAngles()

		if LastViewAng then
			SimilarizeAngles (LastViewAng, newAng)

			local diff = newAng - LastViewAng

			diff = diff * (LocalPlayer():GetActiveWeapon().MouseSensitivity or 1)
			uCmd:SetViewAngles (LastViewAng + diff)
		end
	end

	LastViewAng = uCmd:GetViewAngles()
end 
hook.Add ("CreateMove", "ReduceScopeSensitivity", ReduceScopeSensitivity)

/*---------------------------------------------------------
   Name: SWEP:SetIronsights()
---------------------------------------------------------*/
local IRONSIGHT_TIME = 0.2

function SWEP:SetIronsights(b)

	if (CLIENT) then return end

	if (self.Weapon) then
		self.Weapon:SetDTBool(1, b)
	end
	
	if (b) then
		timer.Simple(IRONSIGHT_TIME,function() 
			if not IsValid(self.Owner) then return end
			if (not IsFirstTimePredicted() or not self.Owner:Alive())then return end
			self:SetScope(true,player) 
		end)
	else
		self:SetScope(false, player)
	end
end

/*---------------------------------------------------------
   Name: SWEP:SetScope()
---------------------------------------------------------*/
function SWEP:SetScope(b, player)

	if CLIENT then return end

	local PlaySound = b ~= self.Weapon:GetDTBool(2) // Only play zoom sounds when chaning in/out of scope mode
	self.CurScopeZoom = 1 // Just in case
	self.Weapon:SetNetworkedFloat("ScopeZoom", self.ScopeZooms[self.CurScopeZoom])

	if (b) then 
		if WeightMod:GetBool() then
			if (PlaySound) then
				self.Weapon:EmitSound(sndZoomIn)
			end
			self.Owner:SetRunSpeed(Walkspeed:GetFloat()*self.Speed*self.Mass)
			self.Owner:SetWalkSpeed(Walkspeed:GetFloat()*self.Speed*self.Mass)
		else
			if (PlaySound) then
				self.Weapon:EmitSound(sndZoomIn)
			end
		end

	else
		if WeightMod:GetBool() and not self.Weapon:GetDTBool(0) then
			self.Owner:SetRunSpeed(Runspeed:GetFloat()*self.Mass)
			self.Owner:SetWalkSpeed(Walkspeed:GetFloat()*self.Mass)
			if PlaySound then
				self.Weapon:EmitSound(sndZoomOut)
			end
		else
			if PlaySound then
				self.Weapon:EmitSound(sndZoomOut)
			end
		end
	end
	
	// Send the scope state to the client, so it can adjust the player's fov/HUD accordingly
	self.Weapon:SetDTBool(2, b) 
end
/*---------------------------------------------------------
   Name: SWEP:Think()
   Desc: Called every frame.
---------------------------------------------------------*/
function SWEP:Think()

	self:SecondThink()

	if self.IdleDelay < CurTime() and self.IdleApply and self.Weapon:Clip1() > 0 then
		local WeaponModel = self.Weapon:GetOwner():GetActiveWeapon():GetClass()

		if self.Weapon:GetOwner():GetActiveWeapon():GetClass() == WeaponModel and self.Owner:Alive() then
			if self.Weapon:GetNetworkedBool("Suppressor") then
				self.Weapon:SendWeaponAnim(ACT_VM_IDLE_SILENCED)
			else
				self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
			end

			if self.AllowPlaybackRate and not self.Weapon:GetDTBool(1) then
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
		if !self.Weapon:GetDTBool(0) and !self.Owner:KeyDown(IN_SPEED) and self.Weapon:GetDTBool(1) then
		self:SetIronsights(false)
		end
	elseif Tr.HitPos:Distance(self.Owner:GetShootPos()) > 46 and self.NearWall then
		timer.Simple(0.2, function()
		self.NearWall = false
		end)
	end

	if (self.Weapon:GetDTBool(1) or self.Weapon:GetDTBool(2)) and self.Owner:KeyDown(IN_SPEED) then
		if WeightMod:GetBool() then
			self.Owner:SetRunSpeed(Runspeed:GetFloat()*self.Mass)
			self.Owner:SetWalkSpeed(Walkspeed:GetFloat()*self.Mass)
		else
			self:ResetSpeed()
		end	
		self:ResetVariables()
		self.Owner:SetFOV(0, 0.2)
	end
	
	if (self.BoltActionSniper) and (self.Owner:KeyPressed(IN_ATTACK2) or self.Owner:KeyPressed(IN_RELOAD)) then
		self.ScopeAfterShoot = false
	end
	
	// If you're running or if your weapon is holsted, the third person animation is going to change
	if self.Owner:KeyDown(IN_SPEED) or self.Weapon:GetDTBool(0) then
		if (self.BoltActionSniper) then
			self.ScopeAfterShoot = false
		end	
	
		if self.Rifle or self.Sniper or self.Shotgun then
			if self.Owner:KeyDown(IN_DUCK) then
				self:SetWeaponHoldType("normal")
			else
				self:SetWeaponHoldType("passive")
			end

		elseif self.Pistol then
			self:SetWeaponHoldType("normal")
		end
	else
		self:SetWeaponHoldType(self.HoldType)
	end	

	if (CLIENT) and (self.Weapon:GetDTBool(2)) then
		self.MouseSensitivity = self.Owner:GetFOV() / 60
	else
		self.MouseSensitivity = 1
	end

	if not (CLIENT) and (self.Weapon:GetDTBool(2)) and (self.Weapon:GetDTBool(1)) then
		self.Owner:DrawViewModel(false)
	elseif not (CLIENT) then
		self.Owner:DrawViewModel(true)
	end

	self:NextThink(CurTime())
end

/*---------------------------------------------------------
   Name: SWEP:Holster()
   Desc: Weapon wants to holster.
	   Return true to allow the weapon to holster.
---------------------------------------------------------*/
function SWEP:Holster()
	self:ResetSpeed()
	self:ResetVariables()
	if ManualHolster:GetBool() then
		if self.Weapon:GetDTBool(0) or self.Owner:InVehicle() then
			return true
		end
	else	
		return true
	end
end


/*---------------------------------------------------------
   Name: SWEP:OnRemove()
   Desc: Called just before entity is deleted.
---------------------------------------------------------*/
function SWEP:OnRemove()

	self:ResetVariables()

	return true
end

/*---------------------------------------------------------
   Name: SWEP:OwnerChanged()
   Desc: When weapon is dropped or picked up by a new player.
---------------------------------------------------------*/
function SWEP:OwnerChanged()

	self:ResetVariables()

	return true
end


