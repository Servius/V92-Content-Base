
AddCSLuaFile()

//These help speed up the loading time

local Sound = Sound
local Vector = Vector
local CreateConVar = CreateConVar
local CurTime = CurTime
local IsFirstTimePredicted = IsFirstTimePredicted
local Angle = Angle
local EffectData = EffectData
local SinglePlayer = SinglePlayer
local FrameTime = FrameTime
local IsValid = IsValid
local WorldSound = WorldSound
local util = util
local hook = hook
local math = math
local timer = timer
local ents = ents
local ACT_VM_IDLE = ACT_VM_IDLE
local PLAYERANIMEVENT_CUSTOM_GESTURE = PLAYERANIMEVENT_CUSTOM_GESTURE
local GESTURE_SLOT_ATTACK_AND_RELOAD = GESTURE_SLOT_ATTACK_AND_RELOAD
local ACT_MP_ATTACK_CROUCH_PRIMARYFIRE = ACT_MP_ATTACK_CROUCH_PRIMARYFIRE
local ACT_MP_ATTACK_STAND_PRIMARYFIRE = ACT_MP_ATTACK_STAND_PRIMARYFIRE
local FCVAR_REPLICATED = FCVAR_REPLICATED
local FCVAR_ARCHIVE = FCVAR_ARCHIVE
local ACT_VM_DRAW_EMPTY = ACT_VM_DRAW_EMPTY
local ACT_VM_DRAW_SILENCED = ACT_VM_DRAW_SILENCED
local ACT_VM_DRAW = ACT_VM_DRAW
local IN_SPEED = IN_SPEED
local ACT_VM_IDLE_SILENCED = ACT_VM_IDLE_SILENCED
local ACT_VM_IDLE_EMPTY = ACT_VM_IDLE_EMPTY
local IN_FORWARD = IN_FORWARD
local IN_BACK = IN_BACK
local IN_MOVELEFT = IN_MOVELEFT
local IN_MOVERIGHT = IN_MOVERIGHT
local HUD_PRINTTALK = HUD_PRINTTALK
local ACT_VM_RELOAD = ACT_VM_RELOAD
local ACT_VM_RELOAD_SILENCED = ACT_VM_RELOAD_SILENCED
local ACT_VM_RELOAD_EMPTY = ACT_VM_RELOAD_EMPTY
local IN_USE = IN_USE
local ACT_INVALID = ACT_INVALID
local IN_DUCK = IN_DUCK
local SERVER = SERVER
local CLIENT = CLIENT
local MAT_GLASS = MAT_GLASS
local MAT_SAND = MAT_SAND
local MAT_FLESH = MAT_FLESH
local MAT_ALIENFLESH = MAT_ALIENFLESH
local MAT_WOOD = MAT_WOOD
local MAT_CONCRETE = MAT_CONCRETE
local MAT_PLASTIC = MAT_PLASTIC

//adding various ammo types, change if you wish

//These varaibles modify what are in the menus under autorun/client

local RecoilMul = CreateConVar ("VNT_SWep_Base_RecoilMultiplier", "1", {FCVAR_REPLICATED, FCVAR_ARCHIVE}) //recoil
local DamageMul = CreateConVar ("VNT_SWep_Base_DamageMultiplier", "1", {FCVAR_REPLICATED, FCVAR_ARCHIVE}) //damage
local AccuracyMul = CreateConVar ("VNT_SWep_Base_AccuracyMultiplier", "1", {FCVAR_REPLICATED, FCVAR_ARCHIVE}) //accuracy
local Walkspeed = CreateConVar ("VNT_SWep_Base_WalkSpeed", "125", {FCVAR_REPLICATED, FCVAR_ARCHIVE}) // walkspeed
local Runspeed = CreateConVar ("VNT_SWep_Base_RunSpeed", "300", {FCVAR_REPLICATED, FCVAR_ARCHIVE}) // runspeed
local WeightMod	= CreateClientConVar("VNT_SWep_Base_WeightModToggle", 0, true, false)		// Enable/Disable slows down when ironsighted 
local ManualHolster	= CreateClientConVar("VNT_SWep_Base_ManualHolsterToggle", 0, true, false)		// Enable/Disable holster your guns manually or dont have to at all
local EnableShell	= CreateClientConVar("VNT_SWep_Base_ShellToggle", 1, true, false)		// Enable/Disable shell effect
local EnableFlash	= CreateClientConVar("VNT_SWep_Base_FlashToggle", 1, true, false)		// Enable/Disable muzzle effects
local Jamming	= CreateClientConVar("VNT_SWep_Base_JamToggle", 0, true, false)		// Enable/Disable jamming weapons
local FirstDraw = CreateClientConVar("VNT_SWep_Base_DrawToggle", 0, true, false)		// Enable/Disable loading empty weapon on draw (insurgency feature)

