
---------------------------------------------
---------------------------------------------
--	V92 SWep Bases Lua Autorun Shit
--	This is stuff for:
--	Lua/weapons/v92_base_swep.lua
---------------------------------------------
---------------------------------------------

properties.Add( "VNTSB_DisableBlackFriday", 
{
	MenuLabel	=	"Disable Black Friday on this Door",
	Order		=	1985,
	MenuIcon	=	"icon16/door.png",
	
	Filter		=	function( self, ent, ply ) 
						if ( !IsValid( ent ) or !gamemode.Call( "CanProperty", ply, name, ent ) ) then
						
							return false 
							
						else
						
							if ( ent:GetClass() == "prop_door_rotating" ) or ( ent:GetClass() == "func_door_rotating" ) then 
							
								if ent:GetNWBool("VNTSB_DisableBlackFriday") == false then
								
									return true
									
								else
									
									return false
									
								end
								
							end
							
						end
						
					end,
					
	Action		=	function( self, ent )
	
						self:MsgStart()
							net.WriteEntity( ent )
						self:MsgEnd()
						
					end,
					
	Receive		=	function( self, length, player )
					
						local ent = net.ReadEntity()
						if ( !self:Filter( ent, player ) ) then return end
	
						ent:SetNWBool("VNTSB_DisableBlackFriday",true)
					end	

})


properties.Add( "VNTSB_EnableBlackFriday", 
{
	MenuLabel	=	"Enable Black Friday on this Door",
	Order		=	1985,
	MenuIcon	=	"icon16/door_open.png",
	
	Filter		=	function( self, ent, ply ) 
						if ( !IsValid( ent ) or !gamemode.Call( "CanProperty", ply, name, ent ) ) then
							return false 
							
						else
						
							if ( ent:GetClass() == "prop_door_rotating" ) or ( ent:GetClass() == "func_door_rotating" ) then 
							
								if ent:GetNWBool("VNTSB_DisableBlackFriday") == true then
								
									return true
									
								else
									
									return false
									
								end
								
							end
							
						end
						
					end,
					
	Action		=	function( self, ent )
	
						self:MsgStart()
							net.WriteEntity( ent )
						self:MsgEnd()
						
					end,
					
	Receive		=	function( self, length, player )
					
						local ent = net.ReadEntity()
						if ( !self:Filter( ent, player ) ) then return end
	
						ent:SetNWBool("VNTSB_DisableBlackFriday",false)

					end	

})

if CLIENT then
	--[[
	--if GetConVarNumber( "VNT_ViewBob_Toggle" ) == 0 then
		--return
	--else
		local function ShakeView(ply, origin, angles, fov)

			--	Set some randomized pitch angles
			local PitchAngs = {
				-0.3,
				-0.2,
				-0.1,
				0.1,
				0.2,
				0.3,	
			}
			
			--	Set some randomized roll angles
			local RollAngs = {
				0.2,
				0.15,
				0.1,
				-0.1,
				-0.15,
				-0.2,
			}
			
			local PCalcT = {}
				PCalcT.VS 	 = 0
				PCalcT.WT 	 = 0
				PCalcT.Air	 = 0

			if ply:GetMoveType() == 8 then
				return
			elseif (not ply:IsOnGround()) or ply:InVehicle() then -- They're in the air or in a car
				PCalcT.Air = math.Clamp(PCalcT.Air + 1, 0, 300)
				return
			else
				local vel = (ply:GetVelocity() * GetConVarNumber("VNT_ViewBob_Mul"))
				local ang = ply:EyeAngles()
				local mul = 5 
				PCalcT.VS = PCalcT.VS * 0.9 + vel:Length() * 0.1
				PCalcT.WT = PCalcT.WT + PCalcT.VS * FrameTime() * 0.1
				local view = {}
				view.origin = origin
				view.ply = ply
				view.fov = fov
				view.angles = angles
				if PCalcT.Air > 0 then
					PCalcT.Air = PCalcT.Air - (PCalcT.Air/10) -- Make it end in 10 frames
					view.angles.p = view.angles.p + (PCalcT.Air * table.Random(PitchAngs)) -- Pitch Cam Shake on Land
					view.angles.r = view.angles.r + PCalcT.Air*table.Random(RollAngs) -- Roll Cam Shake on Land
				end
				--view.angles.r = angles.r + ang:Right():DotProduct(vel) * 0.01
				view.angles.r = angles.r + ang:Right():DotProduct(vel) * table.Random(RollAngs) -- Strafe Angles
				view.angles.r = angles.r + math.sin( PCalcT.WT ) * PCalcT.VS * 0.001
				--view.angles.r = angles.r + math.sin( PCalcT.WT ) * PCalcT.VS * mul
				view.angles.p = angles.p + math.sin( PCalcT.WT * 0.5 ) * PCalcT.VS * table.Random(PitchAngs)
				--view.angles.p = angles.p + math.sin( PCalcT.WT * 0.5 ) * PCalcT.VS * mul
				--return view -- <---- Breaks Ironsights
				
				print( "ShakeView :: " .. PitchAngs .. " :: " .. RollAngs )
			end
		end
		hook.Add("CalcView", "VNTCB_ViewBobbing", ShakeView)
	--end
	--]]

	local function inOutQuart(t, b, c, d)

		if GetConVarNumber( "VNT_Base_ViewBob_Toggle" ) == 1 and LocalPlayer():GetActiveWeapon().Base == VNTCB.Bases.Wep then

			t = t / d * 2
			if t < 1 then
				return c / 2 * math.pow(t, 4) + b
			else
				t = t - 2
				return -c / 2 * (math.pow(t, 4) - 2) + b
			end
			
		end
		
	end

	local function TrnView( ply, origin, angles, fov )
		
		if GetConVarNumber( "VNT_Base_ViewBob_Toggle" ) == 1 and LocalPlayer():GetActiveWeapon().Base == VNTCB.Bases.Wep then

			if ply:GetMoveType() == 8 then
				return
			else
		
			local view = {}
		
			local ang = ply:EyeAngles()
			local vel = ply:GetVelocity()
			local velr = Vector(ang:Forward():DotProduct(vel),ang:Right():DotProduct(vel),ang:Up():DotProduct(vel))
		
			view.origin = origin
			view.ply = ply
			view.angles = angles
		
			local viewbob = math.atan(math.sin(math.sin(CurTime()*20)))*velr:Length()*0.01
			local cos1 = math.cos(CurTime() * 7.5)
			local cos2 = math.cos(CurTime() * 5)
		
			view.origin.z = origin.z + viewbob
			view.angles.p = angles.p + cos1 * 0.10 *velr:Length()*0.01
			view.angles.y = angles.y + cos2 * 0.10 *velr:Length()*0.01
		
			--return view
		
			end
			
		end
		
	end

	local function TrnWepView(wep, vm, oldPos, oldAng, pos, ang)
		
		if GetConVarNumber( "VNT_Base_ViewBob_Toggle" ) == 1 and LocalPlayer():GetActiveWeapon().Base == VNTCB.Bases.Wep then

			if LocalPlayer():GetMoveType() == 8 then
				return
			else
			local view = {}
		
			local ang = LocalPlayer():EyeAngles()
			local vel = LocalPlayer():GetVelocity()
			local velr = Vector(ang:Forward():DotProduct(vel),ang:Right():DotProduct(vel),ang:Up():DotProduct(vel))
		

			view.oldPos = oldPos
			view.oldAng = oldAng
			view.pos = pos
			view.ang = ang
		
			local viewbob = math.atan(math.sin(math.sin(CurTime()*20)))*velr:Length()*0.0095
		
			view.pos.z = pos.z + viewbob
			
			--if(velr.x>=150) then
				--if(curtimecheck == 0) then
					--curtimestore = CurTime()
					--curtimecheck = 1
				--end
			--print(CurTime()-curtimestore)
			
			--view.pos.y = pos.y + inOutQuart(math.Clamp(CurTime()-curtimestore,0,1),0,2 ,1)
			--else
				--curtimecheck = 0
			--end
		
			--return view
			end
			
		end
		
	end
	
	hook.Add("CalcView", "TrnViewHook", TrnView)
	hook.Add("CalcViewModelView", "TrnWepViewHook", TrnWepView)
