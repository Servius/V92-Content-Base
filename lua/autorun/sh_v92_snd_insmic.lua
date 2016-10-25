
AddCSLuaFile()

---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------
--	Insurgency: Modern Infantry Combat
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
--	INSMIC :: Weapons :: Melee
------------------------------------------------------------------------------------------

---------------------------------------------
--	Knife / Bayonet
---------------------------------------------
sound.Add( {
	name = "INSMIC.Knife.Hit" ,
	channel = CHAN_WEAPON ,
	level = 100 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/ins1/knife/weapons/hit1.wav" , "^)jessev92/ins1/weapons/knife/hit2.wav" , "^)jessev92/ins1/weapons/knife/hit3.wav" , "^)jessev92/ins1/weapons/knife/hit4.wav" }
} )
util.PrecacheSound( "jessev92/ins1/weapons/knife/hit1.wav" )
util.PrecacheSound( "jessev92/ins1/weapons/knife/hit2.wav" )
util.PrecacheSound( "jessev92/ins1/weapons/knife/hit3.wav" )
util.PrecacheSound( "jessev92/ins1/weapons/knife/hit4.wav" )

sound.Add( {
	name = "INSMIC.Knife.Slash" ,
	channel = CHAN_WEAPON ,
	level = 100 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "^)jessev92/weapons/univ/quickmove1.wav"
} )
util.PrecacheSound( "jessev92/weapons/univ/quickmove1.wav" )

sound.Add( {
	name = "INSMIC.Knife.Deploy" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	pitch		= { 95, 105 },
	sound = "^)jessev92/ins1/weapons/knife/deploy1.wav"
} )
util.PrecacheSound( "jessev92/ins1/weapons/knife/deploy1.wav" )

sound.Add( {
	name = "INSMIC.Knife.HitWall" ,
	channel = CHAN_WEAPON ,
	level = 100 ,
	volume = 1.0 ,
	pitch = { 80 , 110 } ,
	sound = "^)jessev92/ins1/weapons/knife/hitwall1.wav"
} )
util.PrecacheSound( "jessev92/ins1/weapons/knife/hitwall1.wav" )

sound.Add( {
	name = "INSMIC.Knife.Stab" ,
	channel = CHAN_WEAPON ,
	level = 100 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "^)jessev92/ins1/weapons/knife/stab.wav"
} )
util.PrecacheSound( "jessev92/ins1/weapons/knife/stab.wav" )

------------------------------------------------------------------------------------------
--	INSMIC :: Weapons :: Pistols
------------------------------------------------------------------------------------------

---------------------------------------------
--	MEUSOC M1911 Colt .45
---------------------------------------------
sound.Add( {
	name = "INSMIC.1911.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = "^)jessev92/ins1/weapons/1911/single_1.wav"
} )
util.PrecacheSound( "jessev92/ins1/weapons/1911/single_1.wav" )

sound.Add( {
	name = "INSMIC.1911.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = ")jessev92/ins1/weapons/1911/magin.wav"
} )
util.PrecacheSound( "jessev92/ins1/weapons/1911/magin.wav" )

sound.Add( {
	name = "INSMIC.1911.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = ")jessev92/ins1/weapons/1911/magout.wav"
} )
util.PrecacheSound( "jessev92/ins1/weapons/1911/magout.wav" )

sound.Add( {
	name = "INSMIC.1911.slideforward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = ")jessev92/ins1/weapons/1911/slideforward.wav"
} )
util.PrecacheSound( "jessev92/ins1/weapons/1911/slideforward.wav" )

sound.Add( {
	name = "INSMIC.1911.slideback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = ")jessev92/ins1/weapons/1911/slideback.wav"
} )
util.PrecacheSound( "jessev92/ins1/weapons/1911/slideback.wav" )

sound.Add( {
	name = "INSMIC.1911.safety" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = ")jessev92/ins1/weapons/1911/safety.wav"
} )
util.PrecacheSound( "jessev92/ins1/weapons/1911/safety.wav" )

sound.Add( {
	name = "INSMIC.1911.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "^)jessev92/ins1/weapons/m9/empty.wav"
} )
util.PrecacheSound( "jessev92/ins1/weapons/m9/empty.wav" )

---------------------------------------------
--	PM - Makarov
---------------------------------------------
sound.Add( {
	name = "INSMIC.Makarov.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	--sound		= "jessev92/ins1/weapons/makarov/makarov-01.wav",
	sound = "navaro/weapons/pmm/fire.wav"
} )

sound.Add( {
	name = "INSMIC.Makarov.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/makarov/makarov-magin.wav"
} )

--sound		= "navaro/weapons/pmm/maginmovement.wav",
sound.Add( {
	name = "INSMIC.Makarov.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/makarov/makarov-magout.wav"
} )

--sound		= "navaro/weapons/pmm/magoutmovement.wav",
sound.Add( {
	name = "INSMIC.Makarov.SlideForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/makarov/makarov-slideforward.wav"
} )

--sound		= "navaro/weapons/pmm/slidestop.wav",
sound.Add( {
	name = "INSMIC.Makarov.SlideBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/makarov/makarov-slideback.wav"
} )

--sound		= "navaro/weapons/pmm/reloadstart.wav",
sound.Add( {
	name = "INSMIC.Makarov.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/makarov/makarov-empty.wav"
} )

sound.Add( {
	name = "INSMIC.Makarov.Safety" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/makarov/makarov-slideback.wav"
} )

--sound		= "navaro/weapons/pmm/slidestop.wav",

---------------------------------------------
--	P7M10
---------------------------------------------
sound.Add( {
	name = "INSMIC.HK_P7M10.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/makarov/makarov-01.wav"
} )

