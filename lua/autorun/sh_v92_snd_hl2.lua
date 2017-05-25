
AddCSLuaFile()

-------------------------------------------------------
--	Half-Life 2 + EP1 + EP2 + HL2DM + Lost Coast Audio
--	Encoded by V92
--	Profile Link:	http://steamcommunity.com/id/JesseVanover/
--	Workshop Link:	http://steamcommunity.com/sharedfiles/filedetails/?id=655569086
-------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------
--	NPC
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--	COMBINE SOLDIER
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

---------------------------------------------
---------------------------------------------
---------------------------------------------
--	ZIPLINE
---------------------------------------------
---------------------------------------------
---------------------------------------------

sound.Add({	["name"] = "Combine_Soldier.ZipLine.Clip" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1.0 ,
	["level"] = 100 ,
	["pitch"] = { 90, 110 } ,
	["sound"] = { 
		"jessev92/lostcoast/npc/combine_soldier/zipline_clip1.wav" ,
		"jessev92/lostcoast/npc/combine_soldier/zipline_clip2.wav" ,
	} ,
} )

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--	VEHICLES
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

---------------------------------------------
---------------------------------------------
--	V8
---------------------------------------------
---------------------------------------------

sound.Add( {	["name"] = "HL2.Vehicles.V8.Gear4_Cruise" ,
	["channel"] = CHAN_STATIC ,
	["volume"] = 1 ,
	["level"] = 100 ,
	["pitch"] = { 100 } ,
	["sound"] = { 
		"vehicles/v8/fourth_cruise_loop2.wav" ,
	} ,
} )
util.PrecacheSound( "vehicles/v8/fourth_cruise_loop2.wav" )

---------------------------------------------
---------------------------------------------
--	EP2 Charger
---------------------------------------------
---------------------------------------------
sound.Add( {	name = "EP2.Charger.RadarPing" ,
	channel = CHAN_ITEM ,
	volume = 0.05 ,
	level = 10 ,
	pitch = { 90 , 110 } ,
	sound = { "^)vehicles/junker/radar_ping_friendly1.wav" }
} )
util.PrecacheSound( "vehicles/junker/radar_ping_friendly1.wav" )

sound.Add( {	name = "EP2.V8.Impact_Heavy" ,
	channel = CHAN_ITEM ,
	volume = 1 ,
	level = 90 ,
	pitch = { 90 , 110 } ,
	sound = { 
		"^)vehicles/v8/vehicle_impact_heavy1.wav" ,
		"^)vehicles/v8/vehicle_impact_heavy2.wav" ,
		"^)vehicles/v8/vehicle_impact_heavy3.wav" ,
		"^)vehicles/v8/vehicle_impact_heavy4.wav" ,
	} ,
} )
util.PrecacheSound( "vehicles/v8/vehicle_impact_heavy1.wav" )
util.PrecacheSound( "vehicles/v8/vehicle_impact_heavy2.wav" )
util.PrecacheSound( "vehicles/v8/vehicle_impact_heavy3.wav" )
util.PrecacheSound( "vehicles/v8/vehicle_impact_heavy4.wav" )

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
--	VOICE OVERS
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

---------------------------------------------
---------------------------------------------
--	Player Coughing
---------------------------------------------
---------------------------------------------
sound.Add( {	name = "HL2.VO.Player.Cough" ,
	channel = CHAN_VOICE ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 95 , 105 } ,
	sound = { "ambient/voices/cough1.wav" , "ambient/voices/cough2.wav" , "ambient/voices/cough3.wav" , "ambient/voices/cough4.wav" }
} )
util.PrecacheSound( "ambient/voices/cough1.wav" )
util.PrecacheSound( "ambient/voices/cough2.wav" )
util.PrecacheSound( "ambient/voices/cough3.wav" )
util.PrecacheSound( "ambient/voices/cough4.wav" )

------------------------------------------------------------------------------------------
--	HL2 :: Physics
------------------------------------------------------------------------------------------

