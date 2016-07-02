
AddCSLuaFile()

--	Note to reader:
--	I commented out a lot of these because GMod has a hard-coded limit to ammo types.
--	If you want to add these types back into your game, uncomment them.
--	Feel free to make your own SWeps based off my base or use these ammo types!

if !ConVarExists("VNT_Debug_Prints") then	CreateClientConVar( "VNT_Debug_Prints", '0', true, false )	end
if GetConVarNumber( "VNT_Debug_Prints" ) != 0 then	print("[V92] autorun/sh_ammotypes_v92.lua Loading...")	end

--	Siminov
--game.AddAmmoType(	{	name	=	"ninemmgerman",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"ninemmrussian",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"ninebythirtynine",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"fourtyfiveacp",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"fivefourfive",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"fivefivesix",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"sevensixtwobyfiftyone",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"sevensixtwobyfiftyfour",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"sevensixtwoshort",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"shotgunshell",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"fraggrenade",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"fraggrenaderus",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"smokegrenade",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"fourtymmgrenade",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"arpeegee",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"fiftysmith",	dmgtype	=	DMG_BULLET	}	)

--	V92 Ammo Types

--	Calibre
--game.AddAmmoType(	{	name	=	"223remington",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"38special",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"40sw",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"45acp",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"50ae",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"500sw",	dmgtype	=	DMG_BULLET	}	)

--	NATO / Millimetre
game.AddAmmoType(	{	name	=	"46x30mm",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"57x28mm",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"9x19mmnato",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"10mmauto",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"556x45mmnato",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"762x51mmnato",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"50bmgnato",	dmgtype	=	DMG_BULLET	}	)

--	Grenades & Rockets
--game.AddAmmoType(	{	name	=	"m18grenade",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"m67grenade",	dmgtype	=	DMG_BLAST	}	)
--game.AddAmmoType(	{	name	=	"40x46mmgrenade",	dmgtype	=	DMG_BLAST	}	)
--game.AddAmmoType(	{	name	=	"matador",	dmgtype	=	DMG_BLAST	}	)
--game.AddAmmoType(	{	name	=	"mrrl",	dmgtype	=	DMG_BLAST	}	)
--game.AddAmmoType(	{	name	=	"90mmrpg",	dmgtype	=	DMG_BLAST	}	)
game.AddAmmoType(	{	name	=	"grnlnchr",	dmgtype	=	DMG_BLAST	}	)
game.AddAmmoType(	{	name	=	"rktlnchr",	dmgtype	=	DMG_BLAST	}	)

--	Explosives & IEDs
--game.AddAmmoType(	{	name	=	"c4",	dmgtype	=	DMG_BLAST	}	)
--game.AddAmmoType(	{	name	=	"m15antivehicle",	dmgtype	=	DMG_BLAST	}	)
--game.AddAmmoType(	{	name	=	"m18claymore",	dmgtype	=	DMG_BLAST	}	)
--game.AddAmmoType(	{	name	=	"mineantitank",	dmgtype	=	DMG_BLAST	}	)
--game.AddAmmoType(	{	name	=	"mineclaymore",	dmgtype	=	DMG_BLAST	}	)
--game.AddAmmoType(	{	name	=	"ied",	dmgtype	=	DMG_BLAST	}	)

--	12 Gauge
game.AddAmmoType(	{	name	=	"12gauge",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"12gaugeslug",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"12gaugeap",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"12gaugeinc",	dmgtype	=	DMG_BULLET	}	)

--	20 Gauge
--game.AddAmmoType(	{	name	=	"20gauge",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"20gaugeslug",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"20gaugeap",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"20gaugeinc",	dmgtype	=	DMG_BULLET	}	)

--game.AddAmmoType(	{	name	=	"68x43mm",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"68mmcl",	dmgtype	=	DMG_BULLET	}	)

--	Black Powder
--game.AddAmmoType(	{	name	=	"36ball",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"41short",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"44henry",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"4570",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"45colt",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"5090sharps",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"50smith",	dmgtype	=	DMG_BULLET	}	)

--	Warsaw Pact
game.AddAmmoType(	{	name	=	"9x18mmwp",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"545x39mmwp",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"762x25mmwp",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"762x39mmwp",	dmgtype	=	DMG_BULLET	}	)
game.AddAmmoType(	{	name	=	"762x54mmwp",	dmgtype	=	DMG_BULLET	}	)
--game.AddAmmoType(	{	name	=	"rgd5grenade",	dmgtype	=	DMG_BLAST	}	)
--game.AddAmmoType(	{	name	=	"rpg7rocket",	dmgtype	=	DMG_BLAST	}	)

--	Tools
--game.AddAmmoType(	{	name	=	"torchbatteries",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"designatorbatteries",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"medbag",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"ammobag",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"batteries",	dmgtype	=	DMG_GENERIC	}	)