if CLIENT then
	SWEP.Category			= "V92's Base" // base name
	SWEP.HoldType				= "pistol" // what is the hold type
	SWEP.Author				= "Siminov + Readme + V92" // author
	SWEP.Contact			= "" 
	SWEP.ViewModelFOV      		= 60 // how big the model is on screen 40-100
	SWEP.Purpose			= ""
	SWEP.Instructions			= ""

	SWEP.PrintName			= "V92's Weapon Base"			// 'Nice' Weapon name (Shown on HUD)	
	SWEP.Slot				= 0							// Slot in the weapon selection menu
	SWEP.SlotPos			= 1							// Position in the slot
	SWEP.DrawAmmo			= true						// Should draw the default HL2 ammo counter?
	SWEP.DrawCrosshair		= false 						// Should draw the default crosshair?
	SWEP.DrawWeaponInfoBox		= false						// Should draw the weapon info box?
	SWEP.BounceWeaponIcon   	= false						// Should the weapon icon bounce?
	SWEP.SwayScale			= 1.0							// The scale of the viewmodel sway
	SWEP.BobScale			= 1.0							// The scale of the viewmodel bob

	SWEP.RenderGroup 			= RENDERGROUP_OPAQUE

	// Override this in your SWEP to set the icon in the weapon selection
	if (file.Exists("materials/weapons/swep.vmt","GAME")) then
		SWEP.WepSelectIcon	= surface.GetTextureID("weapons/swep")
	end

	// This is the corner of the speech bubble
	if (file.Exists("materials/gui/speech_lid.vmt","GAME")) then
		SWEP.SpeechBubbleLid	= surface.GetTextureID("gui/speech_lid")
	end
	//name the ammo types here					
	language.Add("shotgunammo_ammo", "12 Gauge Shells")											
	language.Add("9mmammo_ammo", "9mm Ammo")


	//Kill Icons for the weapons, custom
	local Color_Icon = Color( 255, 80, 0, 255 ) 
	killicon.Add("weapon_sim_smg","killicons/sim_smg_killicon",Color_Icon)
	killicon.Add("weapon_sim_pistol","killicons/sim_pistol_killicon",Color_Icon)
	killicon.Add("weapon_sim_shotgun","killicons/sim_shotgun_killicon",Color_Icon)

	killicon.Add("env_explosion","HUD/killicons/default",Color_Icon)
	/*---------------------------------------------------------
	   Name: SWEP:SecondDrawHUD()
	---------------------------------------------------------*/
	function SWEP:SecondDrawHUD()
	end

	/*---------------------------------------------------------
	   Name: SWEP:DrawHUD()
	   Desc: You can draw to the HUD here. It will only draw when
		   the client has the weapon deployed.
	---------------------------------------------------------*/
	cl_crosshair_r 		= CreateClientConVar("v92_crosshair_r", 255, true, false)		// Red
	cl_crosshair_g 		= CreateClientConVar("v92_crosshair_g", 255, true, false)		// Green
	cl_crosshair_b 		= CreateClientConVar("v92_crosshair_b", 255, true, false)		// Blue
	cl_crosshair_a 		= CreateClientConVar("v92_crosshair_a", 200, true, false)		// Alpha
	cl_crosshair_l 		= CreateClientConVar("v92_crosshair_l", 30, true, false)		// Lenght
	cl_crosshair_t 		= CreateClientConVar("v92_crosshair_t", 1, true, false)		// Enable/Disable
	local AccuracyMul = CreateConVar ("VNT_SWep_Base_AccuracyMultiplier", "1", {FCVAR_REPLICATED, FCVAR_ARCHIVE})

	function SWEP:DrawHUD()

		self:SecondDrawHUD()
		self:DrawFuelHUD()
		//turn off crosshair when not in use
		if (self.Weapon:GetDTBool(1) or self.Weapon:GetDTBool(0)) or (cl_crosshair_t:GetBool() == false) or (LocalPlayer():InVehicle()) then return end

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
		
		local gap = ((self.Primary.Cone * 275 * AccuracyMul:GetFloat()) + (((self.Primary.Cone * 275 * AccuracyMul:GetFloat()) * (ScrH() / 720))) * (1 / self:CrosshairAccuracy())) * 0.75

		gap = math.Clamp(gap, 0, (ScrH() / 2) - 100)
		local length = cl_crosshair_l:GetInt()

		self:DrawCrosshairHUD(x - gap - length, y - 1, length, 3) 	// Left
		self:DrawCrosshairHUD(x + gap + 1, y - 1, length, 3) 		// Right
		self:DrawCrosshairHUD(x - 1, y - gap - length, 3, length) 	// Top 
		self:DrawCrosshairHUD(x - 1, y + gap + 1, 3, length) 		// Bottom
	end
	/*---------------------------------------------------------
	   Name: SWEP:DrawCrosshairHUD()
	---------------------------------------------------------*/
	function SWEP:DrawCrosshairHUD(x, y, width, height)

		surface.SetDrawColor(0, 0, 0, cl_crosshair_a:GetInt() / 2)
		surface.DrawRect(x, y, width, height)
		
		surface.SetDrawColor(cl_crosshair_r:GetInt(), cl_crosshair_g:GetInt(), cl_crosshair_b:GetInt(), cl_crosshair_a:GetInt())
		surface.DrawRect(x + 1, y + 1, width - 2, height - 2)
	end
	/*---------------------------------------------------------
	   Name: SWEP:DrawFuelHUD()
	---------------------------------------------------------*/
	// Based on the Condition SWEPs HUD made by SB Spy
	//not needed
	function SWEP:DrawFuelHUD()

	end


	/*---------------------------------------------------------
	   Name: SWEP:DrawWeaponSelection()
	   Desc: Checks the objects before any action is taken.
		   This is to make sure that the entities haven't been removed.
	---------------------------------------------------------*/
	function SWEP:DrawWeaponSelection(x, y, wide, tall, alpha)
		
		// Set us up the texture
		surface.SetDrawColor(255, 255, 255, alpha)
		surface.SetTexture(self.WepSelectIcon)
		
		// Lets get a sin wave to make it bounce
		local fsin = 0
		
		if (self.BounceWeaponIcon == true) then
			fsin = math.sin(CurTime() * 10) * 5
		end
		
		// Borders
		y = y + 10
		x = x + 10
		wide = wide - 20
		
		// Draw that mother
		surface.DrawTexturedRect(x + (fsin), y - (fsin), wide - fsin * 2, (wide / 2) + (fsin))
		
		// Draw weapon info box
		self:PrintWeaponInfo(x + wide + 20, y + tall * 0.95, alpha)
	end

	/*---------------------------------------------------------
	   Name: SWEP:PrintWeaponInfo()
	   Desc: Draws the weapon info box.
	---------------------------------------------------------*/
	function SWEP:PrintWeaponInfo(x, y, alpha)

		if (self.DrawWeaponInfoBox == false) then return end

		if (self.InfoMarkup == nil) then
			local str
			local title_color = "<color = 130, 0, 0, 255>"
			local text_color = "<color = 255, 255, 255, 200>"
			
			str = "<font=HudSelectionText>"
			if (self.Author != "") then str = str .. title_color .. "Author:</color>\t" .. text_color .. self.Author .. "</color>\n" end
			if (self.Contact != "") then str = str .. title_color .. "Contact:</color>\t" .. text_color .. self.Contact .. "</color>\n\n" end
			if (self.Purpose != "") then str = str .. title_color .. "Purpose:</color>\n" .. text_color .. self.Purpose .. "</color>\n\n" end
			if (self.Instructions!= "") then str = str .. title_color .. "Instructions:</color>\n" .. text_color .. self.Instructions .. "</color>\n" end
			str = str .. "</font>"
			
			self.InfoMarkup = markup.Parse(str, 250)
		end

		alpha = 180
		
		surface.SetDrawColor(0, 0, 0, alpha)
		surface.SetTexture(self.SpeechBubbleLid)
		
		surface.DrawTexturedRect(x, y - 69.5, 128, 64) 
		draw.RoundedBox(8, x - 5, y - 6, 260, self.InfoMarkup:GetHeight() + 18, Color(0, 0, 0, alpha))
		
		self.InfoMarkup:Draw(x + 5, y + 5, nil, nil, alpha)
	end

	/*---------------------------------------------------------
	   Name: SWEP:GetViewModelPosition()
	   Desc: Allows you to re-position the view model.
	---------------------------------------------------------*/
	local IRONSIGHT_TIME = 0.2

	function SWEP:GetViewModelPosition(pos, ang)
		//ironsight moving
		local bIron = self.Weapon:GetDTBool(1)	
		local Holster = self.Weapon:GetDTBool( 0 )
		local DashDelta = 0
		if ((self.Owner:KeyDown(IN_SPEED)) and (self.Owner:GetVelocity():Length() > self.Owner:GetWalkSpeed())) or self.NearWall then
			if (!self.DashStartTime) then
				self.DashStartTime = CurTime()
			end
			//how much movment when running
			self.SwayScale 	= 2.0
			self.BobScale 	= 2.0
			//movment time
			DashDelta = math.Clamp(((CurTime() - self.DashStartTime) / 0.15) ^ 1.2, 0, 1)
		else
			if (self.DashStartTime) then
				self.DashEndTime = CurTime()
			end
			//how much movement when in or out of ironsights
			if (bIron) then 
				self.SwayScale 	= 0.1
				self.BobScale 	= 0.1
			else
				self.SwayScale 	= 1.0
				self.BobScale 	= 1.0
			end
			//movment time
			if (self.DashEndTime) then
				DashDelta = math.Clamp(((CurTime() - self.DashEndTime) / 0.15) ^ 1.2, 0, 1)
				DashDelta = 1 - DashDelta
				if (DashDelta == 0) then self.DashEndTime = nil end
			end
		
			self.DashStartTime = nil
		end
		//now all the movment and stuff	
		if (DashDelta) then
			local Down = ang:Up() * -1
			local Right = ang:Right()
			local Forward = ang:Forward()
			
			local bUseVector = false
			
			if(!self.RunArmAngle.pitch) then
				bUseVector = true
			end
			
			if (bUseVector == true) then
				ang:RotateAroundAxis(ang:Right(), self.RunArmAngle.x * DashDelta)
				ang:RotateAroundAxis(ang:Up(), self.RunArmAngle.y * DashDelta)
				ang:RotateAroundAxis(ang:Forward(), self.RunArmAngle.z * DashDelta)
				
				pos = pos + self.RunArmOffset.x * ang:Right() * DashDelta 
				pos = pos + self.RunArmOffset.y * ang:Forward() * DashDelta 
				pos = pos + self.RunArmOffset.z * ang:Up() * DashDelta 
			else
				ang:RotateAroundAxis(Right, self.RunArmAngle.pitch * DashDelta)
				ang:RotateAroundAxis(Down, self.RunArmAngle.yaw * DashDelta)
				ang:RotateAroundAxis(Forward, self.RunArmAngle.roll * DashDelta)

				pos = pos + (Down * self.RunArmOffset.x + Forward * self.RunArmOffset.y + Right * self.RunArmOffset.z) * DashDelta			
			end
			
			if (self.DashEndTime) then
				return pos, ang
			end
		end
		
		if (bIron != self.bLastIron) then
			self.bLastIron = bIron 
			self.fIronTime = CurTime()
			
			if (bIron) then 
				self.SwayScale 	= 0.1
				self.BobScale 	= 0.1
			else
				self.SwayScale 	= 1.0
				self.BobScale 	= 1.0
			end
		
		end

		local fIronTime = self.fIronTime or 0
		
		if (!bIron && fIronTime < CurTime() - IRONSIGHT_TIME) then 
			return pos, ang
		end
		
		local Mul = 1.0
		
		if (fIronTime > CurTime() - IRONSIGHT_TIME) then
			Mul = math.Clamp((CurTime() - fIronTime) / IRONSIGHT_TIME, 0, 1)

			if (!bIron) then Mul = 1 - Mul end
		end
		
		if (self.IronSightsAng) then
			ang = ang * 1
			ang:RotateAroundAxis(ang:Right(), 	self.IronSightsAng.x * Mul)
			ang:RotateAroundAxis(ang:Up(), 	self.IronSightsAng.y * Mul)
			ang:RotateAroundAxis(ang:Forward(), self.IronSightsAng.z * Mul)
		end
		
		local Right 	= ang:Right()
		local Up 		= ang:Up()
		local Forward 	= ang:Forward()
		
		pos = pos + self.IronSightsPos.x * Right * Mul
		pos = pos + self.IronSightsPos.y * Forward * Mul
		pos = pos + self.IronSightsPos.z * Up * Mul
		
		return pos, ang
	end
	/*---------------------------------------------------------
	   Name: SWEP:AdjustMouseSensitivity()
	   Desc: Allows you to adjust the mouse sensitivity.
	---------------------------------------------------------*/
	function SWEP:AdjustMouseSensitivity()

		return nil
	end

	/*---------------------------------------------------------
	   Name: SWEP:GetTracerOrigin()
	   Desc: Allows you to override where the tracer comes from (in first person view)
		   returning anything but a vector indicates that you want the default action.
	---------------------------------------------------------*/
	function SWEP:GetTracerOrigin()

		if (self.Weapon:GetDTBool(1)) then
			local pos = self:GetOwner():EyePos() + self:GetOwner():EyeAngles():Up() * -4
			return pos
		end
	end