sound.Add( {	name = "HL2.Physics.Concrete.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/concrete/concrete_impact_bullet1.wav" , 
		"physics/concrete/concrete_impact_bullet2.wav" , 
		"physics/concrete/concrete_impact_bullet3.wav" , 
		"physics/concrete/concrete_impact_bullet4.wav" , 
	} ,
} )
util.PrecacheSound( "physics/concrete/concrete_impact_bullet1.wav" )
util.PrecacheSound( "physics/concrete/concrete_impact_bullet2.wav" )
util.PrecacheSound( "physics/concrete/concrete_impact_bullet3.wav" )
util.PrecacheSound( "physics/concrete/concrete_impact_bullet4.wav" )

sound.Add( {	name = "HL2.Physics.Glass.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/Glass/glass_impact_bullet1.wav" , 
		"physics/Glass/glass_impact_bullet2.wav" , 
		"physics/Glass/glass_impact_bullet3.wav" , 
		"physics/Glass/glass_impact_bullet4.wav" , 
	} ,
} )
util.PrecacheSound( "physics/Glass/glass_impact_bullet1.wav" )
util.PrecacheSound( "physics/Glass/glass_impact_bullet2.wav" )
util.PrecacheSound( "physics/Glass/glass_impact_bullet3.wav" )
util.PrecacheSound( "physics/Glass/glass_impact_bullet4.wav" )

sound.Add( {	name = "HL2.Physics.Flesh.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/flesh/flesh_impact_bullet1.wav" , 
		"physics/flesh/flesh_impact_bullet2.wav" , 
		"physics/flesh/flesh_impact_bullet3.wav" , 
		"physics/flesh/flesh_impact_bullet4.wav" , 
		"physics/flesh/flesh_impact_bullet5.wav" , 
	} ,
} )
util.PrecacheSound( "physics/flesh/flesh_impact_bullet1.wav" )
util.PrecacheSound( "physics/flesh/flesh_impact_bullet2.wav" )
util.PrecacheSound( "physics/flesh/flesh_impact_bullet3.wav" )
util.PrecacheSound( "physics/flesh/flesh_impact_bullet4.wav" )
util.PrecacheSound( "physics/flesh/flesh_impact_bullet5.wav" )

sound.Add( {	name = "HL2.Physics.Computer.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/metal/metal_computer_impact_bullet1.wav" , 
		"physics/metal/metal_computer_impact_bullet2.wav" , 
		"physics/metal/metal_computer_impact_bullet3.wav" , 
	} ,
} )
util.PrecacheSound( "physics/metal/metal_computer_impact_bullet1.wav" )
util.PrecacheSound( "physics/metal/metal_computer_impact_bullet2.wav" )
util.PrecacheSound( "physics/metal/metal_computer_impact_bullet3.wav" )

sound.Add( {	name = "HL2.Physics.Metal.Box.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/metal/metal_box_impact_bullet1.wav" , 
		"physics/metal/metal_box_impact_bullet2.wav" , 
	} ,
} )
util.PrecacheSound( "physics/metal/metal_box_impact_bullet1.wav" )
util.PrecacheSound( "physics/metal/metal_box_impact_bullet2.wav" )

sound.Add( {
	name = "HL2.Physics.Metal.Sheet.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/metal/metal_sheet_impact_bullet1.wav" , 
		"physics/metal/metal_sheet_impact_bullet2.wav" , 
	} ,
} )
util.PrecacheSound( "physics/metal/metal_sheet_impact_bullet1.wav" )
util.PrecacheSound( "physics/metal/metal_sheet_impact_bullet2.wav" )

sound.Add( {
	name = "HL2.Physics.Plastic.Box.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/plastic/plastic_box_impact_bullet1.wav" , 
		"physics/plastic/plastic_box_impact_bullet2.wav" , 
		"physics/plastic/plastic_box_impact_bullet3.wav" , 
		"physics/plastic/plastic_box_impact_bullet4.wav" , 
		"physics/plastic/plastic_box_impact_bullet5.wav" , 
	} ,
} )
util.PrecacheSound( "physics/plastic/plastic_box_impact_bullet1.wav" )
util.PrecacheSound( "physics/plastic/plastic_box_impact_bullet2.wav" )
util.PrecacheSound( "physics/plastic/plastic_box_impact_bullet3.wav" )
util.PrecacheSound( "physics/plastic/plastic_box_impact_bullet4.wav" )
util.PrecacheSound( "physics/plastic/plastic_box_impact_bullet5.wav" )

