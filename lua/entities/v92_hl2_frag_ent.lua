
AddCSLuaFile( )

if not VNTCB then
	Error( "V92 Content Bases not mounted; Removing Weapon:\n" )
	return false
end

ENT.Base = VNTCB.Bases.WepEnt
ENT.Type = "anim"
ENT.PrintName = "Grenade"
ENT.Author = VNTCB.author
ENT.Information = "Uses Grenade Ammo"
ENT.Category = VNTCB.Category.HL2
ENT.Spawnable = true
ENT.AdminOnly = false
ENT.SWepName = "v92_hl2_frag" -- (String) Name of the weapon entity in Lua/weapons/swep_name.lua
ENT.WeaponName = ENT.SWepName .. "_ent"	-- (String) Name of this entity
ENT.SEntModel = Model( "models/weapons/w_grenade.mdl" ) -- (String) Model to use