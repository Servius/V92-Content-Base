
AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "v92_deployable_medic"

ENT.PrintName = "Active Medical Kit"
ENT.Category = VNTCB.Category.HL2
ENT.Author = VNTCB.Info.author
ENT.Purpose = VNTCB.Info.purpose
ENT.Instructions = VNTCB.Info.instructions
ENT.Contact = VNTCB.Info.contact
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.RemainingCharge = GetConVarNumber("VNT_SWep_Deployable_Charge")
ENT.ActionDelay = CurTime()
ENT.PickupSound = Sound( "HealthKit.Touch" )
ENT.PickupModel = Model( "models/weapons/w_medkit.mdl" )
ENT.RemoveTime = 300