sound.Add( {
	name = "HL2.Physics.Plastic.Barrel.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/plastic/plastic_barrel_impact_bullet1.wav" , 
		"physics/plastic/plastic_barrel_impact_bullet2.wav" , 
		"physics/plastic/plastic_barrel_impact_bullet3.wav" , 
		"physics/plastic/plastic_barrel_impact_bullet4.wav" , 
	} ,
} )
util.PrecacheSound( "physics/plastic/plastic_barrel_impact_bullet1.wav" )
util.PrecacheSound( "physics/plastic/plastic_barrel_impact_bullet2.wav" )
util.PrecacheSound( "physics/plastic/plastic_barrel_impact_bullet3.wav" )
util.PrecacheSound( "physics/plastic/plastic_barrel_impact_bullet4.wav" )

sound.Add( {
	name = "HL2.Physics.Metal.Solid.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/metal/metal_solid_impact_bullet1.wav" , 
		"physics/metal/metal_solid_impact_bullet2.wav" , 
		"physics/metal/metal_solid_impact_bullet3.wav" , 
		"physics/metal/metal_solid_impact_bullet4.wav" , 
	} ,
} )
util.PrecacheSound( "physics/metal/metal_solid_impact_bullet1.wav" )
util.PrecacheSound( "physics/metal/metal_solid_impact_bullet2.wav" )
util.PrecacheSound( "physics/metal/metal_solid_impact_bullet3.wav" )
util.PrecacheSound( "physics/metal/metal_solid_impact_bullet4.wav" )

sound.Add( {
	name = "HL2.Physics.Sand.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/surfaces/sand_impact_bullet1.wav" , 
		"physics/surfaces/sand_impact_bullet2.wav" , 
		"physics/surfaces/sand_impact_bullet3.wav" , 
		"physics/surfaces/sand_impact_bullet4.wav" , 
	} ,
} )
util.PrecacheSound( "physics/surfaces/sand_impact_bullet1.wav" )
util.PrecacheSound( "physics/surfaces/sand_impact_bullet2.wav" )
util.PrecacheSound( "physics/surfaces/sand_impact_bullet3.wav" )
util.PrecacheSound( "physics/surfaces/sand_impact_bullet4.wav" )

sound.Add( {
	name = "HL2.Physics.Underwater.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/surfaces/underwater_impact_bullet1.wav" , 
		"physics/surfaces/underwater_impact_bullet2.wav" , 
		"physics/surfaces/underwater_impact_bullet3.wav" ,
	} ,
} )
util.PrecacheSound( "physics/surfaces/underwater_impact_bullet1.wav" )
util.PrecacheSound( "physics/surfaces/underwater_impact_bullet2.wav" )
util.PrecacheSound( "physics/surfaces/underwater_impact_bullet3.wav" )

sound.Add( {
	name = "HL2.Physics.Tile.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/surfaces/tile_impact_bullet1.wav" , 
		"physics/surfaces/tile_impact_bullet2.wav" , 
		"physics/surfaces/tile_impact_bullet3.wav" ,
		"physics/surfaces/tile_impact_bullet4.wav" ,
	} ,
} )
util.PrecacheSound( "physics/surfaces/tile_impact_bullet1.wav" )
util.PrecacheSound( "physics/surfaces/tile_impact_bullet2.wav" )
util.PrecacheSound( "physics/surfaces/tile_impact_bullet3.wav" )
util.PrecacheSound( "physics/surfaces/tile_impact_bullet4.wav" )

