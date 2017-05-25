
AddCSLuaFile( )

if not VNTCB then
	Error( "V92 Content Bases not mounted; Removing Weapon:\n" )
	return false
end

ENT.Base = VNTCB.Bases.WepEnt
ENT.Type = "anim"
ENT.PrintName = "Pistol"
ENT.Author = VNTCB.author
ENT.Information = "Uses 9x19mm NATO ammo"
ENT.Category = VNTCB.Category.HL2
ENT.Spawnable = true
ENT.AdminOnly = false
ENT.SWepName = "v92_hl2_pistol" -- (String) Name of the weapon entity in Lua/weapons/swep_name.lua
ENT.WeaponName = ENT.SWepName .. "_ent"	-- (String) Name of this entity
ENT.SEntModel = Model( "models/weapons/w_pistol.mdl" ) -- (String) Model to use