end

if SERVER then

	SWEP.Weight					= 5		// Decides whether we should switch from/to this
	SWEP.AutoSwitchTo				= false	// Auto switch to if we pick it up
	SWEP.AutoSwitchFrom			= false	// Auto switch from if you pick up a better weapon
	// old function for vehicle holster when entering
	function SIM_EnterVehicleHolster(ply,vehicle)
		if(vehicle) then
			local wep = ply:GetActiveWeapon()
			if IsValid(wep) && string.find(wep:GetClass(),"weapon_sim") then
				wep:SetDTBool(0,true)
			end
		end
	end
	hook.Add( "PlayerEnteredVehicle", "v92_EnterVehicleHolster_Swedishfishisgood", SIM_EnterVehicleHolster )

end

SWEP.ViewModelFlip		= false // viewmodel on left or right of screen
SWEP.ViewModel			= Model("models/weapons/v_pistol.mdl") // first person model
SWEP.WorldModel			= Model("models/weapons/w_pistol.mdl") // third person model
SWEP.AnimPrefix			= "python" // no idea
 
SWEP.Spawnable			= false // spawnable in weapons menu
SWEP.AdminSpawnable		= false // spawnable in weapons menu by admin

SWEP.Primary.Sound		= Sound("Weapon_AK47.Single") // sound script call, can be found under autorun
SWEP.Primary.Recoil		= 10 		 // usually .5 to 5 is good depending on weapon size
SWEP.Primary.Damage		= 10		// about 20 for pistols, 30 for AR's and 50 for sniper and BR
SWEP.Primary.NumShots		= 1  	// how many shots per time, use many for shotguns
SWEP.Primary.Cone			= 0 	// how big the cone is, 
SWEP.Primary.Delay 		= 0			// how long between shots it is 60/ROF (rate of fire)

SWEP.Primary.ClipSize		= 5					// Size of a clip
SWEP.Primary.DefaultClip	= 5					// Default number of bullets in a clip
SWEP.Primary.Automatic		= false				// Automatic/Semi Auto
SWEP.Primary.Ammo			= "none"

SWEP.Secondary.ClipSize		= -1					// Size of a clip
SWEP.Secondary.DefaultClip	= -1					// Default number of bullets in a clip
SWEP.Secondary.Automatic	= false				// Automatic/Semi Auto
SWEP.Secondary.Ammo		= "none"

SWEP.ActionDelay			= CurTime() //current time

// I added this function because some weapons like the Day of Defeat weapons need 1.2 or 1.5 seconds to deploy
SWEP.DeployDelay			= 2

SWEP.ShellEffect			= "v92_shelleject" //shell effects, can be found under lua/effects
SWEP.ShellDelay			= 0

// Is it a pistol, a rifle, a shotgun or a sniper? Choose only one of them or you'll fucked up everything. BITCH!
SWEP.Pistol				= false
SWEP.Rifle				= false
SWEP.Shotgun			= false
SWEP.Sniper				= false

SWEP.IronSightsPos 		= Vector (0, 0, 0) 
SWEP.IronSightsAng 		= Vector (0, 0, 0) //position of ironsights
SWEP.RunArmOffset 		= Vector (0, -0, 1.5)
SWEP.RunArmAngle 		= Vector (-35, -3, 0) //position of run angles 

// Burst options
SWEP.Burst				= false // burst selection
SWEP.BurstShots			= 3 
SWEP.BurstDelay			= 0.05
SWEP.BurstCounter			= 0
SWEP.BurstTimer			= 0

// Custom mode options (Do not put a burst mode and a custom mode at the same time, it will not work)
SWEP.Type				= 1 					// 1 = Automatic/Semi-Automatic mode, 2 = Suppressor mode, 3 = Burst fire mode
SWEP.Mode				= false //on or off

SWEP.data 				= {}
SWEP.data.NormalMsg		= "Switched to automatic." //printed message to display
SWEP.data.ModeMsg			= "Switched to semi-automatic." // printed message to display
SWEP.data.Delay			= 1 				// You need to wait 0.5 second after you change the fire mode
SWEP.data.Cone			= 1.0		//multiplies cone
SWEP.data.Damage			= 1.0   //multiplies damage
SWEP.data.Recoil			= 1.0   // multiplies recoil
SWEP.data.Automatic		= false     //auto or not to auto

// Constant accuracy means that your crosshair will not change if you're running, shooting or walking
SWEP.ConstantAccuracy		= false

// I don't think it's hard to understand this
SWEP.Penetration			= true
SWEP.Ricochet			= false

SWEP.Tracer				= 0					// 0 = Normal Tracer, 1 = Ar2 Tracer, 2 = Airboat Gun Tracer, 3 = Normal Tracer + Sparks Impact

SWEP.IdleDelay			= 0
SWEP.IdleApply			= false
SWEP.AllowIdleAnimation		= false	             //set to false if idle is interfearing with the fire animation
SWEP.AllowPlaybackRate		= true    

SWEP.BoltActionSniper		= false				// Use this value if you want to remove the scope view after you shoot
SWEP.ScopeAfterShoot		= false				// Do not try to change this value

SWEP.IronSightZoom 		= 1.5                
SWEP.ScopeZooms			= {10}
SWEP.ScopeScale 			= 0.4
SWEP.FirstDraw = false
SWEP.ShotgunReloading		= false
SWEP.ShotgunFinish		= 0.5
SWEP.ShotgunBeginReload		= 0.3
SWEP.UseHands = true
SWEP.Speed = 0.5 // Slow down multiplier for ironsights
SWEP.Mass = 0.9  // Slow down multiplier for weight of swep

SWEP.data.JamL		= "Weapon Magazine Jam" //printed messages
SWEP.data.JamB		= "Weapon Function Jam"

SWEP.WeaponName = ""  //name of weapon
SWEP.WeaponEntName = "" //name of entity that goes with weapon
/*---------------------------------------------------------
   Name: SWEP:Initialize()
   Desc: Called when the weapon is first loaded.
---------------------------------------------------------*/
function SWEP:Initialize()
	
	self:SetWeaponHoldType(self.HoldType)
	if (SERVER) then
		self.Reloadaftershoot = 0 
	end
end

/*---------------------------------------------------------
   Name: SWEP:Precache()
   Desc: Use this function to precache stuff.
---------------------------------------------------------*/
function SWEP:Precache()
	//pecache sounds and other stuff
	util.PrecacheSound("weapons/universal/weaponempty.wav")
end

/*---------------------------------------------------------
   Name: ENT:SetupDataTables()
   Desc: Setup the data tables.
---------------------------------------------------------*/
function SWEP:SetupDataTables()  
	//different varaibles to be set up in a table, each do different things
	self:DTVar("Bool", 0, "Holsted")
	self:DTVar("Bool", 1, "Ironsights")
	self:DTVar("Bool", 2, "Scope")
	self:DTVar("Bool", 3, "Mode")
