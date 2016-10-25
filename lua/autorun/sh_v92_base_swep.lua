
---------------------------------------------
---------------------------------------------
--	V92 SWep Bases Lua Autorun Shit
--	This is stuff for:
--	Lua/weapons/v92_base_swep.lua
---------------------------------------------
---------------------------------------------

---------------------------------------------
---------------------------------------------
--	Weapon Slot Types
--	Used in my Weapon Slot plugin
--	X-project
---------------------------------------------
---------------------------------------------

VNTType = VNTType or { 
	Primary , 
	Secondary , 
	GrenadeOne , 
	GrenadeTwo , 
	Mine , 
	Melee , 
	Supply , 
	None ,
}

---------------------------------------------
---------------------------------------------
--	Grenade/Rocket Launcher Entities
---------------------------------------------
---------------------------------------------

VNTGLType = VNTGLType or {
	GLUS = "v92proj_40x46mm" ,
	GLRU = "v92proj_vog25" ,
	AMBAZRKT = "v92proj_am_bazrkt" ,
}

---------------------------------------------
---------------------------------------------
--	Weapon Types
---------------------------------------------
---------------------------------------------

VNTWType = VNTWType or {
	Melee = 1 ,
	Pistol = 2 ,
	Revolver = 2 ,
	Dual = 2 ,
	SMG = 3 ,
	Carbine = 3 ,
	Rifle = 3 ,
	LMG = 3 ,
	Shotgun = 4 ,
	Sniper = 5 ,
	GLauncher = 6 ,
	RLauncher = 7 ,
	Support = 8
}

---------------------------------------------
---------------------------------------------
--	Weapon Hold Types
---------------------------------------------
---------------------------------------------

