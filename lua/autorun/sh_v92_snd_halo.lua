AddCSLuaFile( )

---------------------------------------------
---------------------------------------------
--	Halo
---------------------------------------------
---------------------------------------------
sound.Add( {
	name = "Halo_M68_Fire" ,
	channel = CHAN_ITEM ,
	volume = 0.05 ,
	level = 10 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/halo/warthog/m68_fire1.wav" , "jessev92/halo/warthog/m68_fire2.wav" , "jessev92/halo/warthog/m68_fire3.wav" }
} )

util.PrecacheSound( "jessev92/halo/warthog/m68_fire1.wav" )
util.PrecacheSound( "jessev92/halo/warthog/m68_fire2.wav" )
util.PrecacheSound( "jessev92/halo/warthog/m68_fire3.wav" )

sound.Add( {
	name = "Halo_M68_Hit" ,
	channel = CHAN_ITEM ,
	volume = 0.05 ,
	level = 10 ,
	pitch = { 90 , 110 } ,
	sound = { "jessev92/halo/warthog/m68_hit1.wav" , "jessev92/halo/warthog/m68_hit2.wav" }
} )

util.PrecacheSound( "jessev92/halo/warthog/m68_hit1.wav" )
util.PrecacheSound( "jessev92/halo/warthog/m68_hit2.wav" )

sound.Add({	name		= "REACH.Medkit.Deploy",
	channel		= CHAN_ITEM,
	level		= 75,
	volume		= 1.0,
	pitch		= { 95, 105 },
	sound		= {"jessev92/haloreach/weapons/univ/throw1.wav"},
})

sound.Add({	name		= "REACH.Medkit.HelpingHandExtend",
	channel		= CHAN_BODY,
	level		= 75,
	volume		= 1.0,
	pitch		= { 95, 105 },
	sound		= {"jessev92/l4d2/weapons/common/helpinghandextend.wav"},
})

sound.Add({	name		= "REACH.Medkit.HelpingHandRetract",
	channel		= CHAN_BODY,
	level		= 75,
	volume		= 1.0,
	pitch		= { 95, 105 },
	sound		= {"jessev92/l4d2/weapons/common/HelpingHandRetract.wav"},
})

sound.Add({	name		= "REACH.Medkit.ItemPickupExtend",
	channel		= CHAN_BODY,
	level		= 75,
	volume		= 1.0,
	pitch		= { 95, 105 },
	sound		= {"jessev92/l4d2/weapons/common/helpinghandextend.wav"},
})

sound.Add({	name		= "REACH.Medkit.ItemPickupRetract",
	channel		= CHAN_BODY,
	level		= 75,
	volume		= 1.0,
	pitch		= { 95, 105 },
	sound		= {"jessev92/l4d2/weapons/common/HelpingHandRetract.wav"},
})

sound.Add({	name		= "REACH.Medkit.Melee",
	channel		= CHAN_BODY,
	level		= 75,
	volume		= 1.0,
	pitch		= { 95, 105 },
	sound		= {"jessev92/l4d2/player/melee/swing_weapon1.wav","jessev92/l4d2/player/melee/swing_weapon2.wav"},
})

sound.Add({	name		= "REACH.Medkit.MeleeMiss",
	channel		= CHAN_BODY,
	level		= 75,
	volume		= 1.0,
	pitch		= { 95, 105 },
	sound		= {"jessev92/l4d2/player/melee/swing_miss1.wav","jessev92/l4d2/player/melee/swing_miss2.wav"},
})

sound.Add( {
	name = "REACH.SMG_SUP.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/smg/smg_recon1.wav" , "^)jessev92/haloreach/weapons/smg/smg_recon2.wav" }
} )

sound.Add( {
	name = "REACH.SMG.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/smg/smg_fire_1.wav" , "^)jessev92/haloreach/weapons/smg/smg_fire_2.wav" }
} )

sound.Add( {
	name = "REACH.SMG.MagIn" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = "^)jessev92/haloreach/weapons/smg/smg_magin.wav"
} )