end 

/*---------------------------------------------------------
   Name: SWEP:ResetSpeed()
   Desc: Reset all varibles.
---------------------------------------------------------*/
function SWEP:ResetSpeed()
	//speed reset when going in and out of activities
	self.Owner:SetRunSpeed(Runspeed:GetFloat())
	self.Owner:SetWalkSpeed(Walkspeed:GetFloat())
end

/*---------------------------------------------------------
   Name: SWEP:IdleAnimation()
   Desc: Are you seriously too stupid to understand the function by yourself?
---------------------------------------------------------*/
function SWEP:IdleAnimation(time)
	self.IdleApply = true
	self.ActionDelay = CurTime() + time
	self.IdleDelay = CurTime() + time
end

/*---------------------------------------------------------
   Name: SWEP:PrimaryAttack()
   Desc: +attack1 has been pressed.
---------------------------------------------------------*/
function SWEP:PrimaryAttack()

	//check to see if jammed, running, reloading
	if (self.Owner:KeyDown(IN_SPEED) or self:GetNWBool("LittleJammed") or self:GetNWBool("BigJammed")) then return end 
	if (not self.Owner:KeyDown(IN_RELOAD) and self.Owner:KeyDown(IN_USE)) then
		//if keying down E
		if (SERVER) then
			bHolsted = !self.Weapon:GetDTBool(0)
			self:SetHolsted(bHolsted)
		end
		// holster and push button after 1 second
		self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		
		self:SetIronsights(false)

		return
	end
	// if the weapon cannot shoot then go to end
	if (not self:CanPrimaryAttack()or self:GetNWBool("LittleJammed") or self:GetNWBool("BigJammed")) then return end
	//fire times
	self.Reloadaftershoot = CurTime() + self.Primary.Delay
	self.ActionDelay = (CurTime() + self.Primary.Delay + 0.05)
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Primary.Delay)
	self.Weapon:SetNextSecondaryFire(CurTime() + self.Primary.Delay)

	// If the burst mode is activated, it's going to shoot the three bullets (or more if you're dumb and put 4 or 5 bullets for your burst mode)
	if self.Weapon:GetDTBool(3) and self.Type == 3 then
		self.BurstTimer 	= CurTime()
		self.BurstCounter = self.BurstShots - 1
		self.Weapon:SetNextPrimaryFire(CurTime() + 0.5)
	end
	// primary sound
	self.Weapon:EmitSound(self.Primary.Sound)
	// take a single bullet
	self:TakePrimaryAmmo(1)
	//go to shoot bullet function
	self:ShootBulletInformation()
	//the chance of jamming weapon 1 to 1000
	local jamchance = math.random(1,1000) // 1000
	//if the number lands between 995 and 1000
	if Jamming:GetBool() then
		if self.Weapon:GetDTBool(0) or self.Weapon:Clip1()  <= 1 then return end
		//mag jam
		if jamchance > 995 then
			self:SetNWBool("LittleJammed",true)
			self:Jammed()
		end
		// full jam
		if jamchance < 1 then
			self:SetNWBool("BigJammed",true)
			self:Jammed()
		end
	end
end

/*---------------------------------------------------------
   Name: SWEP:Jammed()
---------------------------------------------------------*/
//the jammed function
function SWEP:Jammed()
	if not IsValid(self.Owner) or not IsValid(self.Weapon) then return end
	if (not IsFirstTimePredicted() or not self.Owner:Alive())then return end
	// dont run if dead
	if self:GetNWBool("LittleJammed") then
		if (SERVER) then
			self.Owner:PrintMessage(HUD_PRINTTALK, self.data.JamL)
			//print that it is jammed
		end
		self:SetIronsights(false)
		timer.Simple(self.Owner:GetViewModel():SequenceDuration(), function()
		if not IsValid(self.Owner) or not IsValid(self.Weapon) then return end
		if (not IsFirstTimePredicted() or not self.Owner:Alive())then return end
		// dont run if dead
		//Change to animation that you want
		self.Weapon:SendWeaponAnim(ACT_VM_HOLSTER)
		if self.Pistol then
			self.Weapon:EmitSound("Jam.Short.Pistol")
		else
			self.Weapon:EmitSound("Jam.Short.Rifle")
		end
		timer.Simple(self.Owner:GetViewModel():SequenceDuration() + 2, function()
		if not IsValid(self.Owner) or not IsValid(self.Weapon) then return end
		if (not IsFirstTimePredicted() or not self.Owner:Alive())then return end
		//draw the weapon again
		self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
		timer.Simple(self.Owner:GetViewModel():SequenceDuration(), function()
		if not IsValid(self.Owner) or not IsValid(self.Weapon) then return end
		if (not IsFirstTimePredicted() or not self.Owner:Alive())then return end
		self:TakePrimaryAmmo(1)
		self:SetNWBool("LittleJammed",false)
		end)
		end)
		end)	
	end
	//do the same for big jam
	if self:GetNWBool("BigJammed") then
		if (SERVER) then
			self.Owner:PrintMessage(HUD_PRINTTALK, self.data.JamB)
		end
		self:SetIronsights(false)
		timer.Simple(self.Owner:GetViewModel():SequenceDuration(), function()
		if not IsValid(self.Owner) or not IsValid(self.Weapon) then return end
		if (not IsFirstTimePredicted() or not self.Owner:Alive())then return end
		self.Weapon:SendWeaponAnim(ACT_VM_HOLSTER)
		if self.Pistol then
			self.Weapon:EmitSound("Jam.Long.Pistol")
		else
			self.Weapon:EmitSound("Jam.Long.Rifle")
		end
		timer.Simple(self.Owner:GetViewModel():SequenceDuration() + 2, function()
		if not IsValid(self.Owner) or not IsValid(self.Weapon) then return end
		if (not IsFirstTimePredicted() or not self.Owner:Alive())then return end
		self.Weapon:SendWeaponAnim(ACT_FIRE_END)
		self:TakePrimaryAmmo(1)
		timer.Simple(self.Owner:GetViewModel():SequenceDuration(), function()
		if not IsValid(self.Owner) or not IsValid(self.Weapon) then return end
		if (not IsFirstTimePredicted() or not self.Owner:Alive())then return end
		self:SetNWBool("BigJammed",false)
		end)
		end)
		end)
	end
end

/*---------------------------------------------------------
   Name: SWEP:SecondaryAttack()
   Desc: +attack2 has been pressed.
---------------------------------------------------------*/
function SWEP:SecondaryAttack()

	if not IsFirstTimePredicted() then return end
	// if you are not doing anything then...
	if self.Weapon:GetDTBool(0) or self.Owner:KeyDown(IN_SPEED) or self:GetNWBool("LittleJammed") or self:GetNWBool("BigJammed") then return end
	if (self.Owner:KeyDown(IN_USE) and (self.Mode)) then // Mode
		bMode = !self.Weapon:GetDTBool(3)
		self:SetMode(bMode)
		self:SetIronsights(false)
		// go into ironsights then allow key press after a delay
		self.Weapon:SetNextPrimaryFire(CurTime() + self.data.Delay)
		self.Weapon:SetNextSecondaryFire(CurTime() + self.data.Delay)

		return
	end

	if (!self.IronSightsPos) or (self.Owner:KeyDown(IN_SPEED) or self.Weapon:GetDTBool(0) or self:GetNWBool("LittleJammed") or self:GetNWBool("BigJammed")) then return end
	
	// Not pressing Use + Right click? Ironsights
	bIronsights = !self.Weapon:GetDTBool(1)
	self:SetIronsights(bIronsights)	
	self.Weapon:SetNextPrimaryFire(CurTime() + 0.2)
	self.Weapon:SetNextSecondaryFire(CurTime() + 0.2)