sound.Add( {
	name = "INSMIC.HK_P7M10.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "navaro/weapons/pmm/maginmovement.wav"
} )

sound.Add( {
	name = "INSMIC.HK_P7M10.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "navaro/weapons/pmm/magoutmovement.wav"
} )

sound.Add( {
	name = "INSMIC.HK_P7M10.SlideForward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "navaro/weapons/pmm/slidestop.wav"
} )

sound.Add( {
	name = "INSMIC.HK_P7M10.SlideBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "navaro/weapons/pmm/reloadstart.wav"
} )

sound.Add( {
	name = "INSMIC.HK_P7M10.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/makarov/makarov-empty.wav"
} )

sound.Add( {
	name = "INSMIC.HK_P7M10.Safety" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "navaro/weapons/pmm/slidestop.wav"
} )

---------------------------------------------
--	TT-30 Tokarev
---------------------------------------------
sound.Add( {
	name = "INSMIC.Tokarev.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/tokarev/makarov-01.wav"
} )

sound.Add( {
	name = "INSMIC.Takarov.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/tokarev/toka_clipin.wav"
} )

sound.Add( {
	name = "INSMIC.Takarov.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/tokarev/toka_clipout.wav"
} )

sound.Add( {
	name = "INSMIC.Takarov.SlideForward" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/tokarev/toka_boltforward.wav"
} )

sound.Add( {
	name = "INSMIC.Takarov.SlideBack" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/tokarev/toka_boltback.wav"
} )

sound.Add( {
	name = "INSMIC.Takarov.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/tokarev/makarov-empty.wav"
} )

---------------------------------------------
--	M9 / 92FS Beretta
---------------------------------------------
sound.Add( {
	name = "INSMIC.M9.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	--sound		= "jessev92/ins1/weapons/m9/m9-1.wav",
	sound = { "navaro/weapons/m9/fire.wav" }
} )

sound.Add( {
	name = "INSMIC.M9.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-magin.wav"
} )

--sound		= {"navaro/weapons/m9/in1.wav","navaro/weapons/m9/in2.wav"},
sound.Add( {
	name = "INSMIC.M9.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-magout.wav"
} )

--sound		= {"navaro/weapons/m9/out.wav"},
sound.Add( {
	name = "INSMIC.M9.slideforward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-slideforward.wav"
} )

--sound		= {"navaro/weapons/m9/release.wav"},
sound.Add( {
	name = "INSMIC.M9.slideback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-slideback.wav"
} )

--sound		= {"navaro/weapons/m9/back.wav"},
sound.Add( {
	name = "INSMIC.M9.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-empty.wav"
} )

sound.Add( {
	name = "INSMIC.M9.safety" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-safety.wav"
} )

---------------------------------------------
--	Browning Hi-Power
---------------------------------------------
sound.Add( {
	name = "INSMIC.Browning.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	--sound		= "jessev92/ins1/weapons/bhp/usp_unsil-2.wav",
	sound = { "navaro/weapons/bhp/fire.wav" }
} )

sound.Add( {
	name = "INSMIC.Browning.Empty" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/m9/m9-empty.wav"
} )

sound.Add( {
	name = "INSMIC.Brownin.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/bhp/usp_clipin2.wav"
} )

sound.Add( {
	name = "INSMIC.Brownin.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/bhp/usp_clipout.wav"
} )

sound.Add( {
	name = "INSMIC.Brownin.slideforward" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/bhp/usp_sliderelease.wav"
} )

sound.Add( {
	name = "INSMIC.Brownin.slideback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/1911/1911-slideback.wav"
} )

--sound		= {"navaro/weapons/bhp/slideback.wav"},
sound.Add( {
	name = "INSMIC.Brownin.safety" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/1911/1911-safety.wav"
} )

sound.Add( {
	name = "INSMIC.HP.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "navaro/weapons/bhp/fire.wav" }
} )

sound.Add( {
	name = "INSMIC.HP.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/bhp/usp_clipin2.wav"
} )

sound.Add( {
	name = "INSMIC.HP.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/bhp/usp_clipout.wav"
} )

sound.Add( {
	name = "INSMIC.HP.slideforward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/bhp/usp_sliderelease.wav"
} )

--sound		= {"navaro/weapons/m9/release.wav"},
sound.Add( {
	name = "INSMIC.HP.slideback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/1911/1911-slideback.wav"
} )

sound.Add( {
	name = "INSMIC.HP.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-empty.wav"
} )

sound.Add( {
	name = "INSMIC.HP.safety" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-safety.wav"
} )

---------------------------------------------
--	Glock 19
---------------------------------------------
sound.Add( {
	name = "INSMIC.19.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/m9/m9-1.wav"
} )

sound.Add( {
	name = "INSMIC.19.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-magin.wav"
} )

--sound		= {"navaro/weapons/m9/in1.wav","navaro/weapons/m9/in2.wav"},
sound.Add( {
	name = "INSMIC.19.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-magout.wav"
} )

--sound		= {"navaro/weapons/m9/out.wav"},
sound.Add( {
	name = "INSMIC.19.slideforward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-slideforward.wav"
} )

--sound		= {"navaro/weapons/m9/release.wav"},
sound.Add( {
	name = "INSMIC.19.slideback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-slideback.wav"
} )

--sound		= {"navaro/weapons/m9/back.wav"},
sound.Add( {
	name = "INSMIC.19.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-empty.wav"
} )

sound.Add( {
	name = "INSMIC.19.safety" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-safety.wav"
} )

---------------------------------------------
--	Mk.22
---------------------------------------------
sound.Add( {
	name = "INSMIC.22.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	--sound		= "jessev92/ins1/weapons/m9/m9-1.wav",
	sound = { "navaro/weapons/m9/fire.wav" }
} )