sound.Add( {
	name = "HL2.Physics.Wood.Box.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/wood/wood_box_impact_bullet1.wav" , 
		"physics/wood/wood_box_impact_bullet2.wav" , 
		"physics/wood/wood_box_impact_bullet3.wav" ,
		"physics/wood/wood_box_impact_bullet4.wav" ,
	} ,
} )
util.PrecacheSound( "physics/wood/wood_box_impact_bullet1.wav" )
util.PrecacheSound( "physics/wood/wood_box_impact_bullet2.wav" )
util.PrecacheSound( "physics/wood/wood_box_impact_bullet3.wav" )
util.PrecacheSound( "physics/wood/wood_box_impact_bullet4.wav" )

sound.Add( {
	name = "HL2.Physics.Wood.Solid.Impact.Bullet" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"physics/wood/wood_solid_impact_bullet1.wav" , 
		"physics/wood/wood_solid_impact_bullet2.wav" , 
		"physics/wood/wood_solid_impact_bullet3.wav" ,
		"physics/wood/wood_solid_impact_bullet4.wav" ,
		"physics/wood/wood_solid_impact_bullet5.wav" ,
	} ,
} )
util.PrecacheSound( "physics/wood/wood_solid_impact_bullet1.wav" )
util.PrecacheSound( "physics/wood/wood_solid_impact_bullet2.wav" )
util.PrecacheSound( "physics/wood/wood_solid_impact_bullet3.wav" )
util.PrecacheSound( "physics/wood/wood_solid_impact_bullet4.wav" )
util.PrecacheSound( "physics/wood/wood_solid_impact_bullet5.wav" )

sound.Add( {
	name = "HL2.Ambient.Energy.Zap" ,
	channel = CHAN_BODY ,
	level = 75 ,
	volume = 1 ,
	pitch = { 85, 115 } ,
	sound = { 
		"ambient/energy/zap1.wav" ,
		"ambient/energy/zap2.wav" ,
		"ambient/energy/zap3.wav" ,
		"ambient/energy/zap4.wav" ,
		"ambient/energy/zap5.wav" ,
		"ambient/energy/zap6.wav" ,
		"ambient/energy/zap7.wav" ,
		"ambient/energy/zap8.wav" ,
		"ambient/energy/zap9.wav" ,
	} ,
} )
util.PrecacheSound( "ambient/energy/zap1.wav" )
util.PrecacheSound( "ambient/energy/zap2.wav" )
util.PrecacheSound( "ambient/energy/zap3.wav" )
util.PrecacheSound( "ambient/energy/zap4.wav" )
util.PrecacheSound( "ambient/energy/zap5.wav" )
util.PrecacheSound( "ambient/energy/zap6.wav" )
util.PrecacheSound( "ambient/energy/zap7.wav" )
util.PrecacheSound( "ambient/energy/zap8.wav" )
util.PrecacheSound( "ambient/energy/zap9.wav" )

---------------------------------------------
---------------------------------------------
--	Wood Furniture Break
---------------------------------------------
---------------------------------------------
sound.Add( {
	name = "HL2.Physics.Wood.Furniture.Break" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 70 , 140 } ,
	sound = { "physics/wood/wood_furniture_break1.wav" , "physics/wood/wood_furniture_break2.wav" }
} )
util.PrecacheSound( "physics/wood/wood_furniture_break1.wav" )
util.PrecacheSound( "physics/wood/wood_furniture_break2.wav" )

------------------------------------------------------------------------------------------
--	HL2 :: Weapons
------------------------------------------------------------------------------------------

---------------------------------------------
---------------------------------------------
--	Generic Explosion
---------------------------------------------
---------------------------------------------
sound.Add( {
	name = "HL2.Generic.Explosion" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 75 ,
	pitch = { 80 , 140 } ,
	sound = { "weapons/explode3.wav" , "weapons/explode4.wav" , "weapons/explode5.wav" }
} )
util.PrecacheSound( "weapons/explode3.wav" )
util.PrecacheSound( "weapons/explode4.wav" )
util.PrecacheSound( "weapons/explode5.wav" )