end
/*---------------------------------------------------------
   Name: SWEP:SetHolsted()
---------------------------------------------------------*/
function SWEP:SetHolsted(b)
	//holstering animations for empty and non empty
	if (self.Owner) then
		if (b) then
			if (self.Weapon:Clip1() == 0) then
				//self.Weapon:SendWeaponAnim(ACT_VM_PULLBACK_HIGH) // if there is an empty animation for the gun
				self.Weapon:SendWeaponAnim(ACT_VM_HOLSTER)
			else
				self.Weapon:SendWeaponAnim(ACT_VM_HOLSTER)
			end		
		else
			if (self.Weapon:Clip1() == 0) then
			
				//self.Weapon:SendWeaponAnim(ACT_VM_DRAW_EMPTY) // if there is an empty animation for the gun
				self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
			else
				self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
			end
		end
	end

	if (self.Weapon) then
		self.Weapon:SetDTBool(0, b)
	end
end

/*---------------------------------------------------------
   Name: SWEP:SetIronsights()
---------------------------------------------------------*/
function SWEP:SetIronsights(b)
	//ironsights
	if (self.Owner) then
		if (b) then
			if (SERVER) then
				self.Owner:SetFOV(65, 0.2)
			end
			//if going back to idle then
			if self.AllowIdleAnimation then
		
				if (self.Weapon:Clip1() == 0) then
				//	self.Weapon:SendWeaponAnim(ACT_VM_IDLE_EMPTY) // if there is an empty animation for the gun
				//else
					self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
				end
				
				self.Owner:GetViewModel():SetPlaybackRate(0)
			end
			// if weightmod is on
			if WeightMod:GetBool() then
				self.Weapon:EmitSound("Universai.IronIn")
				self.Owner:SetRunSpeed(Walkspeed:GetFloat()*self.Speed*self.Mass)
				self.Owner:SetWalkSpeed(Walkspeed:GetFloat()*self.Speed*self.Mass)
			else
				//if it is off
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
//the mode switching for 1-4 I did disable 3 though because I never use supressors so it is used for deploying
	if (self.Owner) then
		if (b) then
			if self.Type == 1 then
				self.Primary.Automatic = self.data.Automatic
				self.Weapon:EmitSound("Weapof_Misc.Switch")
			elseif self.Type == 2 then
				self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
				local Animation = self.Owner:GetViewModel()
				Animation:SetSequence(Animation:LookupSequence("sup_on"))
				
				if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
					self:IdleAnimation(self.Owner:GetViewModel():SequenceDuration())
				end
			elseif self.Type == 3 then
				self.Weapon:EmitSound("Weapof_Misc.Switch")
			end

			if (SERVER) then
				self.Owner:PrintMessage(HUD_PRINTTALK, self.data.ModeMsg)
			end
		else
			if self.Type == 1 then
				self.Primary.Automatic = !self.data.Automatic
				self.Weapon:EmitSound("Weapof_Misc.Switch")
			elseif self.Type == 2 then
				self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
				local Animation = self.Owner:GetViewModel()
				Animation:SetSequence(Animation:LookupSequence("sup_off"))

				if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
					self:IdleAnimation(self.Owner:GetViewModel():SequenceDuration())
				end
			elseif self.Type == 3 then
				// Nothing here for the burst fire mode
				self.Weapon:EmitSound("Weapof_Misc.Switch")
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
   Name: SWEP:Throw()
---------------------------------------------------------*/
function SWEP:Throw()
		// the throwing code throws it like a knife but with low force and damage
		local knife = ents.Create(self.WeaponEntName)
		knife:SetAngles(self.Owner:EyeAngles())
		local pos = self.Owner:GetShootPos()
		pos = pos + self.Owner:GetForward() * 30
		pos = pos + self.Owner:GetRight() * 0
		pos = pos + self.Owner:GetUp() * -40
		knife:SetPos(pos)
								
		knife:Spawn()
		knife:Activate()
						
		local phys = knife:GetPhysicsObject()
		phys:SetVelocity(self.Owner:GetAimVector() * 50)
		phys:AddAngleVelocity(Vector(0, 0, 0))
		//remove the weapon
		self.Owner:StripWeapon(self.WeaponName)
		if (SERVER) then
			RunConsoleCommand("lastinv")
		end
end		
	
/*---------------------------------------------------------
   Name: SWEP:Reload()
   Desc: Reload is being pressed.
---------------------------------------------------------*/
function SWEP:Reload()
	//if you press the e key while holstered with R then it throws the weapon
	--[[if self.Owner:KeyDown(IN_USE) and self.Weapon:GetDTBool(0) then
		self.Weapon:SetNextPrimaryFire(CurTime() + 10)
		self.Weapon:SetNextSecondaryFire(CurTime() + 10)
		self.ActionDelay = (CurTime() + 10)
		self:SetIronsights(false)
		self.Owner:GiveAmmo( self:Clip1(), self:GetPrimaryAmmoType() )
		//throw function 
		self:Throw()
	end
	--]]
	
	// When the weapon is already doing an animation, just return end because we don't want to interrupt it also make sure it can reload
	if (self.ActionDelay > CurTime()) or self.Owner:KeyDown(IN_SPEED) then return end 
	if self.Weapon:GetDTBool(0) or (self:GetNWBool("BigJammed") or self:GetNWBool("LittleJammed")) or (self:Clip1() == (self.Primary.ClipSize + 1)) then return end
		
	self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
	self.Weapon:SetNextSecondaryFire(CurTime() + self.DeployDelay + 1.0)
	self.ActionDelay = (CurTime())
	
	if (SERVER) then
		if ( self.Reloadaftershoot > CurTime() ) then return end 
	end

	// Need to call the default reload before the real reload animation
	self.Weapon:DefaultReload(ACT_VM_RELOAD)
	//now go to the animation
	if (self.Weapon:Clip1() < self.Primary.ClipSize) and (self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) then
		self:SetIronsights(false)
		self:ReloadAnimation()
	end
end
/*---------------------------------------------------------
   Name: SWEP:ReloadAnimation()
---------------------------------------------------------*/
function SWEP:ReloadAnimation()
	// different animations we can use for it

	if (self.Weapon:Clip1() == 0) then
		//self.Weapon:DefaultReload(ACT_VM_RELOAD_EMPTY) //if there is an empty animation for the gun
		self.Weapon:DefaultReload(ACT_VM_RELOAD)
	else
		self.Weapon:DefaultReload(ACT_VM_RELOAD)
		//add a bullet to the chamber since there is a round already loaded in
		timer.Simple(self.Owner:GetViewModel():SequenceDuration() + 0.05, function()
			if (not IsValid(self.Owner) or not IsValid(self.Weapon) or not self.Owner:Alive() or (self.Owner:GetAmmoCount(self.Primary.Ammo) < 1) )then return end
			self.Owner:RemoveAmmo( 1, self:GetPrimaryAmmoType() )
			self:SetClip1( self:Clip1() + 1 )
		end)
	end

	if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
		self:IdleAnimation(self.Owner:GetViewModel():SequenceDuration())
	end
end

/*---------------------------------------------------------
   Name: SWEP:SecondThink()
   Desc: Called every frame. Use this function if you don't 
	   want to copy/past the think function everytime you 
	   create a new weapon with this base...
---------------------------------------------------------*/
function SWEP:SecondThink()
end