sound.Add( {
	name = "INSMIC.22.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-magin.wav"
} )

sound.Add( {
	name = "INSMIC.22.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-magout.wav"
} )

sound.Add( {
	name = "INSMIC.22.slideforward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-slideforward.wav"
} )

sound.Add( {
	name = "INSMIC.22.slideback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-slideback.wav"
} )

--sound		= {"navaro/weapons/m9/back.wav"},
sound.Add( {
	name = "INSMIC.22.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-empty.wav"
} )

sound.Add( {
	name = "INSMIC.22.safety" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-safety.wav"
} )

---------------------------------------------
--	Desert Eagle
---------------------------------------------
sound.Add( {
	name = "INSMIC.DE.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/deagle/fire.wav"
} )

sound.Add( {
	name = "INSMIC.DE.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/deagle/magin.wav"
} )

sound.Add( {
	name = "INSMIC.DE.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/deagle/magout.wav"
} )

sound.Add( {
	name = "INSMIC.DE.slideback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/deagle/slideback.wav"
} )

sound.Add( {
	name = "INSMIC.DE.slideforward" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/deagle/slideforward.wav"
} )

sound.Add( {
	name = "INSMIC.DE.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-empty.wav"
} )

sound.Add( {
	name = "INSMIC.DE.safety" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m9/m9-safety.wav"
} )

---------------------------------------------
--	SIG P220
---------------------------------------------
sound.Add( {
	name = "INSMIC.SIG.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/p226/p228-1.wav"
} )

sound.Add( {
	name = "INSMIC.SG.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/p226/p228_clipin.wav"
} )

sound.Add( {
	name = "INSMIC.SG.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/p226/p228_clipout.wav"
} )

sound.Add( {
	name = "INSMIC.SG.SlideForward" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/p226/p228_sliderelease.wav"
} )

sound.Add( {
	name = "INSMIC.SG.SlideBack" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/p226/p228_slideback.wav"
} )

sound.Add( {
	name = "INSMIC.SG.safety" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/usp/m9-safety.wav"
} )

sound.Add( {
	name = "INSMIC.SG.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/usp/m9-empty.wav"
} )

---------------------------------------------
--	USP .40 S&W
---------------------------------------------
sound.Add( {
	name = "INSMIC.US.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/usp/m9-1.wav"
} )

sound.Add( {
	name = "INSMIC.USSIL.Single" ,
	channel = CHAN_WEAPON ,
	level = 100 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/usp/M9-2.wav"
} )

sound.Add( {
	name = "INSMIC.US.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/usp/m9-magin.wav"
} )

sound.Add( {
	name = "INSMIC.US.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/usp/m9-magout.wav"
} )

sound.Add( {
	name = "INSMIC.US.slideforward" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/usp/m9-slideforward.wav"
} )

sound.Add( {
	name = "INSMIC.US.slideback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/usp/m9-slideback.wav"
} )

sound.Add( {
	name = "INSMIC.US.safety" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/usp/m9-safety.wav"
} )

sound.Add( {
	name = "INSMIC.US.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/usp/m9-empty.wav"
} )

------------------------------------------------------------------------------------------
--	INSMIC :: Weapons :: Rifles
------------------------------------------------------------------------------------------

---------------------------------------------
--	G3
---------------------------------------------
sound.Add( {
	name = "INSMIC.G3.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/g3/g3sg1-1.wav" , "jessev92/ins1/weapons/g3/g3sg1-2.wav" }
} )

---------------------------------------------
--	M8
---------------------------------------------
sound.Add( {
	name = "INSMIC.XM.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/m8/single_1.wav" , "jessev92/ins1/weapons/m8/single_2.wav" }
} )

sound.Add( {
	name = "INSMIC.XM8A4.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/G36c/magin.wav"
} )

sound.Add( {
	name = "INSMIC.XM8A4.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/G36c/magout.wav"
} )

sound.Add( {
	name = "INSMIC.XM8A4.Boltback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/boltback.wav"
} )

sound.Add( {
	name = "INSMIC.XM8A4.Boltrelease" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/FiringPinForward.wav"
} )

sound.Add( {
	name = "INSMIC.XM87.ROFdown" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/G36c/selector.wav"
} )

---------------------------------------------
--	SKS
---------------------------------------------
sound.Add( {
	name = "INSMIC.SKS.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	--sound		= {"jessev92/ins1/weapons/sks/SKS_01.wav","jessev92/ins1/weapons/sks/SKS_01.wav"},
	sound = { "navaro/weapons/sks/fire.wav" }
} )

sound.Add( {
	name = "INSMIC.SKS.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/sks/sks_clipin.wav"
} )

sound.Add( {
	name = "INSMIC.SKS.Magin2" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/sks/sks_clipin2.wav"
} )

sound.Add( {
	name = "INSMIC.SKS.StripperOff" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/sks/sks_stripper_off.wav"
} )

sound.Add( {
	name = "INSMIC.SKS.Boltrelease" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/sks/sks_bolt_close.wav",
	sound = { "navaro/weapons/sks/boltrelease.wav" }
} )

sound.Add( {
	name = "INSMIC.SKS.Boltback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/sks/sks_bolt_back.wav",
	sound = { "navaro/weapons/sks/boltback.wav" }
} )

---------------------------------------------
--	M4A1
---------------------------------------------
sound.Add( {
	name = "INSMIC.M4.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	--sound		= {"jessev92/ins1/weapons/M4/M4-1.wav","jessev92/ins1/weapons/M4/M4-2.wav"},
	sound = { "navaro/weapons/M4/shoot_unsil.wav" }
} )