sound.Add( {
	name = "REACH.SMG.MagOut" ,
	channel = CHAN_WEAPON ,
	volume = 0.9 ,
	level = 55 ,
	sound = "^)jessev92/haloreach/weapons/smg/smg_magout.wav"
} )

sound.Add( {
	name = "REACH.SMG.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = SNDLVL_60dB ,
	sound = { "^)jessev92/haloreach/weapons/smg/smg_dryfire.wav" }
} )

sound.Add( {
	name = "REACH.SMG.Pull" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = "^)jessev92/haloreach/weapons/smg/smg_pull.wav"
} )

sound.Add( {
	name = "REACH.SMG.Release" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = "^)jessev92/haloreach/weapons/smg/smg_release.wav"
} )

sound.Add( {
	name = "REACH.SMG.Draw" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/smg/smg_ready1.wav" , "^)jessev92/haloreach/weapons/smg/smg_ready2.wav" , "^)jessev92/haloreach/weapons/smg/smg_ready3.wav" }
} )

sound.Add( {
	name = "REACH.Magnum_SUP.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/magnum/magnum_silenced1.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_silenced2.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_silenced3.wav" }
} )

sound.Add( {
	name = "REACH.Magnum.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/magnum/magnum_stereo1.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_stereo2.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_stereo3.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_stereo4.wav" }
} )

sound.Add( {
	name = "REACH.MagnumPolice.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/magnum/magnum_1.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_2.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_3.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_4.wav" }
} )

sound.Add( {
	name = "REACH.MagnumG.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/magnum/Magnum_Shot_1.wav" , "^)jessev92/haloreach/weapons/magnum/Magnum_Shot_2.wav" , "^)jessev92/haloreach/weapons/magnum/Magnum_Shot_3.wav" , "^)jessev92/haloreach/weapons/magnum/Magnum_Shot_4.wav" , "^)jessev92/haloreach/weapons/magnum/Magnum_Shot_5.wav" }
} )

sound.Add( {
	name = "REACH.Magnum.MagIn" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/magnum/magnum_magin_1.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_magin_2.wav" }
} )

sound.Add( {
	name = "REACH.Magnum.MagOut" ,
	channel = CHAN_WEAPON ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/magnum/magnum_magout_1.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_magout_2.wav" }
} )

sound.Add( {
	name = "REACH.Magnum.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = SNDLVL_60dB ,
	sound = { "^)jessev92/haloreach/weapons/magnum/magnum_dryfire.wav" }
} )

sound.Add( {
	name = "REACH.Magnum.Pull" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = "^)jessev92/haloreach/weapons/magnum/magnum_pull.wav"
} )

sound.Add( {
	name = "REACH.Magnum.Release" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = "^)jessev92/haloreach/weapons/magnum/magnum_release.wav"
} )

sound.Add( {
	name = "REACH.Magnum.Draw" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/magnum/magnum_ready1.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_ready2.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_ready_hero1.wav" , "^)jessev92/haloreach/weapons/magnum/magnum_ready_hero2.wav" }
} )

sound.Add( {
	name = "REACH.Magnum.ZoomIn" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/magnum/magnum_zoom_in.wav" }
} )

sound.Add( {
	name = "REACH.Magnum.ZoomOut" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/magnum/magnum_zoom_out.wav" }
} )

sound.Add( {
	name = "REACH.Rocket.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/rocket/rocket_h3_1.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_h3_2.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_h3_3.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_h3_4.wav" }
} )

sound.Add( {
	name = "REACH.Rocket.Explosion" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = SNDLVL_180dB ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/rocket/rocket_expl1.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_expl2.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_expl3.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_expl4.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_expl5.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_expl6.wav" }
} )

sound.Add( {
	name = "REACH.Rocket.MagIn" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/rocket/rocket_magin_1.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_magin_2.wav" }
} )

sound.Add( {
	name = "REACH.Rocket.MagOut" ,
	channel = CHAN_WEAPON ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/rocket/rocket_magout_1.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_magout_2.wav" }
} )

sound.Add( {
	name = "REACH.Rocket.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = SNDLVL_60dB ,
	sound = { "^)jessev92/haloreach/weapons/rocket/rocket_empty.wav" }
} )