/*---------------------------------------------------------
   Name: SWEP:Think()
   Desc: Called every frame.
---------------------------------------------------------*/
function SWEP:Think()

	self:SecondThink()
	// I should have kept this simple to keep the weapons optimized
	if self.Weapon:Clip1() > 0 and self.IdleDelay < CurTime() and self.IdleApply then
		local WeaponModel = self.Weapon:GetOwner():GetActiveWeapon():GetClass()
		//idle
		if self.Owner and self.Weapon:GetOwner():GetActiveWeapon():GetClass() == WeaponModel and self.Owner:Alive() then
			if (self.Weapon:Clip1() == 0) then
				//self.Weapon:SendWeaponAnim(ACT_VM_IDLE_EMPTY) //if there is an empty animation for the gun
				self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
			else
				self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
			end
	
			if self.AllowPlaybackRate and not self.Weapon:GetDTBool(1) then
				self.Owner:GetViewModel():SetPlaybackRate(1)
			else
				self.Owner:GetViewModel():SetPlaybackRate(0)
			end		
		end
	//apply idle or not
		self.IdleApply = false
	elseif self.Weapon:Clip1() == 0 then
		self.IdleApply = false
	end
	// used for the near wall feature
	local Tr = self.Owner:GetEyeTrace()
		if Tr.Entity:IsValid() and (Tr.Entity:IsNPC() or Tr.Entity:IsPlayer()) and self.Pistol then
		self.DontNearWall = true
	else
		self.DontNearWall = false
	end
	// if you are near a wall then holster the weapon
	if Tr.Hit and Tr.HitPos:Distance(self.Owner:GetShootPos()) < 45 and !self.NearWall and !self.DontNearWall then
		self.NearWall = true
		if !self.Weapon:GetDTBool(0) and !self.Owner:KeyDown(IN_SPEED) and self.Weapon:GetDTBool(1) then
		self:SetIronsights(false)
		end
	//when away unholster it
	elseif Tr.HitPos:Distance(self.Owner:GetShootPos()) > 46 and self.NearWall then
		timer.Simple(0.2, function()
		self.NearWall = false
		end)
	end
	//undo ironsights when running
	if self.Weapon:GetDTBool(1) and self.Owner:KeyDown(IN_SPEED) then
		self:SetIronsights(false)
	end
	
	// If you're running or if your weapon is holsted, the third person animation is going to change
	if self.Owner:KeyDown(IN_SPEED) or self.Weapon:GetDTBool(0) then
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
	// if you push e then change the animation
	if self.Owner:KeyDown(IN_SPEED) or self.Weapon:GetDTBool(0) then return end
		if (self.Owner:KeyDown(IN_USE) and self.Rifle and (self.Type == 1 or self.Type == 3)) then
			self:SetWeaponHoldType("fist")	
		else
			self:SetWeaponHoldType(self.HoldType)
		end	

	if self.Owner:KeyDown(IN_WALK) and self.Owner:KeyDown(IN_USE) then
		if  (self:Clip2() > 0 and self.HasGL) and not (self:Clip1() > 0 and self.HasRkt) then
			self:TakeSecondaryAmmo(1)
			self:SendWeaponAnim(ACT_VM_SECONDARYATTACK)
			self.Weapon:SetNextSecondaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			self.Weapon:EmitSound(self.Primary.Grenade)
			self:FireGrenade()
		elseif  not (self:Clip2() > 0 and self.HasGL) and (self:Clip1() > 0 and self.HasRkt) then
			self:TakePrimaryAmmo(1)
			self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
			self.Weapon:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration())
			self.Weapon:EmitSound(self.Primary.Sound)
			self:FireRocket()
		end
	end
	
	// Burst fire mode
	if self.Weapon:GetDTBool(3) and self.Type == 3 then
		if self.BurstTimer + self.BurstDelay < CurTime() then
			if self.BurstCounter > 0 then
				self.BurstCounter = self.BurstCounter - 1
				self.BurstTimer = CurTime()
				
				if self:CanPrimaryAttack() then
					self.Weapon:EmitSound(self.Primary.Sound)
					self:ShootBulletInformation()
					self:TakePrimaryAmmo(1)
				end
			end
		end
	end

	self:NextThink(CurTime())
end

function SWEP:FireRocket()
	if SERVER then
		local Rocket = ents.Create( self.RktEnt )
			Rocket:SetPos(self.Owner:GetShootPos() + self.Owner:EyeAngles():Right()*0)
			Rocket:SetAngles(self.Owner:EyeAngles())
			Rocket:SetOwner(self.Owner)
			Rocket:Spawn()
			Rocket:Activate()
			Rocket:SetVelocity(self.Owner:EyeAngles():Forward()*2000 + Vector(0,0,10))
	end
end

function SWEP:FireGrenade()
	if SERVER then
		local Rocket = ents.Create("v92proj_40x46mm")
			Rocket:SetPos(self.Owner:GetShootPos() + self.Owner:EyeAngles():Right()*0)
			Rocket:SetAngles(self.Owner:EyeAngles())
			Rocket:SetOwner(self.Owner)
			Rocket:Spawn()
			Rocket:Activate()
			Rocket:SetVelocity(self.Owner:EyeAngles():Forward()*1250 + Vector(0,0,10))
	end
end

/*---------------------------------------------------------
   Name: SWEP:Holster()
   Desc: Weapon wants to holster.
	   Return true to allow the weapon to holster.
---------------------------------------------------------*/
function SWEP:Holster()
	//reset the speed modifier and put the weapon away only if in holster on in vehicle
	self:ResetSpeed()
	if ManualHolster:GetBool() then
		if self.Weapon:GetDTBool(0) or self.Owner:InVehicle() then
			return true
		end
	else	
		return true
	end
end

/*---------------------------------------------------------
   Name: SWEP:Deploy()
---------------------------------------------------------*/
function SWEP:Deploy()

	if self.Weapon:GetDTBool(0) then
		bHolsted = !self.Weapon:GetDTBool(0)
		self:SetHolsted(bHolsted)
	end	
	// do the animation
	self:DeployAnimation()
	
	if (IsValid(self.Owner) and self.Owner:GetViewModel()) then
		self:IdleAnimation(self.Owner:GetViewModel():SequenceDuration())
	end
	// delays
	self.Weapon:SetNextPrimaryFire(CurTime() + self.DeployDelay + 0.05)
	self.Weapon:SetNextSecondaryFire(CurTime() + self.DeployDelay + 0.05)
	self.ActionDelay = (CurTime() + self.DeployDelay + 0.05)

	self:SetIronsights(false)
	
	if self.Weapon:GetDTBool(0) then
		return true
	end
end

/*---------------------------------------------------------
   Name: SWEP:DeployAnimation()
---------------------------------------------------------*/
function SWEP:DeployAnimation()
	// animations for above
	if not self.FirstDraw and self.Weapon:Clip1() > 0 then
		self.FirstDraw = true
	end
	// if there is first draw, the reload the weapon with that animation
	if not self.FirstDraw and (self.Owner:GetAmmoCount(self.Primary.Ammo) > 0) and FirstDraw:GetBool() then
		self:Reload()
		self.Weapon:SendWeaponAnim(ACT_FIRE_END)
		self.FirstDraw = true
	else	
		if (self.Weapon:Clip1() == 0) then
			//self.Weapon:SendWeaponAnim(ACT_VM_DRAW_EMPTY) //if there is an empty animation for the gun
			self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
		else
			self.Weapon:SendWeaponAnim(ACT_VM_DRAW)
		end
	end
end

