AddCSLuaFile( )
------------------------------------------------------
--	Jesse V92's Custom NPC Base
--	Start Date:	2016/08/7
--	Purpose: Create a good non-SNPC base
------------------------------------------------------
--	Completely unfinished.
--	When in doubt, contact me.
------------------------------------------------------
ENT.Type = "point"
ENT.Spawnable = false
ENT.AdminOnly = true
------------------------------------------------------
--	Weapons usable by classes
------------------------------------------------------
local _CMBWEPS = { "weapon_smg1" , "weapon_ar2" }
local _COPWEPS = { "weapon_stunstick" , "weapon_pistol" , "weapon_smg1" }
local _REBWEPS = { "weapon_smg1" , "weapon_ar2" , "weapon_shotgun" , "weapon_pistol" }
local _REBHVYWEPS = { "weapon_rpg" }
local _CMBHVYWEPS = { "weapon_rpg" }
------------------------------------------------------
--	NPC class relation tables
------------------------------------------------------
local _CITCLASSES = { "npc_citizen" , "npc_alyx" , "npc_barney" , "npc_eli" , "npc_mossman" , "npc_magnusson" , "npc_kleiner" , "npc_monk" }
local _CMBCLASSES = { "npc_combine_s" , "npc_breen" , "npc_stalker" , "npc_metropolice" , "npc_mossman" , "npc_magnusson" , "npc_kleiner" , "npc_monk" }
local _SCANCLASSES = { "npc_cscanner" , "npc_clawscanner" }
local _SYNCLASSES = { "npc_hunter" , "npc_strider" }
local _BIRDCLASSES = { "npc_crow" , "npc_pigeon" , "npc_seagull" }
local _UNSEENCLASSES = { "npc_gman" }
------------------------------------------------------
--	Citizen Settings
------------------------------------------------------
local _CITCLASSES = ( math.random( 0 , 3 ) )
local _GIVEAMMO = false
local _GIVEAMMOTYPE = { "pistol" , "smg1" , "ar2" , "buckshot" , "rpg_round" , "grenade" , "xbow_bolt" }
local _EXPRESSION = { "Random" , "Scared" , "Normal" , "Angry" }
------------------------------------------------------
--	Group settings
------------------------------------------------------
local _GROUPCOUNT = 5
------------------------------------------------------
--	Type Settings
------------------------------------------------------
local _NPCTYPE = 1 --	1=Citizens, 2=Combine Soldiers
local _COMMANDABLE = false
local _PRELATION_REB = { "models/player/alyx.mdl" , "models/player/barney.mdl" , "models/player/eli.mdl" , "models/player/kleiner.mdl" , "models/player/magnusson.mdl" , "models/player/monk.mdl" , "models/player/mossman.mdl" , "models/player/mossman_arctic.mdl" , "models/player/odessa.mdl" , "models/player/group02/male_02.mdl" , "models/player/group02/male_04.mdl" , "models/player/group02/male_06.mdl" , "models/player/group02/male_08.mdl" , "models/player/group03/female_01.mdl" , "models/player/group03/female_02.mdl" , "models/player/group03/female_03.mdl" , "models/player/group03/female_04.mdl" , "models/player/group03/female_05.mdl" , "models/player/group03/female_06.mdl" , "models/player/group03/male_01.mdl" , "models/player/group03/male_02.mdl" , "models/player/group03/male_03.mdl" , "models/player/group03/male_04.mdl" , "models/player/group03/male_05.mdl" , "models/player/group03/male_06.mdl" , "models/player/group03/male_07.mdl" , "models/player/group03/male_08.mdl" , "models/player/group03/male_09.mdl" , "models/player/group03m/female_01.mdl" , "models/player/group03m/female_02.mdl" , "models/player/group03m/female_03.mdl" , "models/player/group03m/female_04.mdl" , "models/player/group03m/female_05.mdl" , "models/player/group03m/female_06.mdl" , "models/player/group03m/male_01.mdl" , "models/player/group03m/male_02.mdl" , "models/player/group03m/male_03.mdl" , "models/player/group03m/male_04.mdl" , "models/player/group03m/male_05.mdl" , "models/player/group03m/male_06.mdl" , "models/player/group03m/male_07.mdl" , "models/player/group03m/male_08.mdl" , "models/player/group03m/male_09.mdl" , "models/player/p2_chell.mdl" }
--	Leaders
--	Refugees
--	Rebels
--	Rebel Medics
--	Other
local _PRELATION_CMB = { "models/player/combine_soldier.mdl" , "models/player/combine_soldier_prisonguard.mdl" , "models/player/combine_super_soldier.mdl" , "models/player/police.mdl" , "models/player/police_fem.mdl" , "models/player/soldier_stripped.mdl" }
local _PRELATION_ZMB = { "models/player/charple.mdl" , "models/player/corpse1.mdl" , "models/player/skeleton.mdl" , "models/player/zombie_classic.mdl" , "models/player/zombie_fast.mdl" , "models/player/zombie_soldier.mdl" }
local _PRELATION_CSC = { "models/player/gasmask.mdl" , "models/player/riot.mdl" , "models/player/swat.mdl" , "models/player/urban.mdl" }
local _PRELATION_CST = { "models/player/arctic.mdl" , "models/player/leet.mdl" , "models/player/guerilla.mdl" , "models/player/phoenix.mdl" }
local _PRELATION_CSH = { "models/player/hostages/hostage_01.mdl" , "models/player/hostages/hostage_02.mdl" , "models/player/hostages/hostage_03.mdl" , "models/player/hostages/hostage_04.mdl" }