sound.Add( {
	name = "REACH.Rocket.Push" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/rocket/rocket_push_1.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_push_2.wav" }
} )

sound.Add( {
	name = "REACH.Rocket.Close" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/rocket/rocket_close_1.wav" , "^)jessev92/haloreach/weapons/rocket/rocket_close_2.wav" }
} )

sound.Add( {
	name = "REACH.Rocket.Melee" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/rocket/fp_rl_melee_11.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_melee_12.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_melee_13.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_melee_21.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_melee_22.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_melee_23.wav" }
} )

sound.Add( {
	name = "REACH.Rocket.Spin" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/rocket/fp_rl_fire_new1.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_fire_new2.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_fire_new3.wav" }
} )

sound.Add( {
	name = "REACH.Rocket.Draw" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/rocket/fp_rl_ready_init01.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_ready_init02.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_ready_init03.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_ready01new.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_ready02new.wav" , "^)jessev92/haloreach/weapons/rocket/fp_rl_ready03new.wav" }
} )

sound.Add( {
	name = "REACH.MA37.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 115 } ,
	sound = { "^)jessev92/haloreach/weapons/ma37/ar_reach1.wav" , "^)jessev92/haloreach/weapons/ma37/ar_reach2.wav" , "^)jessev92/haloreach/weapons/ma37/ar_reach3.wav" }
} )

sound.Add( {
	name = "REACH.MA5C.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 115 } ,
	sound = { "^)jessev92/haloreach/weapons/ma5c/ma5c_fire_1.wav" , "^)jessev92/haloreach/weapons/ma5c/ma5c_fire_2.wav" , "^)jessev92/haloreach/weapons/ma5c/ma5c_fire_3.wav" }
} )

sound.Add( {
	name = "REACH.MA3C.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 115 } ,
	sound = { "^)jessev92/haloreach/weapons/ma3/ma3_fire_1.wav" , "^)jessev92/haloreach/weapons/ma3/ma3_fire_2.wav" , "^)jessev92/haloreach/weapons/ma3/ma3_fire_3.wav" }
} )

sound.Add( {
	name = "REACH.MA37.MagIn" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/ma37/ar_magin_1.wav" }
} )

sound.Add( {
	name = "REACH.MA37.MagOut" ,
	channel = CHAN_WEAPON ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/ma37/ar_magout_1.wav" , "^)jessev92/haloreach/weapons/ma37/ar_magout_2.wav" }
} )

sound.Add( {
	name = "REACH.MA37.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = SNDLVL_60dB ,
	sound = { "^)jessev92/haloreach/weapons/ma37/dryfire.wav" }
} )

sound.Add( {
	name = "REACH.MA37.Pull" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = "^)jessev92/haloreach/weapons/ma37/ar_pull.wav"
} )

sound.Add( {
	name = "REACH.MA37.Release" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = "^)jessev92/haloreach/weapons/ma37/ar_release.wav"
} )

sound.Add( {
	name = "REACH.MA37.Draw" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/ma37/ar_ready1.wav" }
} )

sound.Add( {
	name = "REACH.MA37.Smack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/ma37/ar_smack.wav" }
} )

sound.Add( {
	name = "REACH.MA37.Click" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/ma37/ar_click.wav" }
} )

sound.Add( {
	name = "REACH.AR.ZoomIn" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/ma37/ar_zoomin.wav" }
} )

sound.Add( {
	name = "REACH.AR.ZoomOut" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/ma37/ar_zoomout.wav" }
} )

sound.Add( {
	name = "REACH.M90.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/shotgun/Shotgun Shot 1.wav" , "^)jessev92/haloreach/weapons/shotgun/Shotgun Shot 2.wav" , "^)jessev92/haloreach/weapons/shotgun/Shotgun Shot 3.wav" , "^)jessev92/haloreach/weapons/shotgun/Shotgun Shot 4.wav" , "^)jessev92/haloreach/weapons/shotgun/Shotgun Shot 5.wav" }
} )

