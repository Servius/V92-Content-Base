
------------------------------------------------------
--	Half-Life 2
--	Fragmentation Grenade
------------------------------------------------------

ENT.PrintName = "Live Grenade"

if not VNTCB then

	Error( "V92 Content Bases not mounted; Removing Weapon: " .. SWEP.PrintName .. "\n" )
	return false

end

AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "v92_grenade_frag"

ENT.Type = "anim" -- Type of entity
ENT.Author = VNTCB.Info.author -- Author name
ENT.Contact = VNTCB.Info.contact -- Contact
ENT.Purpose = VNTCB.Info.purpose -- Purpose
ENT.Instructions = VNTCB.Info.instructions -- Instructions

-- Model to use
ENT.Model = Model( "models/weapons/w_grenade.mdl" )

-- Mass in KG
ENT.Mass = 5

-- Sound table
ENT.Sounds = {

	["BounceConcrete"] = Sound( "BF1942.Grenade.Collide_Concrete" ) ,
	["BounceMetal"] = Sound( "BF1942.Grenade.Collide_Metal" ) ,
	["BounceSand"] = Sound( "BF1942.Grenade.Collide_Sand" ) ,
	["BounceWood"] = Sound( "BF1942.Grenade.Collide_Wood" ) ,
	["Debris"] = Sound( "BaseGrenade.Explode" ) ,
	["Explosion"] = Sound( "BaseExplosionEffect.Sound" ) ,
	["WaterExplosion"] = Sound( "WaterExplosionEffect.Sound" ) ,

}