if CLIENT then
	ENT.PrintName = "NPCG Base"
	ENT.Author = "V92"
	ENT.Information = "Base for NPCGroup Entities"
	ENT.Category = "92nd Dev Unit"
else
	function ENT:Initialize( )
		--	This is our root key value number, we need this to figure out the base 2 of our settings
		self.kvNum = 0

		if _NPCTYPE == 1 then
			local rebMedicDiceRoll = math.random( 1 , GetConVarNumber( "npcg_chance_medic" ) )

			if rebMedicDiceRoll == 1 then
				self.medicChance = 131072
			else
				self.medicChance = 0
			end

			local rebSupplyDiceRoll = math.random( 1 , GetConVarNumber( "npcg_chance_supplier" ) )

			if rebSupplyDiceRoll == 1 then
				self.resupplyChance = 524288
			else
				self.resupplyChance = 0
			end
		elseif _NPCTYPE == 2 then
			if ConVarExists( "npcg_cmbdropgren" ) and GetConVarNumber( "npcg_cmbdropgren" ) == 0 then
				self.grenadeChance = 131072
			else
				self.grenadeChance = 0
			end

			if ConVarExists( "npcg_cmbdropar2" ) and GetConVarNumber( "npcg_cmbdropar2" ) == 0 then
				self.ar2DropChance = 262144
			else
				self.ar2DropChance = 0
			end
		end

		if ConVarExists( "npcg_longvis" ) and GetConVarNumber( "npcg_longvis" ) ~= 0 then
			self.longNum = 256
		else
			self.longNum = 0
		end

		if ConVarExists( "npcg_fade_corpse" ) and GetConVarNumber( "npcg_fade_corpse" ) ~= 0 then
			self.fadeNum = 512
		else
			self.fadeNum = 0
		end

		if ConVarExists( "npcg_weapondrop" ) and GetConVarNumber( "npcg_weapondrop" ) ~= 0 then
			self.weaponNum = 8192
		else
			self.weaponNum = 0
		end

		if ConVarExists( "npcg_ignorepushing" ) and GetConVarNumber( "npcg_ignorepushing" ) ~= 0 then
			self.pushNum = 16384
		else
			self.pushNum = 0
		end

		if ConVarExists( "npcg_random_rebels" ) and GetConVarNumber( "npcg_random_rebels" ) ~= 0 then
			self.randomModel = 262144
		else
			self.randomModel = 0
		end

		if ConVarExists( "npcg_ar2altdrop" ) and GetConVarNumber( "npcg_ar2altdrop" ) ~= 0 then
			self.ar2AltDrop = 393732
		else
			self.ar2AltDrop = 0
		end

		if ConVarExists( "npcg_commandable" ) and GetConVarNumber( "npcg_commandable" ) == 0 then
			self.commandable = 1048576
		else
			self.commandable = 0
		end
	end
end