---------------------------------------------
--	M16A4
---------------------------------------------
sound.Add( {
	name = "INSMIC.M16A4.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	--sound		= {"jessev92/ins1/weapons/m16A4/m16a4-1.wav","jessev92/ins1/weapons/m16A4/m16a4-2.wav"},
	sound = { "navaro/weapons/m16/m16-1.wav" }
} )

sound.Add( {
	name = "INSMIC.M16A4.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-magin.wav"
} )

--sound		= {"navaro/weapons/m16/magin.wav"},
sound.Add( {
	name = "INSMIC.M16A4.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-magout.wav"
} )

--sound		= {"navaro/weapons/m16/magout.wav"},
sound.Add( {
	name = "INSMIC.M16A4.Boltback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-boltback.wav",
	sound = { "navaro/weapons/m16/boltback.wav" }
} )

sound.Add( {
	name = "INSMIC.M16A4.Boltrelease" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-boltrelease.wav",
	sound = { "navaro/weapons/m16/FiringPinForward.wav" }
} )

sound.Add( {
	name = "INSMIC.M16A4.Hit" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-hit.wav",
	sound = { "navaro/weapons/m16/magtap.wav" }
} )

sound.Add( {
	name = "INSMIC.M16A4.ROF" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= {"jessev92/ins1/weapons/m16A4/m16A4-selectordown.wav","jessev92/ins1/weapons/m16A4/m16A4-selectorup.wav"},
	sound = { "navaro/weapons/m16/safety.wav" }
} )

sound.Add( {
	name = "INSMIC.M16A4.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-empty.wav"
} )

---------------------------------------------
--	M203
---------------------------------------------
sound.Add( {
	name = "INSMIC.M16A4.M203" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/m16A4/m203_fire.wav"
} )

sound.Add( {
	name = "INSMIC.M203.Open" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m203-open.wav"
} )

sound.Add( {
	name = "INSMIC.M203.Close" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m203-close.wav"
} )

sound.Add( {
	name = "INSMIC.M203.Load" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m203-load.wav"
} )

sound.Add( {
	name = "INSMIC.M203.Sightup" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/ak47/ak47-selectorup.wav"
} )

sound.Add( {
	name = "INSMIC.M203.Sightdown" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/ak47/ak47-selectordown.wav"
} )

---------------------------------------------
--	AK-47
---------------------------------------------
sound.Add( {
	name = "INSMIC.AK47.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/aK47/ak47-1.wav" , "jessev92/ins1/weapons/aK47/ak47-2.wav" }
} )

sound.Add( {
	name = "INSMIC.AKS74U.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/aks74u/aks74u-fire.wav"
} )

sound.Add( {
	name = "INSMIC.AK47.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/aK47/ak47-magout.wav"
} )

sound.Add( {
	name = "INSMIC.AK47.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/aK47/ak47-magin.wav"
} )

sound.Add( {
	name = "INSMIC.AK47.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/aK47/ak47-empty.wav"
} )

sound.Add( {
	name = "INSMIC.AK47.Boltback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/aK47/ak47-boltback.wav"
} )

sound.Add( {
	name = "INSMIC.AK47.Boltrelease" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/aK47/ak47-boltrelease.wav"
} )

sound.Add( {
	name = "INSMIC.AK47.ROF" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = { "jessev92/ins1/weapons/ak47/ak47-selectordown.wav" , "jessev92/ins1/weapons/ak47/ak47-selectorup.wav" }
} )

---------------------------------------------
--	VLTOR
---------------------------------------------
sound.Add( {
	name = "INSMIC.VLTOR.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	--sound		= {"jessev92/ins1/weapons/M4/M4-1.wav","jessev92/ins1/weapons/M4/M4-2.wav"},
	sound = { "navaro/weapons/M4/shoot_unsil.wav" }
} )

sound.Add( {
	name = "INSMIC.VLTOR.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-magin.wav"
} )

--sound		= {"navaro/weapons/m16/magin.wav"},
sound.Add( {
	name = "INSMIC.VLTOR.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-magout.wav"
} )

--sound		= {"navaro/weapons/m16/magout.wav"},
sound.Add( {
	name = "INSMIC.VLTOR.Boltback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-boltback.wav",
	sound = { "navaro/weapons/m16/boltback.wav" }
} )

sound.Add( {
	name = "INSMIC.VLTOR.Boltrelease" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-boltrelease.wav",
	sound = { "navaro/weapons/m16/FiringPinForward.wav" }
} )

sound.Add( {
	name = "INSMIC.VLTOR.Hit" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-hit.wav",
	sound = { "navaro/weapons/m16/magtap.wav" }
} )

sound.Add( {
	name = "INSMIC.VLTOR.ROF" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= {"jessev92/ins1/weapons/m16A4/m16A4-selectordown.wav","jessev92/ins1/weapons/m16A4/m16A4-selectorup.wav"},
	sound = { "navaro/weapons/m16/safety.wav" }
} )

sound.Add( {
	name = "INSMIC.VLTR.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-empty.wav"
} )

---------------------------------------------
--	FAL / L1A1 SLR
---------------------------------------------
sound.Add( {
	name = "INSMIC.FAL.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	--sound		= {"jessev92/ins1/weapons/fnfal/fal-01.wav","jessev92/ins1/weapons/fnfal/fal-02.wav"},
	sound = { "navaro/weapons/fal/fire.wav" }
} )

sound.Add( {
	name = "INSMIC.FAL.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/fnfal/fal_clip_in.wav",
	sound = { "navaro/weapons/fal/magin.wav" }
} )