end

---------------------------------------------
---------------------------------------------
--	Weapon Slot Types
--	Used in my Weapon Slot plugin
--	X-project
---------------------------------------------
---------------------------------------------

VNTCB.Type = VNTCB.Type or { 
	Primary , 
	Secondary , 
	GrenadeOne , 
	GrenadeTwo , 
	Explosive , 
	Melee , 
	Supply , 
	None ,
}

---------------------------------------------
---------------------------------------------
--	Grenade/Rocket Launcher Entities
---------------------------------------------
---------------------------------------------

VNTCB.GLEnt = VNTCB.GLEnt or {
	["GLUS"] = "v92_proj_40x46mm" ,
	["GLRU"] = "v92_proj_vog25" ,
	["AMBAZRKT"] = "v92_proj_am_bazrkt" ,
	["M6A1HEAT"] = "v92_proj_m6a1_heat" ,
}

---------------------------------------------
---------------------------------------------
--	Weapon Types
---------------------------------------------
---------------------------------------------

VNTCB.WeaponType = VNTCB.WeaponType or {
	["Melee"] = 1 ,
	["Pistol"] = 2 ,
	["Revolver"] = 2 ,
	["Dual"] = 2 ,
	["SMG"] = 3 ,
	["Carbine"] = 3 ,
	["Rifle"] = 3 ,
	["LMG"] = 3 ,
	["Shotgun"] = 4 ,
	["Sniper"] = 5 ,
	["GLauncher"] = 6 ,
	["RLauncher"] = 7 ,
	["Support"] = 8 ,
	["Thrown"] = 9 ,
}

---------------------------------------------
---------------------------------------------
--	Weapon Hold Types
---------------------------------------------
---------------------------------------------

