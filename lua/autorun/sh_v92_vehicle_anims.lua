---------------------------------------------
---------------------------------------------
--		ANIMATIONS
---------------------------------------------
---------------------------------------------
--	Going to clean that messy other animation file and move it here
local veh = nil
local isScarSeat = nil
local SCar = nil
local plyAng = nil
local vehAng = nil

local function SCarOverrideTurretAnim( ply , ent )
	if ply:InVehicle( ) then
		veh = ply:GetVehicle( )
		isScarSeat = veh:GetNetworkedInt( "SCarSeat" )
		SCar = veh:GetNetworkedEntity( "SCarEnt" )

		------------------------------
		------------------------------
		--	Non-Rotating Animations
		------------------------------
		------------------------------
		------------------------------
		------------------------------
		--	Standing, Revolver
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "SCASeat2StandRevolver" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_REVOLVER )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3StandRevolver" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_REVOLVER )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "SCASeat4StandRevolver" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_REVOLVER )

			return true
		end

		------------------------------
		------------------------------
		--	Standing, Dual
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "SCASeat2StandDual" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3StandDual" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "SCASeat4StandDual" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		------------------------------
		------------------------------
		--	Standing, Fists
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "SCASeat2StandFist" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_FIST )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3StandFist" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_FIST )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "SCASeat4StandFist" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_FIST )

			return true
		end

		------------------------------
		------------------------------
		--	Seated, Fists
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "SCASeat2SeatedFist" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3SeatedFist" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "SCASeat4SeatedFist" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		------------------------------
		------------------------------
		--	Seated, Revolver
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "SCASeat2SeatedRevolver" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3SeatedRevolver" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3SeatedRevolver" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmd2Turret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "SCASeat4SeatedRevolver" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_SIT_FIST )

			return true
		end

		------------------------------
		------------------------------
		--	Crouching, Passive
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "SCASeat2CrouchGen" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3CrouchGen" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "SCASeat4CrouchGen" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )

			return true
		end

		if isScarSeat == 5 and veh:GetNetworkedBool( "SCASeat5CrouchGen" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )

			return true
		end

		if isScarSeat == 6 and veh:GetNetworkedBool( "SCASeat6CrouchGen" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )

			return true
		end

		if isScarSeat == 7 and veh:GetNetworkedBool( "SCASeat6CrouchGen" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_CROUCH )

			return true
		end

		------------------------------
		------------------------------
		--	Seated, Zen
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "SCASeat2SitZen" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			ply:DoAnimationEvent( "sit_zen" )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3SitZen" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			ply:DoAnimationEvent( "sit_zen" )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "SCASeat4SitZen" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			ply:DoAnimationEvent( "sit_zen" )

			return true
		end

		------------------------------
		------------------------------
		--	Rotating Animations
		------------------------------
		------------------------------
		------------------------------
		------------------------------
		--	Standing, Revolver
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "SCASeat2StandRevolverRot" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower" ):GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_REVOLVER )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3StandRevolverRot" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower" ):GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_REVOLVER )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "SCASeat4StandRevolverRot" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower" ):GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_REVOLVER )

			return true
		end

		------------------------------
		------------------------------
		--	Standing, Dual
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "SCASeat2StandDualRot" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower" ):GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3StandDualRot" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower" ):GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "SCASeat4StandDualRot" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower" ):GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_DUEL )

			return true
		end

		------------------------------
		------------------------------
		--	Standing, Fists
		------------------------------
		------------------------------
		if isScarSeat == 2 and veh:GetNetworkedBool( "SCASeat2StandFistRot" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower" ):GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_FIST )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3StandFistRot" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower" ):GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_FIST )

			return true
		end

		if isScarSeat == 3 and veh:GetNetworkedBool( "SCASeat3StandFistRot2" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWERearTurret" ):GetAngles( )
			vehAng = SCar:GetNetworkedEntity( "NWERearTower" ):GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_FIST )

			return true
		end

		if isScarSeat == 4 and veh:GetNetworkedBool( "SCASeat4StandFistRot" ) then
			ply:SetLocalPos( Vector( 0 , 0 , 0 ) )
			plyAng = SCar:GetNetworkedEntity( "NWECmdTurret" ):GetAngles( )
			vehAng = SCar:GetNetworkedEntity( "NWECmdTower" ):GetAngles( )
			plyAng.p = vehAng.p
			plyAng.r = vehAng.r
			plyAng.y = vehAng.y
			ply:SetAngles( plyAng )
			ply:DoAnimationEvent( ACT_HL2MP_IDLE_FIST )

			return true
		end
	end
end

hook.Add( "UpdateAnimation" , "SCarOverrideTurretAnim" , SCarOverrideTurretAnim )