sound.Add( {
	name = "INSMIC.FAL.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/fnfal/fal_clip_out.wav",
	sound = { "navaro/weapons/fal/magout.wav" }
} )

sound.Add( {
	name = "INSMIC.FAL.Chamber" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/fnfal/fal_chamber.wav",
	sound = { "navaro/weapons/fal/chamber.wav" }
} )

---------------------------------------------
--	HK53
---------------------------------------------
sound.Add( {
	name = "INSMIC.hk53.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/hk53/hk53-1.wav" , "jessev92/ins1/weapons/hk53/hk53-2.wav" }
} )

sound.Add( {
	name = "INSMIC.hk53.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/magin.wav"
} )

sound.Add( {
	name = "INSMIC.hk53.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/magout.wav"
} )

sound.Add( {
	name = "INSMIC.hk53.Boltback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/boltback.wav"
} )

sound.Add( {
	name = "INSMIC.hk53.FiringPinForward" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/FiringPinForward.wav"
} )

sound.Add( {
	name = "INSMIC.hk53.Selector" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/selector.wav"
} )

---------------------------------------------
--	AUG A3
---------------------------------------------
sound.Add( {
	name = "INSMIC.AUGA3.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/aug/M4-1.wav" , "jessev92/ins1/weapons/aug/M4-2.wav" }
} )

sound.Add( {
	name = "INSMIC.AUGA3.Magin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-magin.wav"
} )

--sound		= {"navaro/weapons/aug/magincloth.wav"},
sound.Add( {
	name = "INSMIC.AUGA3.Magout" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-magout.wav"
} )

--sound		= {"navaro/weapons/aug/magoutcloth.wav"},
sound.Add( {
	name = "INSMIC.AUGA3.Boltback" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-boltback.wav",
	sound = { "navaro/weapons/aug/boltpullback.wav" }
} )

sound.Add( {
	name = "INSMIC.AUGA3.Boltrelease" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-boltrelease.wav",
	sound = { "navaro/weapons/aug/BoltPullFoward.wav" }
} )

sound.Add( {
	name = "INSMIC.AUGA3.Hit" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-hit.wav",
	sound = { "navaro/weapons/m16/magtap.wav" }
} )

sound.Add( {
	name = "INSMIC.AUGA3.ROFdown" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	--sound		= {"jessev92/ins1/weapons/m16A4/m16A4-selectordown.wav","jessev92/ins1/weapons/m16A4/m16A4-selectorup.wav"},
	sound = { "navaro/weapons/m16/safety.wav" }
} )

sound.Add( {
	name = "INSMIC.AUGA3.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-empty.wav"
} )

---------------------------------------------
--	SCAR-L
---------------------------------------------
sound.Add( {
	name = "INSMIC.SCAR.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	--sound		= {"jessev92/ins1/weapons/scar/m4a1_unsil-1.wav","jessev92/ins1/weapons/scar/m4a1_unsil-2.wav"},
	sound = { "navaro/weapons/scar/fire.wav" }
} )

sound.Add( {
	name = "INSMIC.SCAR4.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/scar/m16a4-magin.wav"
} )

sound.Add( {
	name = "INSMIC.SCAR4.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/scar/m16a4-magout.wav"
} )

sound.Add( {
	name = "INSMIC.SCAR4.Boltback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/scar/m16a4-boltback.wav"
} )

sound.Add( {
	name = "INSMIC.SCAR4.Boltrelease" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/scar/m16a4-boltrelease.wav",
	sound = { "navaro/weapons/scar/boltrelease.wav" }
} )

sound.Add( {
	name = "INSMIC.SCAR4.Hit" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/scar/m16a4-hit.wav"
} )

sound.Add( {
	name = "INSMIC.SCAR.ROFdown" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = { "jessev92/ins1/weapons/scar/m16A4-selectordown.wav" , "jessev92/ins1/weapons/scar/m16a4-selecctorup.wav" }
} )

sound.Add( {
	name = "INSMIC.SCAR4.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/scar/m16a4-empty.wav"
} )

---------------------------------------------
--	AK-74
---------------------------------------------
sound.Add( {
	name = "INSMIC.AK74.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/ak74/ak47-1.wav" , "jessev92/ins1/weapons/ak74/ak47-2.wav" }
} )

sound.Add( {
	name = "INSMIC.AK74.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/ak74/ak47-magin.wav"
} )

sound.Add( {
	name = "INSMIC.AK74.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/ak74/ak47-magout.wav"
} )

sound.Add( {
	name = "INSMIC.AK74.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/ak74/ak47-empty.wav"
} )

sound.Add( {
	name = "INSMIC.AK74.Boltback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/ak74/ak47-boltback.wav"
} )

sound.Add( {
	name = "INSMIC.AK74.Boltrelease" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/ak74/ak47-boltrelease.wav"
} )

sound.Add( {
	name = "INSMIC.AK74.ROF" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = { "jessev92/ins1/weapons/ak74/ak47-selectordown.wav" , "jessev92/ins1/weapons/ak74/ak47-selectorup.wav" }
} )

---------------------------------------------
--	G36C
---------------------------------------------
sound.Add( {
	name = "INSMIC.G36c.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	--sound		= {"jessev92/ins1/weapons/G36c/m4-1.wav","jessev92/ins1/weapons/G36c/m4-2.wav"},
	sound = { "navaro/weapons/g36/fire1.wav" , "navaro/weapons/g36/fire2.wav" , "navaro/weapons/g36/fire3.wav" , "navaro/weapons/g36/fire4.wav" }
} )

sound.Add( {
	name = "INSMIC.G36c.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/G36c/magin.wav",
	sound = { "navaro/weapons/g36/magin.wav" }
} )