VNTHType = VNTHType or {
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
		"smg" , -- 5 = Reloading
		"ar2" , -- 6 = Crouched Reloading
		"ar2" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["Rifle"] = { -- 0 = Name
		"ar2" , -- 1 = Standard
		"rpg" , -- 2 = Ironsighted
		"ar2" , -- 3 = Crouched
		"ar2" , -- 4 = Crouched Ironsighted
		"smg" , -- 5 = Reloading
		"ar2" , -- 6 = Crouched Reloading
		"ar2" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
	} , 
	["LMG"] = { -- 0 = Name
		"ar2" , -- 1 = Standard
		"ar2" , -- 2 = Ironsighted
		"ar2" , -- 3 = Crouched
		"rpg" , -- 4 = Crouched Ironsighted
		"smg" , -- 5 = Reloading
		"ar2" , -- 6 = Crouched Reloading
		"ar2" , -- 7 = Prone
		"passive" , -- 8 = Holstered
		"normal" , -- 9 = Holstered Crouched
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
		"smg" , -- 5 = Reloading
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
		"ar2" , -- 6 = Crouched Reloading
		"ar2" , -- 7 = Prone
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
		"normal" , -- 1 = Standard
		"slam" , -- 2 = Ironsighted
		"normal" , -- 3 = Crouched
		"slam" , -- 4 = Crouched Ironsighted
		"fists" , -- 5 = Reloading
		"fists" , -- 6 = Crouched Reloading
		"slam" , -- 7 = Prone
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

VNTBucket = VNTBucket or {
	Melee = 0 ,
	Tool = 0 ,
	Utility = 0 ,
	Pistol = 1 ,
	Revolver = 1 ,
	Dual = 1 ,
	SMG = 2 ,
	Carbine = 2 ,
	Rifle = 2 ,
	LMG = 2 ,
	Sniper = 2 ,
	Shotgun = 2 ,
	Grenade = 3 ,
	Mine = 3 ,
	Explosive = 3 ,
	Support = 3 ,
	Launcher = 4
}

---------------------------------------------
---------------------------------------------
--	Bucket Slots
---------------------------------------------
---------------------------------------------

VNTSlot = VNTSlot or {
	Melee = 16 ,
	Tool = 24 ,
	Utility = 64 ,
	Pistol = 16 ,
	Revolver = 32 ,
	Dual = 48 ,
	SMG = 16 ,
	Carbine = 24 ,
	Rifle = 32 ,
	LMG = 48 ,
	Sniper = 64 ,
	Shotgun = 72 ,
	Grenade = 16 ,
	Mine = 24 ,
	Explosive = 32 ,
	Support = 48 ,
	Launcher = 16
}

---------------------------------------------
---------------------------------------------
--	Weapon Manufacturers 
--	Used in my Weapon Information Menu
---------------------------------------------
---------------------------------------------
VNTMaker = VNTMaker or {
	--	America
	CLT = "Colt's Manufacturing Company" ,
	BRO = "Browning Arms Company" ,
	SPR = "Springfield Armoury, Inc." ,
	WIN = "Winchester Repeating Arms Company" ,
	REM = "Remington Arms Company" ,
	ZM = "Z-M Weapons" ,
	KIM = "Kimber Manufacturing" ,
	SOG = "SOG Specialty Knives" ,
	CLNWC = "China Lake Naval Weapons Center" ,
	--	Europe
	HK = "Heckler & Koch G.m.b.H." ,
	BT = "Brugger & Thomet" ,
	GLK = "Glock Ges.m.b.H." ,
	CZ = "Czech Arms Factory" ,
	STY = "Steyr Mannlicher" ,
	BEN = "Benelli Arms S.p.A." ,
	FRC = "Franchi S.p.A." ,
	BER = "Beretta Arms Factory" ,
	SIG = "SIG Sauer" ,
	FN = "FN Herstal" ,
	STR = "Star Bonifacio Echeverria, S.A." ,
	--	Middle-East
	IMI = "Israel Military Industries" ,
	--	Pan-Asian Coalition
	NOR = "China North Industries Corporation" ,
	TUL = "Tula Arms Plant" ,
	IZH = "Izhevsk Mechanical Plant" ,
	--	Half-Life 2
	REB = "Lambda Resistance" ,
	CMB = "Universal Union" ,
	--	Catch-22
	VNT = "Vanover Design Bureau" ,
	UNK = "Unknown" ,
	VAR = "Various" ,
	--	Halo
	MIS = "Misriah Armoury" ,
	ARMAUNSC = "Armalite MG" ,
	WST = "Weapon System Technologies" ,
	--	Army Men
	AMGRN = "Green Nation" ,
	AMTAN = "Tan Nation" ,
	AMGRY = "Grey Nation" ,
	AMBLU = "Blue Nation" ,
	AMPRX = "Plastic Nation" ,
}

---------------------------------------------
---------------------------------------------
--	Countries of Origin
--	ISO 3166-1 alpha-3
--	https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3
--	Used in my Weapon Information Menu
---------------------------------------------
---------------------------------------------

VNTCountry = VNTCountry or {
	USA = "United States" ,
	SUN = "Soviet Union" ,
	ITA = "Italy" ,
	ESP = "Spain" ,
	DEU = "Germany" ,
	DEW = "West Germany" ,
	DDR = "East Germany" ,
	CHN = "China" ,
	BEL = "Belgium" ,
	AUT = "Austria" ,
	ISR = "Israel" ,
	CSK = "Czechoslovakia" ,
	CZE = "Czech Republic" ,
	VAR = "Various" ,
	EAR = "Earth" ,
	MAR = "Mars" ,
	AMGRN = "Green Nation" ,
	AMTAN = "Tan Nation" ,
	AMGRY = "Grey Nation" ,
	AMBLU = "Blue Nation" ,
	AMPRX = "Plastic Nation" ,
}

---------------------------------------------
---------------------------------------------
--	Weapon Magazine Types
--	Used in my Weapon Magazine Plugin
--	Mag/clip name, number of mags/clips owned, number of rounds in mag, mag "self-destructs" on use
--	All can be overridden in SWeps
---------------------------------------------
---------------------------------------------

VNTMagazine = VNTMagazine or {
	["mMP7"] = { "HK 4.6x30mm MP7 Magazine" , 0 , 20 , false } ,
	["m38SC"] = { ".38 Special Moon Clip" , 0 , 6 , true } ,
	["mM1911"] = { "M1911 Magazine" , 0 , 7 , false } ,
	["mP22045"] = { "P220 .45 ACP Magazine" , 0 , 8 , false } ,
	["mMStar45"] = { "Star Megastar .45 ACP Magazine" , 0 , 12 , false } ,
	["mTMP"] = { "TMP/MP9 Magazine" , 0 , 30 , false } ,
	["mIMI556"] = { "IMI 5.56x45mm Magazine" , 0 , 50 , false } ,
	["mHK556"] = { "HK 5.56x45mm Magazine" , 0 , 25 , false } ,
	["mHK762"] = { "HK 7.62x51mm Magazine" , 0 , 30 , false } ,
	["mUSP9"] = { "HK 9x19mm USP Magazine" , 0 , 15 , false } ,
	["mUSP40"] = { "HK .40 S&W USP Magazine" , 0 , 13 , false } ,
	["mMP5"] = { "HK MP5 Magazine" , 0 , 30 , false } ,
	["m92FS"] = { "Beretta 9x19mm Magazine" , 0 , 15 , false } ,
	["mSIG556"] = { "5.56 SIG Magazine" , 0 , 30 , false } ,
	["mNATO556"] = { "5.56 STANAG" , 0 , 30 , false } ,
	["mNATO762"] = { "7.62 STANAG" , 0 , 20 , false } ,
	["m40x46"] = { "40x46mm NATO Grenade Launcher Shell" , 0 , 1 , true } ,
	["mM40"] = { "M40 Magazine" , 0 , 5 , false } ,
	["mBARMk2"] = { "BAR Mk.II Magazine" , 0 , 10 , false } ,
	["mShotgun"] = { "Shotgun Shell" , 1 , 1 , true } ,
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
	["mBazooka"] = { "Bazooka Rockets" , 0 , 1 , true } ,
	["magBAR"] = { "BAR .30-06 Magazine" , 0 , 20 , false } ,
}

---------------------------------------------
---------------------------------------------
--	Ammo Types
--	Used across all my weapon packs
--	Damage, Strong Material Penetration, Weak Material Penetration
---------------------------------------------
---------------------------------------------

VNTAmmo = VNTAmmo or {
	a38S = { 38 , 9 , 12 } ,
	a3006 = { 92 , 45 , 50 } ,
	a40SW = { 40 , 12 , 15 } ,
	a45ACP = { 45 , 13 , 16 } ,
	a50BMG = { 150 , 50 , 75 } ,
	a50AE = { 50 , 50 , 75 } ,
	aMP7 = { 30 , 9 , 12 } ,
	a57 = { 28 , 9 , 12 } ,
	a556NATO = { 45 , 15 , 18 } ,
	a762NATO = { 51 , 18 , 21 } ,
	a9x19mmNATO = { 19 , 5 , 8 } ,
	a68x43 = { 48 , 16 , 19 } ,
	a68cl = { 48 , 16 , 19 } ,
	a10Auto = { 25 , 7 , 10 } ,
	a12GBuck = { 24 , 15 , 18 } ,
	a20GBuck = { 40 , 17 , 20 } ,
	a9x18mmWP = { 18 , 5 , 8 } ,
	a545x39mmWP = { 39 , 15 , 18 } ,
	a762x25mmWP = { 25 , 12 , 15 } ,
	a762x39mmWP = { 39 , 20 , 23 } ,
	a762x54mmWP = { 39 , 23 , 26 } ,
	aAMen = { 45 , 15 , 18 } ,
	a40x46mm = { 1 , 1 , 1 } ,
	aVOG25 = { 1 , 1 , 1 } ,
	aBazooka = { 1 , 1 , 1 } ,
	aMedBag = { 10 , 1 , 1 } ,
	aAmmoBag = { 10 , 1 , 1 } ,
	aBatteries = { 1 , 1 , 1 } ,
}

local AmmoTypes = {
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
	[".30-06"] = {
		name = "762x63mm",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
	["10mm Auto"] = {
		name = "10mmauto",
		dmgtype = DMG_BULLET,
		tracer = TRACER_NONE,
	},
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
	["Bazooka Rocket"] = {
		name = "bazookarocket",
		dmgtype = DMG_BLAST,
		tracer = TRACER_NONE,
	},
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
	name = "VNT.SWep.Empty1" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/empty1.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty1.wav" )

sound.Add( {
	name = "VNT.SWep.Empty2" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/empty2.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty2.wav" )

sound.Add( {
	name = "VNT.SWep.Empty3" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/Empty3.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty3.wav" )

sound.Add( {
	name = "VNT.SWep.Empty4" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/Empty4.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty4.wav" )

sound.Add( {
	name = "VNT.SWep.Empty5" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/Empty5.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty5.wav" )

sound.Add( {
	name = "VNT.SWep.Empty6" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/Empty6.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/empty6.wav" )

sound.Add( {
	name = "VNT.SWep.Grab1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/grab1.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/grab1.wav" )

sound.Add( {
	name = "VNT.SWep.Throw1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/weapons/univ/throw1.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/throw1.wav" )

sound.Add( {
	name = "VNT.SWep.IronIn1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/weapons/univ/iron_in1.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/iron_in1.wav" )

sound.Add( {
	name = "VNT.SWep.IronOut1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/weapons/univ/iron_out1.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/iron_out1.wav" )

sound.Add( {
	name = "VNT.SWep.Draw1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95, 105 } ,
	sound = "jessev92/weapons/univ/draw1.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/draw1.wav" )

sound.Add( {
	name = "VNT.SWep.Draw2" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95, 105 } ,
	sound = "jessev92/weapons/univ/draw2.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/draw2.wav" )

sound.Add( {
	name = "VNT.SWep.Draw3" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95, 105 } ,
	sound = "jessev92/weapons/univ/draw3.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/draw3.wav" )

sound.Add( {
	name = "VNT.SWep.Holster1" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95, 105 } ,
	sound = "jessev92/weapons/univ/holster1.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/holster1.wav" )

sound.Add( {
	name = "VNT.SWep.ZoomIn" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/univ/iron_in2.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/iron_in2.wav" )

sound.Add( {
	name = "VNT.SWep.ZoomOut" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/weapons/univ/iron_out2.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/iron_out2.wav" )

sound.Add( {
	name = "VNT.SWep.ZoomCycleIn" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 90 } ,
	sound = { "^)jessev92/weapons/univ/sniper_zoomchange.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/sniper_zoomchange.wav" )

sound.Add( {
	name = "VNT.SWep.ZoomCycleOut" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 110 } ,
	sound = { "^)jessev92/weapons/univ/sniper_zoomchange.wav" }
} )
util.PrecacheSound( "jessev92/weapons/univ/sniper_zoomchange.wav" )

sound.Add( {
	name = "VNT.SWep.Melee.WhipHit" ,
	channel = CHAN_WEAPON ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/l4d2/player/melee/swing_weapon1.wav" , "^)jessev92/l4d2/player/melee/swing_weapon2.wav" }
} )
util.PrecacheSound( "jessev92/l4d2/player/melee/swing_weapon1.wav" )
util.PrecacheSound( "jessev92/l4d2/player/melee/swing_weapon2.wav" )

sound.Add( {
	name = "VNT.SWep.Melee.WhipMiss" ,
	channel = CHAN_WEAPON ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/l4d2/player/melee/swing_miss1.wav" , "^)jessev92/l4d2/player/melee/swing_miss2.wav" }
} )
util.PrecacheSound( "jessev92/l4d2/player/melee/swing_miss1.wav" )
util.PrecacheSound( "jessev92/l4d2/player/melee/swing_miss2.wav" )

sound.Add( {
	name = "VNT.SWep.Melee.HitFlesh" ,
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
	name = "VNT.SWep.Melee.HitWall" ,
	channel = CHAN_WEAPON ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/smodtac/weapons/knife/hitwall.wav" }
} )
util.PrecacheSound( "jessev92/smodtac/weapons/knife/hitwall.wav" )

sound.Add( {
	name = "VNT.SWep.Melee.Slash" ,
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