sound.Add( {
	name = "REACH.M45.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/shotgun/m45_fire_1.wav" , "^)jessev92/haloreach/weapons/shotgun/m45_fire_2.wav" , "^)jessev92/haloreach/weapons/shotgun/m45_fire_3.wav" }
} )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_fire_1.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_fire_2.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_fire_3.wav" )

sound.Add( {
	name = "REACH.M45.ShellInsert" ,
	channel = CHAN_WEAPON ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "jessev92/haloreach/weapons/shotgun/m45_shell_1.wav" , "jessev92/haloreach/weapons/shotgun/m45_shell_2.wav" , "jessev92/haloreach/weapons/shotgun/m45_shell_3.wav" , "jessev92/haloreach/weapons/shotgun/m45_shell_4.wav" , "jessev92/haloreach/weapons/shotgun/m45_shell_5.wav" , "jessev92/haloreach/weapons/shotgun/m45_shell_6.wav" , "jessev92/haloreach/weapons/shotgun/m45_shell_7.wav" , "jessev92/haloreach/weapons/shotgun/m45_shell_8.wav" }
} )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_shell_1.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_shell_2.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_shell_3.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_shell_4.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_shell_5.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_shell_6.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_shell_7.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_shell_8.wav" )

sound.Add( {
	name = "REACH.M45.Empty" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 60 ,
	sound = { "^)jessev92/haloreach/weapons/magnum/magnum_dryfire.wav" }
} )
util.PrecacheSound( "jessev92/haloreach/weapons/magnum/magnum_dryfire.wav" )

sound.Add( {
	name = "REACH.M45.PumpIn" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "jessev92/haloreach/weapons/shotgun/m45_pump_in_1.wav" , "jessev92/haloreach/weapons/shotgun/m45_pump_in_2.wav" , "jessev92/haloreach/weapons/shotgun/m45_pump_in_3.wav" , "jessev92/haloreach/weapons/shotgun/m45_pump_in_4.wav" }
} )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_pump_in_1.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_pump_in_2.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_pump_in_3.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_pump_in_4.wav" )

sound.Add( {
	name = "REACH.M45.PumpOut" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "jessev92/haloreach/weapons/shotgun/m45_pump_out_1.wav" , "jessev92/haloreach/weapons/shotgun/m45_pump_out_2.wav" , "jessev92/haloreach/weapons/shotgun/m45_pump_out_3.wav" , "jessev92/haloreach/weapons/shotgun/m45_pump_out_4.wav" }
} )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_pump_out_1.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_pump_out_2.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_pump_out_3.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_pump_out_4.wav" )

sound.Add( {
	name = "REACH.M45.Draw" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/shotgun/m45_draw_1.wav" , "^)jessev92/haloreach/weapons/shotgun/m45_draw_2.wav" , "^)jessev92/haloreach/weapons/shotgun/m45_draw_3.wav" }
} )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_draw_1.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_draw_2.wav" )
util.PrecacheSound( "jessev92/haloreach/weapons/shotgun/m45_draw_3.wav" )

sound.Add( {
	name = "REACH.SRS99.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/srs99/sniper_fire_1.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_fire_2.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_fire_3.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_fire_4.wav" }
} )

sound.Add( {
	name = "REACH.REACH.SRS99A.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/srs99/Sniper_Shot_1.wav" , "^)jessev92/haloreach/weapons/srs99/Sniper_Shot_2.wav" , "^)jessev92/haloreach/weapons/srs99/Sniper_Shot_3.wav" , "^)jessev92/haloreach/weapons/srs99/Sniper_Shot_4.wav" }
} )

sound.Add( {
	name = "REACH.SRS99_SUP.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/haloreach/weapons/srs99/sniper_fire_silenced.wav" }
} )

sound.Add( {
	name = "REACH.SRS99.MagIn" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/srs99/sniper_magin_1.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_magin_2.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_magin_3.wav" }
} )

sound.Add( {
	name = "REACH.SRS99.MagOut" ,
	channel = CHAN_WEAPON ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/srs99/sniper_magout_1.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_magout_2.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_magout_3.wav" }
} )

sound.Add( {
	name = "REACH.SRS99.Pull" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/srs99/sniper_pull_1.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_pull_2.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_pull_3.wav" }
} )