sound.Add( {
	name = "INSMIC.G36c.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/G36c/magout.wav",
	sound = { "navaro/weapons/g36/magout.wav" }
} )

sound.Add( {
	name = "INSMIC.G36c.Bolt" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/G36c/boltpull.wav",
	sound = { "navaro/weapons/g36/boltpull.wav" }
} )

sound.Add( {
	name = "INSMIC.G36c.Selector" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/G36c/selector.wav"
} )

---------------------------------------------
--	M416
---------------------------------------------
sound.Add( {
	name = "INSMIC.HK416.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/hk416/m4-1.wav" , "jessev92/ins1/weapons/hk416/m4-2.wav" }
} )

sound.Add( {
	name = "INSMIC.HK416.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk416/m4a1_clipin.wav"
} )

sound.Add( {
	name = "INSMIC.HK416.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk416/m4a1_clipout.wav"
} )

sound.Add( {
	name = "INSMIC.HK416.Boltback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-boltback.wav",
	sound = { "navaro/weapons/m16/boltback.wav" }
} )

sound.Add( {
	name = "INSMIC.HK416.Boltrelease" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/m16A4/m16a4-boltrelease.wav",
	sound = { "navaro/weapons/m16/boltrelease.wav" }
} )

sound.Add( {
	name = "INSMIC.HK416.Hit" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-hit.wav" ,
	sound = { "navaro/weapons/m16/magtap.wav" }
} )

sound.Add( {
	name = "INSMIC.HK41.ROFdown" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= {"jessev92/ins1/weapons/m16A4/m16A4-selectordown.wav","jessev92/ins1/weapons/m16A4/m16A4-selectorup.wav"},
	sound = { "navaro/weapons/m16/safety.wav" }
} )

sound.Add( {
	name = "INSMIC.HK416.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-empty.wav"
} )

---------------------------------------------
--	P90
---------------------------------------------
sound.Add( {
	name = "INSMIC.P90.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	--sound		= {"jessev92/ins1/weapons/p90/p90-1.wav","jessev92/ins1/weapons/p90/p90-2.wav"},
	sound = { "navaro/weapons/p90/fire.wav" }
} )

sound.Add( {
	name = "INSMIC.p907.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/p90/p90_clipin.wav"
} )

sound.Add( {
	name = "INSMIC.p907.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/p90/p90_clipout.wav"
} )

sound.Add( {
	name = "INSMIC.p907.Boltback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/p90/p90_boltback.wav"
} )

sound.Add( {
	name = "INSMIC.p907.Boltrelease" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/p90/p90_boltforward.wav"
} )

sound.Add( {
	name = "INSMIC.p90a4.Hit" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m16A4/m16a4-hit.wav"
} )

sound.Add( {
	name = "INSMIC.p907.ROFdown" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/p90/p90_cliprelease.wav"
} )

------------------------------------------------------------------------------------------
--	INSMIC :: Weapons :: Shotguns
------------------------------------------------------------------------------------------

---------------------------------------------
--	M1014
---------------------------------------------
sound.Add( {
	name = "INSMIC.M1014.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound		= {"^)jessev92/ins1/weapons/m1014/m1014-01.wav","jessev92/ins1/weapons/m1014/m1014-02.wav"},
} )

sound.Add( {
	name = "INSMIC.M1014.ShellInsert" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 105 } ,
	sound		= {"jessev92/ins1/weapons/m1014/m1014-shell-insert1.wav","jessev92/ins1/weapons/m1014/m1014-shell-insert2.wav","jessev92/ins1/weapons/m1014/m1014-shell-insert3.wav","jessev92/ins1/weapons/m1014/m1014-shell-insert4.wav","jessev92/ins1/weapons/m1014/m1014-shell-insert5.wav"},
} )

sound.Add( {
	name = "INSMIC.M1014.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m1014/m1014-pumpback.wav"
} )

sound.Add( {
	name = "INSMIC.M1014.BoltRelease" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m1014/m1014-pumpforward.wav"
} )

sound.Add( {
	name = "INSMIC.M1014.StockExtend" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m1014/m1014-stockextend.wav"
} )

sound.Add( {
	name = "INSMIC.M1014.StockCollapse" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m1014/m1014-stockcollapse.wav"
} )

---------------------------------------------
--	M3 Super 90
---------------------------------------------
sound.Add( {
	name = "INSMIC.M3S90.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { ")navaro/weapons/m1014/single_1.wav" }
} )

sound.Add( {
	name = "INSMIC.M3S90.ShellInsert" ,
	channel = CHAN_BODY ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 105 } ,
	sound = { "navaro/weapons/m1014/insertshell.wav" }
} )

sound.Add( {
	name = "INSMIC.M3S90.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m1014/pumpback.wav"
} )

sound.Add( {
	name = "INSMIC.M3S90.BoltRelease" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m1014/pumpforward.wav"
} )

sound.Add( {
	name = "INSMIC.M3S90.StockExtend" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m1014/stockextend.wav"
} )

sound.Add( {
	name = "INSMIC.M3S90.StockCollapse" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m1014/stockcollapse.wav"
} )

---------------------------------------------
--	SPAS-12
---------------------------------------------
sound.Add( {
	name = "INSMIC.SPAST.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	--sound		= "jessev92/ins1/weapons/spas/xm1014-1.wav",
	sound = { ")navaro/weapons/spas12/fire.wav" }
} )

sound.Add( {
	name = "INSMIC.SPAST.ShellInsert" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	--sound		= "jessev92/ins1/weapons/spas/xm1014_insertshell.wav",
	sound = { "navaro/weapons/spas12/insertshell1.wav" , "navaro/weapons/spas12/insertshell2.wav" , "navaro/weapons/spas12/insertshell3.wav" }
} )