VNTCB.HoldType = VNTCB.HoldType or {
	["Fists"] = { -- 0 = Name
		"fists" , -- 1 = Standard
		"fists" , -- 2 = Ironsighted
		"fists" , -- 3 = Crouched
		"fists" , -- 4 = Crouched Ironsighted
		"fists" , -- 5 = Reloading
		"fists" , -- 6 = Crouched Reloading
		"fists" , -- 7 = Prone
		"normal" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} ,
	["Melee"] = { -- 0 = Name
		"melee" , -- 1 = Standard
		"melee2" , -- 2 = Ironsighted
		"melee" , -- 3 = Crouched
		"melee2" , -- 4 = Crouched Ironsighted
		"melee2" , -- 5 = Reloading
		"melee2" , -- 6 = Crouched Reloading	
		"melee" , -- 7 = Prone
		"normal" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} ,
	["Sword"] = { -- 0 = Name
		"melee2" , -- 1 = Standard
		"melee2" , -- 2 = Ironsighted
		"melee2" , -- 3 = Crouched
		"melee2" , -- 4 = Crouched Ironsighted
		"melee2" , -- 5 = Reloading
		"melee2" , -- 6 = Crouched Reloading	
		"melee" , -- 7 = Prone
		"normal" , -- 8 = Holstered
		"normal"  , -- 9 = Holstered Crouched
	} ,
	["Knife"] = { -- 0 = Name
		"knife" , -- 1 = Standard
		"knife" , -- 2 = Ironsighted
		"knife" , -- 3 = Crouched
		"knife" , -- 4 = Crouched Ironsighted
		"knife" , -- 5 = Reloading
		"knife" , -- 6 = Crouched Reloading
		"knife" , -- 7 = Prone
		"normal" , -- 8 = Holstered
		"normal"  , -- 9 = Holstered Crouched
	} ,
	["Pistol"] = { -- 0 = Name
		"pistol" , -- 1 = Standard
		"revolver" , -- 2 = Ironsighted
		"revolver" , -- 3 = Crouched
		"pistol" , -- 4 = Crouched Ironsighted
		"pistol" , -- 5 = Reloading
		"pistol" , -- 6 = Crouched Reloading
		"pistol" , -- 7 = Prone
		"normal" , -- 8 = Holstered
		"normal"  , -- 9 = Holstered Crouched
	} ,
	["Revolver"] = { -- 0 = Name
		"pistol" , -- 1 = Standard
		"revolver" , -- 2 = Ironsighted
		"revolver" , -- 3 = Crouched
		"pistol" , -- 4 = Crouched Ironsighted
		"revolver" , -- 5 = Reloading
		"revolver" , -- 6 = Crouched Reloading
		"pistol" , -- 7 = Prone
		"normal" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} ,
	["C96"] = { -- 0 = Name
		"pistol" , -- 1 = Standard
		"rpg" , -- 2 = Ironsighted
		"rpg" , -- 3 = Crouched
		"pistol" , -- 4 = Crouched Ironsighted
		"pistol" , -- 5 = Reloading
		"pistol" , -- 6 = Crouched Reloading
		"pistol" , -- 7 = Prone
		"normal" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} ,
	["Dual"] = { -- 0 = Name
		"duel" , -- 1 = Standard
		"duel" , -- 2 = Ironsighted
		"duel" , -- 3 = Crouched
		"duel" , -- 4 = Crouched Ironsighted
		"duel" , -- 5 = Reloading
		"duel" , -- 6 = Crouched Reloading
		"duel" , -- 7 = Prone
		"normal" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} ,
	["ForeGrip"] = { -- 0 = Name
		"smg" , -- 1 = Standard
		"smg" , -- 2 = Ironsighted
		"smg" , -- 3 = Crouched
		"smg" , -- 4 = Crouched Ironsighted
		"smg" , -- 5 = Reloading
		"smg" , -- 6 = Crouched Reloading
		"smg" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["HL2SMG"] = { -- 0 = Name
		"smg" , -- 1 = Standard
		"smg" , -- 2 = Ironsighted
		"smg" , -- 3 = Crouched
		"smg" , -- 4 = Crouched Ironsighted
		"pistol" , -- 5 = Reloading
		"pistol" , -- 6 = Crouched Reloading
		"smg" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["SMG"] = { -- 0 = Name
		"smg" , -- 1 = Standard
		"ar2" , -- 2 = Ironsighted
		"smg" , -- 3 = Crouched
		"ar2" , -- 4 = Crouched Ironsighted
		"smg" , -- 5 = Reloading
		"ar2" , -- 6 = Crouched Reloading
		"ar2" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["Carbine"] = { -- 0 = Name
		"ar2" , -- 1 = Standard
		"ar2" , -- 2 = Ironsighted
		"ar2" , -- 3 = Crouched
		"ar2" , -- 4 = Crouched Ironsighted
		"ar2" , -- 5 = Reloading
		"ar2" , -- 6 = Crouched Reloading
		"ar2" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["Rifle"] = { -- 0 = Name
		"ar2" , -- 1 = Standard
		"rpg" , -- 2 = Ironsighted
		"shotgun" , -- 3 = Crouched
		"ar2" , -- 4 = Crouched Ironsighted
		"ar2" , -- 5 = Reloading
		"ar2" , -- 6 = Crouched Reloading
		"ar2" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["LMG"] = { -- 0 = Name
		"ar2" , -- 1 = Standard
		"rpg" , -- 2 = Ironsighted
		"ar2" , -- 3 = Crouched
		"rpg" , -- 4 = Crouched Ironsighted
		"ar2" , -- 5 = Reloading
		"ar2" , -- 6 = Crouched Reloading
		"ar2" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 	
	["M1919"] = { -- 0 = Name
		"shotgun" , -- 1 = Standard
		"ar2" , -- 2 = Ironsighted
		"shotgun" , -- 3 = Crouched
		"ar2" , -- 4 = Crouched Ironsighted
		"smg" , -- 5 = Reloading
		"smg" , -- 6 = Crouched Reloading
		"pistol" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"shotgun" , -- 9 = Holstered Crouched
	} , 
	["Shotgun"] = { -- 0 = Name
		"shotgun" , -- 1 = Standard
		"ar2" , -- 2 = Ironsighted
		"shotgun" , -- 3 = Crouched
		"ar2" , -- 4 = Crouched Ironsighted
		"shotgun" , -- 5 = Reloading
		"shotgun" , -- 6 = Crouched Reloading
		"shotgun" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["Sniper"] = { -- 0 = Name
		"ar2" , -- 1 = Standard
		"rpg" , -- 2 = Ironsighted
		"ar2" , -- 3 = Crouched
		"ar2" , -- 4 = Crouched Ironsighted
		"ar2" , -- 5 = Reloading
		"ar2" , -- 6 = Crouched Reloading
		"ar2" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["GLauncher"] = { -- 0 = Name
		"ar2" , -- 1 = Standard
		"rpg" , -- 2 = Ironsighted
		"ar2" , -- 3 = Crouched
		"rpg" , -- 4 = Crouched Ironsighted
		"shotgun" , -- 5 = Reloading
		"shotgun" , -- 6 = Crouched Reloading
		"ar2" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["GLauncherForeGrip"] = { -- 0 = Name
		"smg" , -- 1 = Standard
		"rpg" , -- 2 = Ironsighted
		"smg" , -- 3 = Crouched
		"rpg" , -- 4 = Crouched Ironsighted
		"shotgun" , -- 5 = Reloading
		"shotgun" , -- 6 = Crouched Reloading
		"smg" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["RLauncher"] = { -- 0 = Name
		"rpg" , -- 1 = Standard
		"rpg" , -- 2 = Ironsighted
		"rpg" , -- 3 = Crouched
		"rpg" , -- 4 = Crouched Ironsighted
		"rpg" , -- 5 = Reloading
		"rpg" , -- 6 = Crouched Reloading
		"rpg" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["Support"] = { -- 0 = Name
		"slam" , -- 1 = Standard
		"slam" , -- 2 = Ironsighted
		"slam" , -- 3 = Crouched
		"slam" , -- 4 = Crouched Ironsighted
		"fists" , -- 5 = Reloading
		"fists" , -- 6 = Crouched Reloading
		"slam" , -- 7 = Prone
		"normal" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["Grenade"] = { -- 0 = Name
		"grenade" , -- 1 = Standard
		"grenade" , -- 2 = Ironsighted
		"grenade" , -- 3 = Crouched
		"grenade" , -- 4 = Crouched Ironsighted
		"grenade" , -- 5 = Reloading
		"grenade" , -- 6 = Crouched Reloading
		"grenade" , -- 7 = Prone
		"normal" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} ,
}

--	X-project
ENUMHOLDTYPE = {
[ "STANDARD" ] = 1  ,
[ "IRON" ] = 2 ,
[ "DUCK" ] = 3 ,
[ "DUCK_IRON" ] = 4 ,
[ "RELOAD" ] = 5 ,
[ "DUCK_RELOAD" ] = 6 ,
[ "PRONE" ] = 7 ,
[ "HOLSTER" ] = 8 ,
[ "DUCK_HOLSTER" ] = 9 ,
}

---------------------------------------------
---------------------------------------------
--	Bucket Positions
---------------------------------------------
---------------------------------------------

VNTCB.Bucket = VNTCB.Bucket or {
	["Melee"] = 0 ,
	["Tool"] = 0 ,
	["Utility"] = 0 ,
	["Pistol"] = 1 ,
	["Revolver"] = 1 ,
	["Dual"] = 1 ,
	["SMG"] = 2 ,
	["Carbine"] = 2 ,
	["Rifle"] = 2 ,
	["LMG"] = 2 ,
	["DMR"] = 2 ,
	["Sniper"] = 2 ,
	["Shotgun"] = 2 ,
	["Grenade"] = 3 ,
	["Mine"] = 3 ,
	["Explosive"] = 3 ,
	["Support"] = 3 ,
	["Launcher"] = 4
}

---------------------------------------------
---------------------------------------------
--	Bucket Slots
---------------------------------------------
---------------------------------------------

VNTCB.Slot = VNTCB.Slot or {
	["Melee"] = 16 ,
	["Tool"] = 24 ,
	["Utility"] = 64 ,
	["Pistol"] = 16 ,
	["Revolver"] = 32 ,
	["Dual"] = 48 ,
	["SMG"] = 16 ,
	["Carbine"] = 24 ,
	["Rifle"] = 32 ,
	["LMG"] = 48 ,
	["DMR"] = 56 ,
	["Sniper"] = 64 ,
	["Shotgun"] = 72 ,
	["Grenade"] = 16 ,
	["Mine"] = 24 ,
	["Explosive"] = 32 ,
	["Support"] = 48 ,
	["Launcher"] = 16
}

---------------------------------------------
---------------------------------------------
--	Weapon Manufacturers 
--	Used in my Weapon Information Menu
---------------------------------------------
---------------------------------------------
VNTCB.Manufacturer = VNTCB.Manufacturer or {
	--	America
	["CLT"] = "Colt's Manufacturing Company" ,
	["BRO"] = "Browning Arms Company" ,
	["SPR"] = "Springfield Armoury, Inc." ,
	["SaW"] = "Smith & Wesson" ,
	["WIN"] = "Winchester Repeating Arms Company" ,
	["REM"] = "Remington Arms Company" ,
	["ZM"] = "Z-M Weapons" ,
	["KIM"] = "Kimber Manufacturing" ,
	["SOG"] = "SOG Specialty Knives" ,
	["CLNWC"] = "China Lake Naval Weapons Center" ,
	["MAC"] = "Military Armament Corporation" ,
	["Crye"] = "Crye Precision LLC" ,
	["AutoOrd"] = "Auto Ordnance Corp." ,
	["Inland"] = "General Motors' Inland Division" ,
	["Mossberg"] = "O.F. Mossberg & Sons" ,
	--	Europe
	["ACI"] = "Accuracy International" ,
	["HK"] = "Heckler & Koch G.m.b.H." ,
	["BT"] = "Brugger & Thomet" ,
	["GLK"] = "Glock Ges.m.b.H." ,
	["CZ"] = "Czech Arms Factory" ,
	["STY"] = "Steyr Mannlicher" ,
	["BEN"] = "Benelli Arms S.p.A." ,
	["FRC"] = "Franchi S.p.A." ,
	["BER"] = "Beretta Arms Factory" ,
	["SIG"] = "SIG Sauer" ,
	["FN"] = "FN Herstal" ,
	["STR"] = "Star Bonifacio Echeverria, S.A." ,
	["NEX"] = "Nexter Systems" ,
	["Mauser"] = "Mauser" ,
	["Walther"] = "Walther Arms" ,
	--	Middle-East
	["IMI"] = "Israel Military Industries" ,
	--	Pan-Asian Coalition
	["NOR"] = "China North Industries Corporation" ,
	["TUL"] = "Tula Arms Plant" ,
	["IZH"] = "Izhevsk Mechanical Plant" ,
	--	Half-Life 2
	["REB"] = "Lambda Resistance" ,
	["CMB"] = "Universal Union" ,
	--	Catch-22
	["VNT"] = "Vanover Design Bureau" ,
	["UNK"] = "Unknown" ,
	["VAR"] = "Various" ,
	--	Halo
	["MIS"] = "Misriah Armoury" ,
	["ARMAUNSC"] = "Armalite MG" ,
	["WST"] = "Weapon System Technologies" ,
	--	Army Men
	["AMGRN"] = "Green Nation" ,
	["AMTAN"] = "Tan Nation" ,
	["AMGRY"] = "Grey Nation" ,
	["AMBLU"] = "Blue Nation" ,
	["AMPRX"] = "Plastic Nation" ,
}

---------------------------------------------
---------------------------------------------
--	Countries of Origin
--	ISO 3166-1 alpha-3
--	https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3
--	Used in my Weapon Information Menu
---------------------------------------------
---------------------------------------------

VNTCB.Country = VNTCB.Country or {
	["USA"] = "United States" ,
	["GBR"] = "United Kingdom" ,
	["SUN"] = "Soviet Union" ,
	["FRA"] = "France" ,
	["ITA"] = "Italy" ,
	["ESP"] = "Spain" ,
	["GEM"] = "German Empire" ,
	["NAZ"] = "Nazi Germany" ,
	["DEU"] = "Germany" ,
	["DEW"] = "West Germany" ,
	["DDR"] = "East Germany" ,
	["CHN"] = "China" ,
	["BEL"] = "Belgium" ,
	["AUT"] = "Austria" ,
	["ISR"] = "Israel" ,
	["CSK"] = "Czechoslovakia" ,
	["CZE"] = "Czech Republic" ,
	["VAR"] = "Various" ,
	["EAR"] = "Earth" ,
	["MAR"] = "Mars" ,
	["UniUni"] = "Universal Union" ,
	["AMGRN"] = "Green Nation" ,
	["AMTAN"] = "Tan Nation" ,
	["AMGRY"] = "Grey Nation" ,
	["AMBLU"] = "Blue Nation" ,
	["AMPRX"] = "Plastic Nation" ,
}

---------------------------------------------
---------------------------------------------
--	Weapon Magazine Types
--	Used in my Weapon Magazine Plugin
--	Mag/clip name, number of mags/clips owned, number of rounds in mag, mag "self-destructs" on use
--	All can be overridden in SWeps
---------------------------------------------
---------------------------------------------

VNTCB.Magazine = VNTCB.Magazine or {
	["mMP7"] = { "HK 4.6x30mm MP7 Magazine" , 0 , 20 , false } ,
	["m357C"] = { ".357 Magnum Moon Clip" , 0 , 6 , true } ,
	["m38SC"] = { ".38 Special Moon Clip" , 0 , 6 , true } ,
	["mMAC1045"] = { "MAC-10 .45 ACP Magazine" , 0 , 30 , false } ,
	["mAWM"] = { "Arctic Warfare Magnum Magazine" , 0 , 10 , false } ,
	["mScout"] = { "Steyr Scout Magazine" , 0 , 10 , false } ,
	["mDEagle"] = { "Desert Eagle Magazine" , 0 , 7 , false } ,
	["mP2209x19"] = { "P228 9x19mm Magazine" , 0 , 8 , false } ,
	["mP22045"] = { "P220 .45 ACP Magazine" , 0 , 8 , false } ,
	["m57"] = { "Five-seveN Magazine" , 0 , 20 , false } ,
	["mMRC"] = { "MRC Magazine" , 0 , 50 , false } ,
	["mP90"] = { "P90 Magazine" , 0 , 50 , false } ,
	["mUMP45"] = { "UMP-45 .45 ACP Magazine" , 0 , 12 , false } ,
	["mMStar45"] = { "Star Megastar .45 ACP Magazine" , 0 , 12 , false } ,
	["mTMP"] = { "TMP/MP9 Magazine" , 0 , 30 , false } ,
	["mIMI556"] = { "IMI 5.56x45mm Magazine" , 0 , 50 , false } ,
	["mHK556"] = { "HK 5.56x45mm Magazine" , 0 , 25 , false } ,
	["mHK762"] = { "HK 7.62x51mm Magazine" , 0 , 20 , false } ,
	["mUSP9"] = { "HK 9x19mm USP Magazine" , 0 , 15 , false } ,
	["mUSP40"] = { "HK .40 S&W USP Magazine" , 0 , 13 , false } ,
	["mUSP45"] = { "HK .45 ACP USP Magazine" , 0 , 12 , false } ,
	["mMP5"] = { "HK MP5 Magazine" , 0 , 30 , false } ,
	["m92FS"] = { "Beretta 9x19mm Magazine" , 0 , 15 , false } ,
	["mSIG556"] = { "5.56 SIG Magazine" , 0 , 30 , false } ,
	["mNATO556"] = { "5.56 STANAG" , 0 , 30 , false } ,
	["mNATO762"] = { "7.62 STANAG" , 0 , 20 , false } ,
	["m40x46"] = { "40x46mm NATO Grenade Launcher Shell" , 0 , 1 , true } ,
	["mM40"] = { "M40 Magazine" , 0 , 5 , false } ,
	["mBARMk2"] = { "BAR Mk.II Magazine" , 0 , 10 , false } ,
	["mShotgun"] = { "Shotgun Shell" , 0 , 1 , true } ,
	["mMakarov"] = { "PM Magazine" , 0 , 8 , false } ,
	["mBizon"] = { "PP-19 Magazine" , 0 , 64 , false } ,
	["mCZ75"] = { "CZ-75 Magazine" , 0 , 15 , false } ,
	["mGlock"] = { "Glock Magazine" , 0 , 15 , false } ,
	["m54539"] = { "5.45x39mm Warsaw Pact STANAG" , 0 , 30 , false } ,
	["m54539D"] = { "5.45x39mm Warsaw Pact Drum" , 0 , 75 , false } ,
	["m76225"] = { "7.62x25mm Warsaw Pact Pistol Mag" , 0 , 8 , false } ,
	["m76239"] = { "7.62x39mm Warsaw Pact STANAG" , 0 , 40 , false } ,
	["m76239D"] = { "7.62x39mm Warsaw Pact Drum" , 0 , 75 , false } ,
	["m76254"] = { "7.62x54mm Warsaw Pact STANAG" , 0 , 30 , false } ,
	["m76254C"] = { "7.62x54mm Warsaw Pact Stripper Clip" , 0 , 5 , true } ,
	["mFlashbang"] = { "Flashbang Grenade" , 0 , 1 , true } ,
	["mM18"] = { "M18 Grenade" , 0 , 1 , true } ,
	["mM61"] = { "M61 Grenade" , 0 , 1 , true } ,
	["mM67"] = { "M67 Grenade" , 0 , 1 , true } ,
	["mM249"] = { "M249 LMG Box Mag" , 0 , 100 , false } ,
	--	WWII
	["mMk2Frag"] = { "Mk.II Grenade" , 0 , 1 , true } ,
	["mM24Stielhandgranate"] = { "Stielhandgranate" , 0 , 1 , true } ,
	["mNb39Nebelhandgranate"] = { "Nebelhandgranate" , 0 , 1 , true } ,
	["m3006Stripper"] = { ".30-06 Stripper Clip" , 0 , 5 , true } ,
	["m3006Belt"] = { ".30-06 150-Round Belt" , 0 , 150 , true } ,
	["mM1911"] = { "M1911 Magazine" , 0 , 7 , false } ,
	["mM1Carbine15"] = { "M1 Carbine 15-Round Magazine" , 0 , 15 , false } ,
	["mM1Carbine30"] = { "M1 Carbine 30-Round Magazine" , 0 , 30 , false } ,
	["mBAR"] = { "BAR .30-06 Magazine" , 0 , 20 , false } ,
	["mGarand"] = { "M1 Garand .30-06 En Bloc Clip" , 0 , 8 , true } ,
	["mGarandNade"] = { "M1 Garand Rifle Grenade" , 0 , 1 , true } ,
	["mThompsonStick"] = { "M1A1 Thompson Stick Mag" , 0 , 30 , false } ,
	["mBazooka"] = { "M6A1 Rockets" , 0 , 1 , true } ,
	["mC96"] = { "C96 Magazine" , 0 , 10 , false } ,
	["mMP40Stick"] = { "MP 40 Stick Magazine" , 0 , 32 , false } ,
	["mStG44"] = { "StG 44 Magazine" , 0 , 30 , false } ,
	["mP38"] = { "Walther P38 Magazine" , 0 , 8 , false } ,
	["mMG42"] = { "MG 42 250-Round Belt" , 0 , 250 , true } ,
	["mK98k"] = { "Karabiner 98k Stripper Clip" , 0 , 5 , true } ,
	--	Western / FoF
	["m45Colt"] = { ".45 Colt Bullet" , 0 , 1 , true } ,
	-- Halo
	["mHaloM6"] = { "M6 Magnum Magazine" , 0 , 8 , false } ,
	["mHaloM7"] = { "M7 SMG Magazine" , 0 , 8 , false } ,
	["mHaloMA"] = { "MA Magazine" , 0 , 36 , false } ,
	["mHaloM392"] = { "M392 Magazine" , 0 , 36 , false } ,
	["mHaloBR55"] = { "BR55 Magazine" , 0 , 36 , false } ,
	["mHaloSK8GMagnum"] = { "8-Gauge Magnum Shells" , 0 , 1 , true } ,
	["mHaloSK8GBuck"] = { "8-Gauge Buckshot Shells" , 0 , 1 , true } ,
	-- HL2
	["mAR2"] = { "AR2 Magazine" , 0 , 30 , false } ,
}

---------------------------------------------
---------------------------------------------
--	Ammo Types
--	Used across all my weapon packs
--	Damage, Strong Material Penetration, Weak Material Penetration
---------------------------------------------
---------------------------------------------

VNTCB.Ammo = VNTCB.Ammo or {
	["a357Magnum"] = { 50 , 50 , 75 } ,
	["a38S"] = { 38 , 9 , 12 } ,
	["a40SW"] = { 40 , 12 , 15 } ,
	["a45ACP"] = { 45 , 13 , 16 } ,
	["a50BMG"] = { 150 , 50 , 75 } ,
	["a86x70mm"] = { 100 , 35 , 50 } ,
	["a50AE"] = { 50 , 50 , 75 } ,
	["aMP7"] = { 30 , 9 , 12 } ,
	["a57"] = { 28 , 9 , 12 } ,
	["a556NATO"] = { 45 , 15 , 18 } ,
	["a762NATO"] = { 51 , 18 , 21 } ,
	["a9x19mmNATO"] = { 19 , 5 , 8 } ,
	["a68x43"] = { 48 , 16 , 19 } ,
	["a68cl"] = { 48 , 16 , 19 } ,
	["a10Auto"] = { 25 , 7 , 10 } ,
	["a12GBuck"] = { 16 , 15 , 18 } ,
	["a20GBuck"] = { 12 , 17 , 20 } ,
	["a9x18mmWP"] = { 18 , 5 , 8 } ,
	["a545x39mmWP"] = { 39 , 15 , 18 } ,
	["a762x25mmWP"] = { 25 , 12 , 15 } ,
	["a762x39mmWP"] = { 39 , 20 , 23 } ,
	["a762x54mmWP"] = { 39 , 23 , 26 } ,
	["aArmyMen"] = { 45 , 15 , 18 } ,
	["a40x46mm"] = { 1 , 1 , 1 } ,
	["aM61Frag"] = { 1 , 1 , 1 } ,
	["aM67Frag"] = { 1 , 1 , 1 } ,
	["aM18Smoke"] = { 1 , 1 , 1 } ,
	["aFlashbang"] = { 1 , 1 , 1 } ,
	["aVOG25"] = { 1 , 1 , 1 } ,
	-- WWII
	["a762x25Mauser"] = { 28 , 14 , 17 } ,
	["a792x33mmkurz"] = { 38 , 15 , 20 } ,
	["a792x57mmmauser"] = { 57 , 28 , 36 } ,
	["a30carb"] = { 33 , 15 , 20 } ,
	["a3006"] = { 92 , 45 , 50 } ,
	["agarandgrenade"] = { 1 , 1 , 1 } ,
	["aBazooka"] = { 1 , 1 , 1 } ,
	["a88mmrocket"] = { 1 , 1 , 1 } ,
	["aMk2Frag"] = { 1 , 1 , 1 } ,
	["aNb39Smoke"] = { 1 , 1 , 1 } ,
	-- Western / FoF
	["a45Colt"] = { 45 , 16 , 20 } ,
	-- Utility
	["aMedBag"] = { 10 , 1 , 1 } ,
	["aAmmoBag"] = { 10 , 1 , 1 } ,
	["aBatteries"] = { 1 , 1 , 1 } ,
	-- Halo
	["aSK8GMagnum"] = { 32 , 16 , 24 } ,
	["aSK8GBuck"] = { 32 , 4 , 12 } ,
	["a95x40mm"] = { 50 , 18 , 21 } ,
	["a5x23mm"] = { 22 , 8 , 12 } ,
	-- HL2
	["aAR2"] = { 8 , 8 , 12 } ,
}

local AmmoTypes = {
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	--	Callibre
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	--[[[".357 Magnum"] = {
		name = "9x33mm",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},--]]
	[".38 Special"] = {
		name = "38special",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	[".40 S&W"] = {
		name = "40sw",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	[".45 ACP"] = {
		name = "45acp",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	[".45 Colt"] = {
		name = "45colt",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	[".50 BMG"] = {
		name = "50bmg",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	[".50 AE"] = {
		name = "50ae",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	--	Millimetre :: Modern-ish
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	["4.6x30mm"] = {
		name = "46x30mm",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["5.7x28mm"] = {
		name = "57x28mm",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["8.6x70mm"] = {
		name = "86x70mm",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["5.56x45mm NATO"] = {
		name = "556x45mmnato",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["7.62x51mm NATO"] = {
		name = "762x51mmnato",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["9x19mm NATO"] = {
		name = "9x19mmnato",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["6.8x43mm"] = {
		name = "68x43mm",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["6.8mm Caseless"] = {
		name = "68mmcl",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["10mm Auto"] = {
		name = "10mmauto",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	--	Warsaw Pact
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	["9x18mm Warsaw Pact"] = {
		name = "9x18mmwp",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["5.45x39mm Warsaw Pact"] = {
		name = "545x39mmwp",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["7.62x25mm Warsaw Pact"] = {
		name = "762x25mmwp",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["7.62x39mm Warsaw Pact"] = {
		name = "762x39mmwp",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["7.62x54mm Warsaw Pact"] = {
		name = "762x54mmwp",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	--	Shotguns
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	["12-Gauge Buckshot"] = {
		name = "12gauge",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["20-Gauge Buckshot"] = {
		name = "20gauge",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	--	Grenades
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	["40x46mm NATO Grenade"] = {
		name = "40x46mmgrenade",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["VOG-25 Grenade"] = {
		name = "vog25grenade",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["M61 Frag Grenade"] = {
		name = "m61grenade",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["M67 Frag Grenade"] = {
		name = "m67grenade",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["M18 Smoke Grenade"] = {
		name = "m18smoke",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["Flashbang"] = {
		name = "flashbang",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["M15 Anti-Vehicle Mines"] = {
		name = "m15mine",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["M18 Anti-Personnel Mines"] = {
		name = "m18mine",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},

	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	--	WWII
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	[".30-06"] = {
		name = "762x63mm",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	[".30 Carbine"] = {
		name = "762x33mm",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["M1 Garand Rifle Grenade"] = {
		name = "garandgrenade",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["M6A1 HEAT Rocket"] = {
		name = "m6a1heatrocket",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["88mm Rocket"] = {
		name = "88mmrocket",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["7.62x25mm Mauser"] = {
		name = "762x25mmmauser",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["7.92x57mm Mauser"] = {
		name = "792x57mmmauser",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["7.92x33mm Kurz"] = {
		name = "792x33mmkurz",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["Mk.II Pineapple Grenade"] = {
		name = "mk2frag",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["Model 24 Stielhandgranate"] = {
		name = "m24stielhandgranate",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	["Nb.39 Nebelhandgranate"] = {
		name = "nb39nebelhandgranate",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	--	Utility
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	["Medical Bag"] = {
		name = "medbag",
		dmgtype = DMG_CLUB,
		tracer = TRACER_NONE,
	},
	["Ammunition Bag"] = {
		name = "ammobag",
		dmgtype = DMG_CLUB,
		tracer = TRACER_NONE,
	},
	["Batteries"] = {
		name = "batteries",
		dmgtype = DMG_CLUB,
		tracer = TRACER_NONE,
	},
	["Parachutes"] = {
		name = "parachute",
		dmgtype = DMG_CLUB,
		tracer = TRACER_NONE,
	},
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	-- Halo
	------------------------------------------------------
	------------------------------------------------------
	------------------------------------------------------
	["5x23mm"] = {
		name = "5x23mm",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["9.5x40mm"] = {
		name = "95x40mm",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["Soellkraft 8-Gauge Buckshot"] = {
		name = "sk8gaugebuck",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["Soellkraft 8-Gauge Magnum"] = {
		name = "sk8gaugemagnum",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	
}

for K, V in pairs(AmmoTypes) do
	if CLIENT then
		language.Add(V.name .. "_ammo", K)
	end	
	game.AddAmmoType(V)
end

---------------------------------------------
---------------------------------------------
--	Generic Sounds
--	Used across all my weapons
---------------------------------------------
---------------------------------------------

sound.Add( {
	name = "VNTCB.SWep.Semi" ,
	channel = CHAN_ITEM ,
	level = 60 ,
	volume = 1.0 ,
	pitch = 85 ,
	sound = { "^)jessev92/weapons/univ/auto_semiauto_switch.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/auto_semiauto_switch.wav" )

sound.Add( {
	name = "VNTCB.SWep.Burst" ,
	channel = CHAN_ITEM ,
	level = 60 ,
	volume = 1.0 ,
	pitch = 100 ,
	sound = { "^)jessev92/weapons/univ/auto_semiauto_switch.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/auto_semiauto_switch.wav" )

sound.Add( {
	name = "VNTCB.SWep.Auto" ,
	channel = CHAN_ITEM ,
	level = 60 ,
	volume = 1.0 ,
	pitch = 115 ,
	sound = { "^)jessev92/weapons/univ/auto_semiauto_switch.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/auto_semiauto_switch.wav" )

sound.Add( {
	name = "VNTCB.SWep.Safety" ,
	channel = CHAN_ITEM ,
	level = 60 ,
	volume = 1.0 ,
	pitch = 100 ,
	sound = { "^)jessev92/weapons/univ/auto_semiauto_switch.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/auto_semiauto_switch.wav" )

sound.Add( {
	name = "VNTCB.SWep.Empty1" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/empty1.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty1.wav" )

sound.Add( {
	name = "VNTCB.SWep.Empty2" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/empty2.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty2.wav" )

sound.Add( {
	name = "VNTCB.SWep.Empty3" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/Empty3.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty3.wav" )

sound.Add( {
	name = "VNTCB.SWep.Empty4" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/Empty4.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty4.wav" )

sound.Add( {
	name = "VNTCB.SWep.Empty5" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/Empty5.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty5.wav" )

sound.Add( {
	name = "VNTCB.SWep.Empty6" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/Empty6.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty6.wav" )

sound.Add( {
	name = "VNTCB.SWep.Grab1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/grab1.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/grab1.wav" )

sound.Add( {
	name = "VNTCB.SWep.Throw1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/throw1.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/throw1.wav" )

sound.Add( {
	name = "VNTCB.SWep.IronIn1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/weapons/univ/iron_in1.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/iron_in1.wav" )

sound.Add( {
	name = "VNTCB.SWep.IronOut1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/weapons/univ/iron_out1.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/iron_out1.wav" )

sound.Add( {
	name = "VNTCB.SWep.Draw1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95, 105 } ,
	sound = "jessev92/weapons/univ/draw1.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/draw1.wav" )

sound.Add( {
	name = "VNTCB.SWep.Draw2" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95, 105 } ,
	sound = "jessev92/weapons/univ/draw2.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/draw2.wav" )

sound.Add( {
	name = "VNTCB.SWep.Draw3" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95, 105 } ,
	sound = "jessev92/weapons/univ/draw3.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/draw3.wav" )

sound.Add( {
	name = "VNTCB.SWep.Holster1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95, 105 } ,
	sound = "jessev92/weapons/univ/holster1.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/holster1.wav" )

sound.Add( {
	name = "VNTCB.SWep.ZoomIn" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/univ/iron_in2.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/iron_in2.wav" )

sound.Add( {
	name = "VNTCB.SWep.ZoomOut" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/univ/iron_out2.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/iron_out2.wav" )

sound.Add( {
	name = "VNTCB.SWep.ZoomCycleIn" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 } ,
	sound = { "^)jessev92/weapons/univ/sniper_zoomchange.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/sniper_zoomchange.wav" )

sound.Add( {
	name = "VNTCB.SWep.ZoomCycleOut" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 110 } ,
	sound = { "^)jessev92/weapons/univ/sniper_zoomchange.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/sniper_zoomchange.wav" )

sound.Add( {
	name = "VNTCB.SWep.Melee.WhipHit" ,
	channel = CHAN_WEAPON ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/l4d2/player/melee/swing_weapon1.wav" , "^)jessev92/l4d2/player/melee/swing_weapon2.wav" }
} )
util.PrecacheSound( "jessev92/l4d2/player/melee/swing_weapon1.wav" )
util.PrecacheSound( "jessev92/l4d2/player/melee/swing_weapon2.wav" )

sound.Add( {
	name = "VNTCB.SWep.Melee.WhipMiss" ,
	channel = CHAN_WEAPON ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/l4d2/player/melee/swing_miss1.wav" , "^)jessev92/l4d2/player/melee/swing_miss2.wav" }
} )
util.PrecacheSound( "jessev92/l4d2/player/melee/swing_miss1.wav" )
util.PrecacheSound( "jessev92/l4d2/player/melee/swing_miss2.wav" )

sound.Add( {
	name = "VNTCB.SWep.Melee.HitFlesh" ,
	channel = CHAN_WEAPON ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/smodtac/weapons/knife/hit1.wav" , "^)jessev92/smodtac/weapons/knife/hit2.wav" , "^)jessev92/smodtac/weapons/knife/hit3.wav" , "^)jessev92/smodtac/weapons/knife/hit4.wav" }
} )
util.PrecacheSound( "jessev92/smodtac/weapons/knife/hit1.wav" )
util.PrecacheSound( "jessev92/smodtac/weapons/knife/hit2.wav" )
util.PrecacheSound( "jessev92/smodtac/weapons/knife/hit3.wav" )
util.PrecacheSound( "jessev92/smodtac/weapons/knife/hit4.wav" )

sound.Add( {
	name = "VNTCB.SWep.Melee.HitWall" ,
	channel = CHAN_WEAPON ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/smodtac/weapons/knife/hitwall.wav" }
} )
util.PrecacheSound( "jessev92/smodtac/weapons/knife/hitwall.wav" )

sound.Add( {
	name = "VNTCB.SWep.Melee.Slash" ,
	channel = CHAN_WEAPON ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 85 , 115 } ,
	sound = { "^)jessev92/smodtac/weapons/knife/slash1.wav" , "^)jessev92/smodtac/weapons/knife/slash2.wav" }
} )
util.PrecacheSound( "jessev92/smodtac/weapons/knife/slash1.wav" )
util.PrecacheSound( "jessev92/smodtac/weapons/knife/slash2.wav" )

sound.Add( {
	name = "Jam.Short.Rifle" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 0.25 ,
	--pitch		= { 95, 105 },
	sound = "^)jessev92/weapons/univ/jam1.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/jam1.wav" )

sound.Add( {
	name = "Jam.Long.Rifle" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 0.25 ,
	--pitch		= { 95, 105 },
	sound = "^)jessev92/weapons/univ/jam2.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/jam2.wav" )

sound.Add( {
	name = "Jam.Short.Pistol" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 0.25 ,
	--pitch		= { 95, 105 },
	sound = "^)jessev92/weapons/univ/jam3.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/jam3.wav" )

sound.Add( {
	name = "Jam.Long.Pistol" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 0.25 ,
	--pitch		= { 95, 105 },
	sound = "^)jessev92/weapons/univ/jam4.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/jam4.wav" )

sound.Add( {
	name = "DOOM1.E1M1" ,
	channel = CHAN_STATIC ,
	level = 0 ,
	volume = 1.0 ,
	sound = { "#jessev92/doom/1/music/e1m1_loop.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty1.wav" )