sound.Add( {
	name = "REACH.SRS99.Release" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/srs99/sniper_release_1.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_release_2.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_release_3.wav" }
} )

sound.Add( {
	name = "REACH.SRS99.Smack" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/srs99/sniper_tap_1.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_tap_2.wav" }
} )

sound.Add( {
	name = "REACH.SRS99.Draw" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/srs99/sniper_draw_1.wav" , "^)jessev92/haloreach/weapons/srs99/sniper_draw_2.wav" }
} )

sound.Add( {
	name = "REACH.SRS99.ZoomIn" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/srs99/zoom_in.wav" }
} )

sound.Add( {
	name = "REACH.SRS99.ZoomOut" ,
	channel = CHAN_ITEM ,
	volume = 1.0 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/srs99/zoom_out.wav" }
} )

sound.Add( {
	name = "REACH.DMR.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/dmr/marksman_rifle_1.wav" , "^)jessev92/haloreach/weapons/dmr/marksman_rifle_2.wav" , "^)jessev92/haloreach/weapons/dmr/marksman_rifle_3.wav" }
} )

sound.Add( {
	name = "REACH.DMR2.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/dmr/dmr_shot_1.wav" , "^)jessev92/haloreach/weapons/dmr/dmr_shot_2.wav" , "^)jessev92/haloreach/weapons/dmr/dmr_shot_3.wav" , "^)jessev92/haloreach/weapons/dmr/dmr_shot_4.wav" , "^)jessev92/haloreach/weapons/dmr/dmr_shot_5.wav" }
} )

sound.Add( {
	name = "REACH.BR.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/haloreach/weapons/br/battle_rifle_fire2.wav" , "^)jessev92/haloreach/weapons/br/battle_rifle_fire3.wav" , "^)jessev92/haloreach/weapons/br/battle_rifle_fire4.wav" , "^)jessev92/haloreach/weapons/br/battle_rifle_fire5.wav" , "^)jessev92/haloreach/weapons/br/battle_rifle_fire6.wav" , "^)jessev92/haloreach/weapons/br/battle_rifle_fire7.wav" , "^)jessev92/haloreach/weapons/br/battle_rifle_fire8.wav" }
} )

sound.Add( {
	name = "REACH.BR_SUP.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 90 , 110 } ,
	sound = { "^)jessev92/haloreach/weapons/br/br_silenced.wav" }
} )

sound.Add( {
	name = "REACH.BR.ZoomIn" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/br/battle_rifle_zoom_in.wav" }
} )

sound.Add( {
	name = "REACH.BR.ZoomOut" ,
	channel = CHAN_ITEM ,
	volume = 0.9 ,
	level = 55 ,
	sound = { "^)jessev92/haloreach/weapons/br/battle_rifle_zoom_out.wav" }
} )

sound.Add( {
	name = "REACH.M319.Single" ,
	channel = CHAN_WEAPON ,
	volume = 1.0 ,
	level = 140 ,
	pitch = { 95 , 105 } ,
	sound = { "^)jessev92/haloreach/weapons/grenade_launcher/grenade_launcher_fire01.wav" , "^)jessev92/haloreach/weapons/grenade_launcher/grenade_launcher_fire02.wav" , "^)jessev92/haloreach/weapons/grenade_launcher/grenade_launcher_fire03.wav" , "^)jessev92/haloreach/weapons/grenade_launcher/grenade_launcher_fire04.wav" , "^)jessev92/haloreach/weapons/grenade_launcher/grenade_launcher_fire05.wav" , "^)jessev92/haloreach/weapons/grenade_launcher/grenade_launcher_fire06.wav" , "^)jessev92/haloreach/weapons/grenade_launcher/grenade_launcher_fire07.wav" , "^)jessev92/haloreach/weapons/grenade_launcher/grenade_launcher_fire08.wav" , "^)jessev92/haloreach/weapons/grenade_launcher/grenade_launcher_fire09.wav" , "^)jessev92/haloreach/weapons/grenade_launcher/grenade_launcher_fire10.wav" }
} )