sound.Add( {
	name = "INSMIC.SPAST.BoltBack" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/spas/xm1014_back.wav",
	sound = { "navaro/weapons/spas12/pumpback.wav" }
} )

sound.Add( {
	name = "INSMIC.SPAST.BoltRelease" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/spas/xm1014_forward.wav",
	sound = { "navaro/weapons/spas12/pumpforward.wav" }
} )

-- *********************************
-- *********************************
-- *                               *
-- *         TOZ					*
-- *                               *
-- *********************************
-- *********************************
sound.Add( {
	name = "INSMIC.TOZ.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/ins1/weapons/toz_shotgun/toz_01.wav" , "^)jessev92/ins1/weapons/toz_shotgun/toz_02.wav" }
} )

sound.Add( {
	name = "INSMIC.TOZ.ShellInsert" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/toz_shotgun/toz_shell.wav"
} )

sound.Add( {
	name = "INSMIC.TOZ.BoltBack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/toz_shotgun/toz_pumpback.wav"
} )

sound.Add( {
	name = "INSMIC.TOZ.BoltRelease" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/toz_shotgun/toz_pumpforward.wav"
} )


------------------------------------------------------------------------------------------
--	INSMIC :: Weapons :: Machine Guns
------------------------------------------------------------------------------------------

---------------------------------------------
--	M249 LMG
---------------------------------------------
sound.Add( {
	name = "INSMIC.M249.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "^)jessev92/ins1/weapons/m249/single_1.wav"
} )

sound.Add( {
	name = "INSMIC.M249.BulletsLoad" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m249/beltin.wav"
} )

sound.Add( {
	name = "INSMIC.M249.BulletsUnload" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 0.3 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m249/beltout.wav"
} )

sound.Add( {
	name = "INSMIC.M249.OpenLid" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 0.3 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m249/open.wav"
} )

sound.Add( {
	name = "INSMIC.M249.CloseLid" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 0.3 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m249/close.wav"
} )

sound.Add( {
	name = "INSMIC.M249.BipodOpen" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 0.3 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m249/bipodown.wav"
} )

sound.Add( {
	name = "INSMIC.M249.BipodClose" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 0.3 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m249/bipoup.wav"
} )

sound.Add( {
	name = "INSMIC.M249.BoxIn" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 0.3 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m249/boxin.wav"
} )

sound.Add( {
	name = "INSMIC.M249.BoxOut" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m249/boxout.wav"
} )

sound.Add( {
	name = "INSMIC.M249.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m249/empty.wav"
} )

sound.Add( {
	name = "INSMIC.M249.Boltpull" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m249/boltpull.wav"
} )

---------------------------------------------
--	RPK
---------------------------------------------
sound.Add( {
	name = "INSMIC.RPK.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	--sound		= {"jessev92/ins1/weapons/rpk/rpk-1.wav","jessev92/ins1/weapons/rpk/rpk-2.wav"},
	sound = { ")navaro/weapons/rpk/single_1.wav" , ")navaro/weapons/rpk/single_2.wav" , ")navaro/weapons/rpk/single_3.wav" , ")navaro/weapons/rpk/single_4.wav" , ")navaro/weapons/rpk/single_5.wav" }
} )

sound.Add( {
	name = "INSMIC.RPK.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/fnfal/fal_clip_in.wav",
	sound = { "navaro/weapons/rpk/in1.wav" , "navaro/weapons/rpk/in2.wav" }
} )

sound.Add( {
	name = "INSMIC.RPK.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/rpk/rpk-magout.wav" ,
	sound = { "navaro/weapons/rpk/out1.wav" , "navaro/weapons/rpk/out2.wav" }
} )

sound.Add( {
	name = "INSMIC.RPK.BipodDown" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/rpk/rpk-bipodown.wav"
} )

sound.Add( {
	name = "INSMIC.RPK.BipodUp" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/rpk/rpk-bipodup.wav"
} )

sound.Add( {
	name = "INSMIC.RPK.BoltPull" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/rpk/rpk-cock.wav",
	sound = { "navaro/weapons/rpk/cock1.wav" , "navaro/weapons/rpk/cock2.wav" }
} )

sound.Add( {
	name = "INSMIC.RPK.Ironsight" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/rpk/rpk-ironsight.wav"
} )

sound.Add( {
	name = "INSMIC.RPK.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/rpk/rpk-empty.wav"
} )

------------------------------------------------------------------------------------------
--	INSMIC :: Weapons :: Snipers
------------------------------------------------------------------------------------------

---------------------------------------------
--	PSG1
---------------------------------------------
sound.Add( {
	name = "INSMIC.PSG.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/psg/svd-fire.wav"
} )

sound.Add( {
	name = "INSMIC.PSG.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/magin.wav"
} )

sound.Add( {
	name = "INSMIC.PSG.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/magout.wav"
} )

sound.Add( {
	name = "INSMIC.PSG.Boltback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/boltback.wav"
} )

sound.Add( {
	name = "INSMIC.PSG.FiringPinForward" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/FiringPinForward.wav"
} )

sound.Add( {
	name = "INSMIC.PSG7.ROFdown" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/hk53/selector.wav"
} )

---------------------------------------------
--	Dragunov SVD
---------------------------------------------
sound.Add( {
	name = "INSMIC.SVD.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch		= { 95, 105 },
	--sound		= "^)jessev92/ins1/weapons/svd/svd-fire.wav",
	sound = { ")navaro/weapons/svd/fire.wav" }
} )