--	Projectiles
--game.AddAmmoType(	{	name	=	"sogtomahawk",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"coltknife",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"kunai",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"kunaipoison",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"ninjastar",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"ninjastarpoison",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"arrow",	dmgtype	=	DMG_GENERIC	}	)
--game.AddAmmoType(	{	name	=	"arrowpoison",	dmgtype	=	DMG_GENERIC	}	)

if CLIENT then

	--	V92 Equipment Ammo
	language.Add("torchbatteries_ammo", "Torch Batteries")		
	language.Add("designatorbatteries_ammo", "Designator Batteries")		
	language.Add("batteries_ammo", "Batteries")		
	language.Add("medbag_ammo", "Med Bags")		
	language.Add("ammobag_ammo", "Ammo Bags")				
	language.Add("grnlnchr_ammo", "Grenade Launcher Shells")				
	language.Add("rktlnchr_ammo", "Rocket Launcher Missiles")				
	
	--	V92 NATO Ammo
	language.Add("40sw_ammo", ".40 S&W Ammo")		
	language.Add("45acp_ammo", ".45 ACP Ammo")		
	language.Add("50ae_ammo", ".50 AE Ammo")		
	language.Add("9x19mmnato_ammo", "9x19mm NATO Ammo")		
	language.Add("10mmauto_ammo", "10mm Auto Ammo")		
	language.Add("556x45mmnato_ammo", "5.56x45mm NATO Ammo")		
	language.Add("762x51mmnato_ammo", "7.62x51mm NATO Ammo")		
	language.Add("50bmgnato_ammo", ".50 BMG NATO Ammo")		
	language.Add("68x43mm_ammo", "6.8x43mm Ammo")		
	language.Add("68mmcl_ammo", "6.8mm Caseless Ammo")		
	language.Add("40x46mmgrenade_ammo", "40x46mm Grenade Launcher Ammo")		
	language.Add("matador_ammo", "MATADOR Units")		
	language.Add("mrrl_ammo", "MRRL Rockets")		
	language.Add("m18grenade_ammo", "M18 Smoke Grenades")		
	language.Add("m67grenade_ammo", "M67 Frag Grenades")		
	language.Add("12gauge_ammo", ".12G Shotgun Shells")		
	
	--	V92	Warsaw Pact Ammo
	language.Add("9x18mmwp_ammo", "9x18mm WP Ammo")		
	language.Add("545x39mmwp_ammo", "5.45x39mm WP Ammo")		
	language.Add("762x25mmwp_ammo", "7.62x25mm WP Ammo")		
	language.Add("762x39mmwp_ammo", "7.62x39mm WP Ammo")		
	language.Add("762x54mmwp_ammo", "7.62x54mm WP Ammo")		
	language.Add("rgd5grenade_ammo", "RGD5 Frag Grenades")		
	language.Add("rpg7rocket_ammo", "RPG7 Rockets")		
	
	--	Siminov Ammo
	language.Add("fourtymmgrenade_ammo", "40mm Grenade Ammo")						
	language.Add("shotgunfx_shell_ammo", ".12 Gauge Shells")				
	language.Add("sevensixtwobyfiftyone_ammo", "7.62x51mm NATO Ammo")				
	language.Add("sevensixtwoshort_ammo", "7.62mm Short Ammo")
	language.Add("sevensixtwobyfiftyfour_ammo", "7.62x54mm Ammo")	
	language.Add("sevensixtwopistol_ammo", "7.62mm Pistol Ammo")	
	language.Add("fivefivesix_ammo", "5.56mm NATO Ammo")
	language.Add("fivefourfive_ammo", "5.45mm Ammo")					
	language.Add("fiftybmg_ammo", ".50BMG Ammo")						
	language.Add("fiftyae_ammo", ".50AE Ammo")
	language.Add("fourtyfiveacp_ammo", ".45ACP Ammo")
	language.Add("fiveseven_ammo", "5.7mm Ammo")
	language.Add("tenmmauto_ammo", "10mm Auto Ammo")							
	language.Add("ninemmgerman_ammo", "9mm Ammo")
	language.Add("ninemmshort_ammo", "9mm Short Ammo")
	language.Add("ninemmrussian_ammo", "9mm Russian Ammo")
	language.Add("flaregrenade_ammo", "Flare Grenade")	
	language.Add("flashgrenade_ammo", "Flashbang")					
	language.Add("fraggrenade_ammo", "M67 Frag Grenade")
	language.Add("smokegrenade_ammo", "M18 Smoke Grenade")
	language.Add("fraggrenaderus_ammo", "RDG5 Frag Grenade")
	language.Add("arpeegee_ammo", "RPG")
	language.Add("90mmrpg", "90mm RPG")
	language.Add("weapon_ins_sim_ent_rpg_round", "RPG Round")
	language.Add("weapon_ins_sim_ent_m203_round", "40mm Round")

end

if GetConVarNumber( "VNT_Debug_Prints" ) != 0 then	print("[V92] autorun/sh_ammotypes_v92.lua Loaded!")	end