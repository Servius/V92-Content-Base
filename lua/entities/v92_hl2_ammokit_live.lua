
AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "v92_deployable_ammo"

ENT.PrintName = "Active Ammo Box"
ENT.Category = VNTCB.Category.HL2
ENT.Author = VNTCB.Info.author
ENT.Purpose = VNTCB.Info.purpose
ENT.Instructions = VNTCB.Info.instructions
ENT.Contact = VNTCB.Info.contact
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.RemainingCharge = GetConVarNumber("VNT_SWep_Deployable_Ammo_Charge")
ENT.ActionDelay = CurTime()
ENT.PickupSound = Sound( "BF2.Common.Resupply" )
ENT.PickupModel = Model( "models/Items/BoxMRounds.mdl" )
ENT.RemoveTime = 300
ENT.BlacklistedAmmoTypes = {
	"medbag" ,
	"ammobag" ,
	//"c4" ,
}
ENT.BlacklistedWeapons = {
	"gmod_tool" ,
	"camera" ,
	"weapon_physcannon" ,
	"weapon_physgun" ,
	"weapon_crowbar" ,
	"weapon_stunstick" ,
	"v92_hl2_ammokit" ,
	"v92_hl2_medkit" ,
	"v92_bf2_ammobag" ,
	"v92_bf2_medicbag" ,
}
