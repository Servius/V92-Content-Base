

--	THIS FILE WILL BE REMOVED IN THE FUTURE WHEN I REWRITE IT
--	CONCERN YOURSELF WITH SH_V92SCarBases.lua INSTEAD


AddCSLuaFile()

local veh = nil
local isScarSeat = nil
local SCar = nil
local plyAng = nil
local vehAng = nil
local function SCarOverrideTurretAnim( ply, ent )

	--print( "SCarOverrideTurretAnim" )
	--Checking if the player is in a vehicle
    if ply:InVehicle() then 
		//Msg("Checked In Vehicle\n")
			
		--Getting the vehicle
		veh = ply:GetVehicle()
		
		--Is the vehicle a seat in a SCar?
		isScarSeat = veh:GetNetworkedInt( "SCarSeat" )
		
		--Getting the SCar
		SCar = veh:GetNetworkedEntity("SCarEnt")

		--print( "TurretAnim - is In SCar" )
		------------------------------
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsTurretSeat") then
			--print( "TurretAnim - IsTurretSeat" )
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-13,0,-39) )
			
			/*
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			*/
			--//Overriding the animation here
			--ply.CalcSeqOverride = ply:LookupSequence( "Man_gun" )
			--ply.CalcSeqOverride = ply:LookupSequence( ACT_HL2MP_IDLE_DUEL )
			--ply.CalcSeqOverride = ply:LookupSequence( "idle_dual" )
			--ply.CalcSeqOverride = ply:LookupSequence( "1745" ) 
			--ply:SetSequence( ply.CalcSeqOverride )	
			ply:DoAnimationEvent( 0 ) --ACT_HL2MP_IDLE_DUEL )	
			--ply:AnimRestartGesture( 6, 1898, false ) --ACT_HL2MP_IDLE_DUEL )	
			--ply:SetAnimation( 1847 )	
			return true
			--print( "something" )
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsTurretSeatTwo") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-2,0,-27) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsTurretSeatThree") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-2,0,-18) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsTurretSeatFour") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-2,0,-32) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsTurretSeatFive") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(4,0,-26) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsTurretSeatSix") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(4,0,-21) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsTurretSeatSeven") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(4,0,-37) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsTurretSeatEight") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-2,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsTurretSeatNine") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(-2,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsTurretSeatTen") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-2,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_REVOLVER )	
			return true
		end
		
		------------------------------
		------------------------------
		------------------------------
		
		if  isScarSeat == 3 and veh:GetNetworkedBool("IsCmdTurretSeat") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-5,0,-18) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "CmdTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("IsCmdTurretSeatTwo") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(1,0,-25) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "CmdTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("IsCmdTurretSeatThree") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-5,0,-18) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_REVOLVER )	
			return true
		end
    	
		------------------------------
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsSeatedGunner") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(0,0,-4) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsSeatedGunnerTwo") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(0,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsSeatedGunnerThree") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-8,0,-12) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsSeatedGunnerFour") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-6,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsSeatedGunnerFive") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(1,0,-25) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "CmdTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		------------------------------
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsLeftTurret") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(0,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "LeftTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end	
		if  isScarSeat == 3 and veh:GetNetworkedBool("IsRightTurret") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(0,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "RightTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
	
		------------------------------
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsRavLmgTwo") then
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(0,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "LmgTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end				
		if  isScarSeat == 3 and veh:GetNetworkedBool("IsRavLmgThree") then
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(0,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "LmgTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsRavSeatGlTwo") then
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(0,0,-30) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "GlTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		if  isScarSeat == 3 and veh:GetNetworkedBool("IsRavSeatGlThree") then
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(0,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "GlTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
	
		------------------------------
		------------------------------
		------------------------------
		
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsRLMG42Fr") then
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-16,0,-39) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "FrontTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end			
		if  isScarSeat == 3 and veh:GetNetworkedBool("IsRLMG42Bk") then
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-6,0,-39) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "RearTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )	
			return true
		end
		
		------------------------------
		------------------------------
		------------------------------
		
		if  isScarSeat == 1 and veh:GetNetworkedBool("IsGunnerCrouch") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-10,0,-30) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "SCarEntTankPipe" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )	
			return true
		end		
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsGunnerCrouchTwo") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-0,10,-25) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "SCarEntTankPipe" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )	
			return true
		end
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsGunnerCrouchThree") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(-0,-20,-25) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "SCarEntTankPipe" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )	
			return true
		end
	
		if  isScarSeat == 1 and veh:GetNetworkedBool("IsHowitGunner") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(1,0,-25) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "CmdTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end	
		if  isScarSeat == 2 and veh:GetNetworkedBool("IsHowitGunnerTwo") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			--ply:SetLocalPos( Vector(1,0,-25) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "CmdTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
		
		if  isScarSeat == 3 and veh:GetNetworkedBool("IsTailbedCrouch") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(5,0,-15) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			--plyAng = SCar:GetNetworkedEntity( "RightTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			--vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			--plyAng.p = vehAng.p 
			--Use the vehicles roll
			--plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			--plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			--ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )	
			return true
		end
		
		if  isScarSeat == 4 and veh:GetNetworkedBool("IsCougarGunner") then
				
			//Msg("Checked Seat 2\n")
			--Compensating for the position offset the animation will add
			ply:SetLocalPos( Vector(0,0,0) )
			
			--Making the player face the direction of the turret.
			
			--Getting the angle from the turret
			plyAng = SCar:GetNetworkedEntity( "JeepTurret" ):GetAngles() 
			
			--Getting the angle from the vehicle
			vehAng = SCar:GetAngles() 
			
			--Use the vehicles pitch
			plyAng.p = vehAng.p 
			--Use the vehicles roll
			plyAng.r = vehAng.r 
			
			--You may have to adjust an offset later with your man_gun animation. Just replace SOME_OFFSET with the degrees you need.
			plyAng.y = vehAng.y --+ SOME_OFFSET
			
			--ply:SetAngles( plyAng )
			ply:SetAngles( plyAng )
			
			--//Overriding the animation here	
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )	
			return true
		end
	
	end
	
end
hook.Add("UpdateAnimation", "SCarOverrideTurretAnim", SCarOverrideTurretAnim)