/*---------------------------------------------------------
   Name: SWEP:ShootBulletInformation()
   Desc: This function add the damage, the recoil, the number of shots and the cone on the bullet.
---------------------------------------------------------*/
function SWEP:ShootBulletInformation()
	// this is where the bullets are modified
	local CurrentDamage
	local CurrentRecoil
	local CurrentCone

	local LastAccuracy 	= self.LastAccuracy or 0
	local Accuracy 		= 1.0 // accuracy of bullet
	local LastShoot 		= self.Weapon:GetNetworkedFloat("LastShootTime", 0)
	local Speed 		= self.Owner:GetVelocity():Length()

	local SpeedClamp = math.Clamp(math.abs(Speed / 705), 0, 1) // bullet speed

	
	// Player is not on the ground
	if not self.Owner:IsOnGround() then
		// Player is aiming
		if (self.Weapon:GetDTBool(1) or self.Weapon:GetDTBool(2)) then
			CurrentDamage = self.Primary.Damage * DamageMul:GetFloat()
			CurrentRecoil = self.Primary.Recoil * RecoilMul:GetFloat()
			CurrentCone = self.Primary.Cone * AccuracyMul:GetFloat() * (((1 - SpeedClamp) + 0.1) / 2) 
			self:ShootBullet(CurrentDamage, CurrentRecoil, self.Primary.NumShots, CurrentCone)
			self.Owner:ViewPunch(Angle(math.Rand(-0.75, -1.0) * (CurrentRecoil), math.Rand(-1, 1) * (CurrentRecoil), 0))
		// Player is not aiming
		else
			CurrentDamage = self.Primary.Damage * DamageMul:GetFloat()
			CurrentRecoil = self.Primary.Recoil * RecoilMul:GetFloat()
			CurrentCone = self.Primary.Cone * AccuracyMul:GetFloat() * 3 * (((1 - SpeedClamp) + 0.1) / 2) 
			self:ShootBullet(CurrentDamage, CurrentRecoil * 2.5, self.Primary.NumShots, CurrentCone)
			self.Owner:ViewPunch(Angle(math.Rand(-0.75, -1.0) * (CurrentRecoil * 2.5), math.Rand(-1, 1) * (CurrentRecoil * 2.5), 0))
		end
	// Player is moving
	
	elseif self.Owner:KeyDown (bit.bor( IN_FORWARD, IN_BACK, IN_MOVELEFT, IN_MOVERIGHT )) then
		// Player is aiming
		if (self.Weapon:GetDTBool(1) or self.Weapon:GetDTBool(2)) then
			CurrentDamage = self.Primary.Damage * DamageMul:GetFloat()
			CurrentRecoil = self.Primary.Recoil * RecoilMul:GetFloat()
			CurrentCone = self.Primary.Cone * AccuracyMul:GetFloat() 			
			self:ShootBullet(CurrentDamage, CurrentRecoil / 2, self.Primary.NumShots, CurrentCone)
			self.Owner:ViewPunch(Angle(math.Rand(-0.75, -1.0) * (CurrentRecoil / 1.5), math.Rand(-1, 1) * (CurrentRecoil / 1.5), 0))
		// Player is not aiming
		elseif (Speed > 10) then	
			CurrentDamage = self.Primary.Damage * DamageMul:GetFloat()
			CurrentRecoil = self.Primary.Recoil * RecoilMul:GetFloat()
			CurrentCone = self.Primary.Cone * 2 * AccuracyMul:GetFloat() 
			self:ShootBullet(CurrentDamage, CurrentRecoil * 1.5, self.Primary.NumShots, CurrentCone)
			self.Owner:ViewPunch(Angle(math.Rand(-0.75, -1.0) * (CurrentRecoil * 1.5), math.Rand(-1, 1) * (CurrentRecoil * 1.5), 0))
		else
			CurrentDamage = self.Primary.Damage * DamageMul:GetFloat()
			CurrentRecoil = self.Primary.Recoil * RecoilMul:GetFloat()
			CurrentCone = self.Primary.Cone * 1.5 * AccuracyMul:GetFloat() 
			self:ShootBullet(CurrentDamage, CurrentRecoil, self.Primary.NumShots, CurrentCone)
			self.Owner:ViewPunch(Angle(math.Rand(-0.75, -1.0) * CurrentRecoil, math.Rand(-1, 1) * CurrentRecoil, 0))
		end
	// Player is crouching
	elseif self.Owner:Crouching() then
		// Player is aiming
		if (self.Weapon:GetDTBool(1) or self.Weapon:GetDTBool(2)) then
			CurrentDamage = self.Primary.Damage * DamageMul:GetFloat()
			CurrentRecoil = self.Primary.Recoil * RecoilMul:GetFloat()
			CurrentCone = self.Primary.Cone * AccuracyMul:GetFloat() 
			self:ShootBullet(CurrentDamage, 0, self.Primary.NumShots, CurrentCone)
			self.Owner:ViewPunch(Angle(math.Rand(-0.75, -1.0) * (CurrentRecoil / 3), math.Rand(-1, 1) * (CurrentRecoil / 3), 0))
		// Player is not aiming
		else
			CurrentDamage = self.Primary.Damage * DamageMul:GetFloat()
			CurrentRecoil = self.Primary.Recoil * RecoilMul:GetFloat()
			CurrentCone = self.Primary.Cone * 1.5 * AccuracyMul:GetFloat() 
			self:ShootBullet(CurrentDamage, CurrentRecoil / 2, self.Primary.NumShots, CurrentCone)
			self.Owner:ViewPunch(Angle(math.Rand(-0.75, -1.0) * (CurrentRecoil / 2), math.Rand(-1, 1) * (CurrentRecoil / 2), 0))
		end
	// Player is doing nothing
	else
		// Player is aiming
		if (self.Weapon:GetDTBool(1) or self.Weapon:GetDTBool(2)) then
			CurrentDamage = self.Primary.Damage * DamageMul:GetFloat()
			CurrentRecoil = self.Primary.Recoil * RecoilMul:GetFloat()
			CurrentCone = self.Primary.Cone * AccuracyMul:GetFloat() 
			self:ShootBullet(CurrentDamage, CurrentRecoil / 6, self.Primary.NumShots, CurrentCone)
			self.Owner:ViewPunch(Angle(math.Rand(-0.75, -1.0) * (CurrentRecoil / 2), math.Rand(-1, 1) * (CurrentRecoil / 2), 0))
		// Player is not aiming
		else
			CurrentDamage = self.Primary.Damage * DamageMul:GetFloat()
			CurrentRecoil = self.Primary.Recoil * RecoilMul:GetFloat()
			CurrentCone = self.Primary.Cone * 2 * AccuracyMul:GetFloat() 
			self:ShootBullet(CurrentDamage, CurrentRecoil, self.Primary.NumShots, CurrentCone)
			self.Owner:ViewPunch(Angle(math.Rand(-0.75, -1.0) * CurrentRecoil, math.Rand(-1, 1) * CurrentRecoil, 0))
		end
	end
end

/*---------------------------------------------------------
   Name: SWEP:ShootEffects()
   Desc: A convenience function for shoot effects.
---------------------------------------------------------*/
function SWEP:ShootEffects()
	self:ShootAnimation()
	self.Owner:MuzzleFlash()
	self.Owner:SetAnimation(PLAYER_ATTACK1)
	// 3rd person animation above
	//muzzleflash below
	local effectdata = EffectData()
		effectdata:SetOrigin(self.Owner:GetShootPos())
		effectdata:SetEntity(self.Weapon)
		effectdata:SetStart(self.Owner:GetShootPos())
		effectdata:SetNormal(self.Owner:GetAimVector())
		effectdata:SetAttachment(1)
		//weapon attachment 1 is the muzzle
	if ((game.SinglePlayer() and SERVER) or CLIENT) then
	if EnableFlash:GetBool() then
	timer.Simple(0, function()
		if not IsValid(self.Owner) then return end
		if (not IsFirstTimePredicted() or not self.Owner:Alive())then return end
		if (self.Shotgun) then
			util.Effect("fx_smoke_shotgun_ins", effectdata)
		else
			util.Effect("fx_smoke_rifle_ins", effectdata)
		end
	end)
	end
	
	// Shell eject
	
	if EnableShell:GetBool() then
	timer.Simple(self.ShellDelay, function()
		if not IsValid(self.Owner) then return end
		if (not IsFirstTimePredicted() or not self.Owner:Alive())then return end
		local effectdata = EffectData()
			effectdata:SetEntity(self.Weapon)
			effectdata:SetNormal(self.Owner:GetAimVector())
			effectdata:SetAttachment(2)
			//attachment 2 is the side of the gun
		util.Effect(self.ShellEffect, effectdata)
	end)
	end
	
	if ((game.SinglePlayer() and SERVER) or CLIENT) then
		self.Weapon:SetNetworkedFloat("LastShootTime", CurTime())
	end
	end
end

/*---------------------------------------------------------
   Name: SWEP:ShootAnimation()
---------------------------------------------------------*/
function SWEP:ShootAnimation()
	// shoot animation for this code
	if (self.Weapon:Clip1() <= 0) then
		//self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK_EMPTY) // If there is an empty animaton for the gun
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
		self.Weapon:SetNextPrimaryFire(CurTime() + 0.5)
	else
		self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
	end
end

/*---------------------------------------------------------
   Name: SWEP:CrosshairAccuracy()
   Desc: Crosshair informations.
---------------------------------------------------------*/
SWEP.SprayTime 		= 0.1
SWEP.SprayAccuracy 	= 0.2

function SWEP:CrosshairAccuracy()
	
	//never bothtered to figure this out

	local LastAccuracy 	= self.LastAccuracy or 0
	local Accuracy 		= 1.0
	local LastShoot 		= self.Weapon:GetNetworkedFloat("LastShootTime", 0)
	
	local Speed 		= self.Owner:GetVelocity():Length()

	local SpeedClamp = math.Clamp(math.abs(Speed / 705), 0, 1)
	
	if (CurTime() <= LastShoot + self.SprayTime) then
		Accuracy = Accuracy * self.SprayAccuracy
	end
	
	if (not self.Owner:IsOnGround()) then
		Accuracy = Accuracy * 0.1
	elseif (Speed > 10) then
		Accuracy = Accuracy * (((1 - SpeedClamp) + 0.1) / 2)
	end

	if (LastAccuracy != 0) then
		if (Accuracy > LastAccuracy) then
			Accuracy = math.Approach(self.LastAccuracy, Accuracy, FrameTime() * 2)
		else
			Accuracy = math.Approach(self.LastAccuracy, Accuracy, FrameTime() * -2)
		end
	end
	
	self.LastAccuracy = Accuracy
	return math.Clamp(Accuracy, 0.2, 1)
