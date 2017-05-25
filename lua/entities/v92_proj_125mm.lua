AddCSLuaFile( )
ENT.Type = "anim"
ENT.Base = "v92_base_projectile"
--	Shell size in Millimetres
ENT.ShellMMSize = 125
ENT.WeaponName = ( "v92_proj_" .. ENT.ShellMMSize .. "mm" )
ENT.PrintName = ( ENT.ShellMMSize .. "mm Shell" )
ENT.Category = VNTCB.Category.VNT
ENT.Author = "V92"
ENT.TravelSnd = Sound( "BF2.Artillery.Fall" )
ENT.MDL = Model( "models/weapons/W_missile_closed.mdl" )