sound.Add( {
	name = "INSMIC.SVD.Magin1" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "^)jessev92/ins1/weapons/svd/magin1.wav"
} )

sound.Add( {
	name = "INSMIC.SVD.Magin2" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/svd/magin2.wav"
} )

sound.Add( {
	name = "INSMIC.SVD.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/svd/magout.wav"
} )

sound.Add( {
	name = "INSMIC.SVD.Boltback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/svd/svd-boltback.wav",
	sound = { "navaro/weapons/svd/boltback.wav" }
} )

sound.Add( {
	name = "INSMIC.SVD.FiringPinForward" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	--sound		= "jessev92/ins1/weapons/svd/svd-FiringPinForward.wav",
	sound = { "navaro/weapons/svd/boltforward.wav" }
} )

---------------------------------------------
--	L42A1 Enfield
---------------------------------------------
sound.Add( {
	name = "INSMIC.L42A1.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/enfield/single_1.wav" , "jessev92/ins1/weapons/enfield/single_2.wav" }
} )

sound.Add( {
	name = "INSMIC.L42A1.Roundin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/enfield/roundin.wav"
} )

sound.Add( {
	name = "INSMIC.L42A1.Roundout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/enfield/roundout.wav"
} )

sound.Add( {
	name = "INSMIC.L42A1.Boltback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/enfield/boltback.wav"
} )

sound.Add( {
	name = "INSMIC.L42A1.FiringPinForward" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/enfield/FiringPinForward.wav"
} )

sound.Add( {
	name = "INSMIC.L42A1.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/enfield/empty.wav"
} )

---------------------------------------------
--	M14 DMR
---------------------------------------------
sound.Add( {
	name = "INSMIC.M14.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/m14/m14-01.wav" , "jessev92/ins1/weapons/m14/m14-02.wav" }
} )

sound.Add( {
	name = "INSMIC.M14.Magin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m14/m14-magin.wav"
} )

sound.Add( {
	name = "INSMIC.M14.Magout" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m14/m14-magout.wav"
} )

sound.Add( {
	name = "INSMIC.M14.Boltback" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m14/m14-boltback.wav"
} )

sound.Add( {
	name = "INSMIC.M14.FiringPinForward" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m14/m14-FiringPinForward.wav"
} )

sound.Add( {
	name = "INSMIC.M14.Hit" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m14/m14-hit.wav"
} )

------------------------------------------------------------------------------------------
--	INSMIC :: Weapons :: Explosives
------------------------------------------------------------------------------------------

---------------------------------------------
--	M112 C4
---------------------------------------------
sound.Add( {
	name = "INSMIC.C4.KnobTurn" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/c4/knob.wav"
} )

---------------------------------------------
--	M18 Smoke Grenades
---------------------------------------------
sound.Add( {
	name = "INSMIC.Smoke.Explode" ,
	channel = CHAN_WEAPON ,
	level = 90 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/m18/smokeburn.wav"
} )

sound.Add( {
	name = "INSMIC.Smoke.Pin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/m67/pullpin.wav"
} )

sound.Add( {
	name = "INSMIC.Smoke.Throw" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/m67/throw.wav"
} )

sound.Add( {
	name = "INSMIC.Smoke.Roll" ,
	channel = CHAN_WEAPON ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/m67/roll.wav"
} )

---------------------------------------------
--	M67 / RGD5 Frag Grenades
---------------------------------------------
sound.Add( {
	name = "INSMIC.M67.Explode" ,
	channel = CHAN_WEAPON ,
	level = 150 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/m67/frag-01.wav" , "jessev92/ins1/weapons/m67/frag-02.wav" , "jessev92/ins1/weapons/m67/frag-03.wav" }
} )

sound.Add( {
	name = "INSMIC.M67.Pin" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/m67/pullpin.wav"
} )

sound.Add( {
	name = "INSMIC.M67.Spoon" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/m67/spoon.wav"
} )

sound.Add( {
	name = "INSMIC.M67.Throw" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/m67/throw.wav"
} )

sound.Add( {
	name = "INSMIC.M67.BakeThrow" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/m67/bakethrow.wav"
} )

sound.Add( {
	name = "INSMIC.M67.Bounce" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = { "jessev92/ins1/weapons/m67/roll1.wav" , "jessev92/ins1/weapons/m67/roll2.wav" , "jessev92/ins1/weapons/m67/roll3.wav" , "jessev92/ins1/weapons/m67/roll4.wav" , "jessev92/ins1/weapons/m67/roll5.wav" , "jessev92/ins1/weapons/m67/roll6.wav" }
} )

---------------------------------------------
--	RPG-7
---------------------------------------------
sound.Add( {
	name = "INSMIC.RPG7.Hit" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/rpg7/rpg7-hit.wav"
} )

sound.Add( {
	name = "INSMIC.RPG7.Single" ,
	channel = CHAN_WEAPON ,
	level = 140 ,
	volume = 1.0 ,
	pitch = { 95 , 105 } ,
	sound = "jessev92/ins1/weapons/rpg7/rpg7-fire.wav"
} )

sound.Add( {
	name = "INSMIC.RPG7.Empty" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/rpg7/rpg7-empty.wav"
} )

sound.Add( {
	name = "INSMIC.RPG7.Reload" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/rpg7/rpg7-reload.wav"
} )

sound.Add( {
	name = "INSMIC.RPG7.Load" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/rpg7/rpg7-load.wav"
} )

sound.Add( {
	name = "INSMIC.RPG7.Unload" ,
	channel = CHAN_ITEM ,
	level = 75 ,
	volume = 1.0 ,
	--pitch		= { 95, 105 },
	sound = "jessev92/ins1/weapons/rpg7/rpg7-unload.wav"
} )