end
/*---------------------------------------------------------
   Name: SWEP:ShootBullet()
   Desc: Siminov goes rrrer
---------------------------------------------------------*/
local TracerName = "Tracer"
	
function SWEP:ShootBullet(damage, recoil, num_bullets, aimcone)

	num_bullets 		= num_bullets or 1
	aimcone 			= aimcone or 0

	self:ShootEffects()

	if self.Tracer == 1 then
		TracerName = "Ar2Tracer"
	elseif self.Tracer == 2 then
		TracerName = "AirboatGunHeavyTracer"
	else
		TracerName = "Tracer"
	end
	//the actual bullet creation and shooting
	local bullet = {}
		bullet.Num 		= num_bullets
		bullet.Src 		= self.Owner:GetShootPos()			// Source
		bullet.Dir 		= self.Owner:GetAimVector()			// Dir of bullet
		bullet.Spread 	= Vector(aimcone, aimcone, 0)			// Aim Cone
		bullet.Tracer	= 7							// Show a tracer on every x bullets
		bullet.TracerName = TracerName
		bullet.Force	= damage * 0.5 * math.Rand(0.9, 1.1)// Amount of force to give to phys objects
		bullet.Damage	= damage * math.Rand(0.9, 1.1) 
		bullet.Callback	= function(attacker, tr, dmginfo) 
						if not self.Owner:IsNPC() and self.Owner:GetNetworkedInt("Fuel") > 0 then
							self:ShootFire(attacker, tr, dmginfo) 
						end

						return self:RicochetCallback_Redirect(attacker, tr, dmginfo) 
					  end
	//done
	self.Owner:FireBullets(bullet)

	if (SERVER and (self.Sniper or self.Shotgun) and not self.Owner:GetActiveWeapon():GetClass() == ("weapon_sim_admin")) then
		self.Owner:SetVelocity(self.Owner:GetAimVector() * -(damage * num_bullets))
	end

	// Recoil
	if (not self.Owner:IsNPC()) and ((game.SinglePlayer() and SERVER) or (not game.SinglePlayer() and CLIENT)) then
		local eyeangle 	= self.Owner:EyeAngles()
		eyeangle.pitch 	= eyeangle.pitch - recoil
		self.Owner:SetEyeAngles(eyeangle)
	end
end
/*---------------------------------------------------------
   Name: SWEP:BulletPenetrate()
---------------------------------------------------------*/
local AmmoTypes = {}
AmmoTypes["9mmammo"] = 14
//AmmoTypes["9mmammo"] = 14
//penetration table for different ammo

function SWEP:BulletPenetrate(bouncenum, attacker, tr, dmginfo, isplayer)

	if (CLIENT) then return end

	local MaxPenetration = 16
	if AmmoTypes[self.Primary.Ammo] then
		MaxPenetration = AmmoTypes[self.Primary.Ammo]
	end

	local DoDefaultEffect = true
	// Don't go through metal, sand or player
	if ((tr.MatType == MAT_METAL and self.Ricochet) or (tr.MatType == MAT_SAND) or (tr.Entity:IsPlayer())) then return false end

	// Don't go through more than 3 times
	if (bouncenum > 1) then return false end
	
	// Direction (and length) that we are going to penetrate
	local PenetrationDirection = tr.Normal * MaxPenetration
	
	if (tr.MatType == MAT_GLASS or tr.MatType == MAT_PLASTIC or tr.MatType == MAT_WOOD or tr.MatType == MAT_FLESH or tr.MatType == MAT_ALIENFLESH) then
		PenetrationDirection = tr.Normal * (MaxPenetration * 2)
	end
		
	local trace 	= {}
	trace.endpos 	= tr.HitPos
	trace.start 	= tr.HitPos + PenetrationDirection
	trace.mask 		= MASK_SHOT
	trace.filter 	= {self.Owner}
	   
	local trace 	= util.TraceLine(trace) 
	
	// Bullet didn't penetrate.
	if (trace.StartSolid or trace.Fraction >= 1.0 or tr.Fraction <= 0.0) then return false end
	
	// Damage multiplier depending on surface
	local fDamageMulti = 0.5
	
	if (tr.MatType == MAT_CONCRETE) then
		fDamageMulti = 0.3
	elseif (tr.MatType == MAT_WOOD or tr.MatType == MAT_PLASTIC or tr.MatType == MAT_GLASS) then
		fDamageMulti = 0.8
	elseif (tr.MatType == MAT_FLESH or tr.MatType == MAT_ALIENFLESH) then
		fDamageMulti = 0.9
	end
		
	// Fire bullet from the exit point using the original trajectory
	local bullet = 
	{	
		Num 		= 1,
		Src 		= trace.HitPos,
		Dir 		= tr.Normal,	
		Spread 	= Vector(0, 0, 0),
		Tracer	= 1,
		TracerName 	= "effect_sim_penetration_trace",
		Force		= 5,
		Damage	= (dmginfo:GetDamage() * fDamageMulti),
		HullSize	= 2
	}
	
	bullet.Callback   = function(a, b, c) if (self.Ricochet) then return self:RicochetCallback(bouncenum + 1, a, b, c) end end
	
	timer.Simple(0.05, function()
		if not IsFirstTimePredicted() then return end
		attacker.FireBullets(attacker, bullet, true)
	end)

	return true
end

/*---------------------------------------------------------
   Name: SWEP:RicochetCallback()
---------------------------------------------------------*/
function SWEP:RicochetCallback(bouncenum, attacker, tr, dmginfo)
//removed these from original cause of bad lag
end

/*---------------------------------------------------------
   Name: SWEP:RicochetCallback_Redirect()
---------------------------------------------------------*/
function SWEP:RicochetCallback_Redirect(a, b, c)
//removed these from original cause of bad lag
end

/*---------------------------------------------------------
   Name: SWEP:CanPrimaryAttack()
   Desc: Helper function for checking for no ammo.
---------------------------------------------------------*/
function SWEP:CanPrimaryAttack()
	
	// Clip is empty or you're under water
	if ( self.Weapon:Clip1() <= 0 ) and self.Primary.ClipSize > -1 or self:GetNWBool("BigJammed") or self:GetNWBool("LittleJammed") or self.NearWall then
		if self.Weapon:GetDTBool(0) then return end
		self.Reloadaftershoot = CurTime() + self.Primary.Delay
		self.ActionDelay = (CurTime() + self.Primary.Delay + 0.05)
		self.Weapon:SetNextPrimaryFire(CurTime() + 1)
		if self:GetNWBool("BigJammed") or self:GetNWBool("LittleJammed") or self.NearWall then
			self.Weapon:EmitSound("")
		else 
			//self.Weapon:SendWeaponAnim(ACT_VM_DRYFIRE) // if there is a dryfire animaton for the gun
			if self.Pistol then
				self.Weapon:EmitSound("Universai.Pistol")
			else
				self.Weapon:EmitSound("Universai.Rifle")
			end
		end
		return false
	end

	// You're sprinting or your weapon is holsted
	if not self.Owner:IsNPC() and (self.Owner:KeyDown(IN_SPEED) or self.Weapon:GetDTBool(0) or self.Owner:WaterLevel() > 2) then
		self.Weapon:SetNextPrimaryFire(CurTime() + 0.5)
		return false
	end

	return true
end

/*---------------------------------------------------------
   Name: SWEP:CanSecondaryAttack()
   Desc: lol
---------------------------------------------------------*/
function SWEP:CanSecondaryAttack()

	// Clip is empty or you're under water
	if (self.Weapon:Clip2() <= 0) then
		self.Weapon:SetNextSecondaryFire(CurTime() + 1)
		//self.Weapon:EmitSound("Default.ClipEmpty_Dumbass")
		return false
	end

	// You're sprinting or your weapon is holsted
	if not self.Owner:IsNPC() and (self.Owner:KeyDown(IN_SPEED) or self.Weapon:GetDTBool(0) or self.Owner:WaterLevel() > 2) then
		self.Weapon:SetNextSecondaryFire(CurTime() + 1)
		return false
	end

	return true
end
