
ENT.Base = VNTCB.Bases.Vehicle_Pod_Root
ENT.Type = "anim"

ENT.PrintName = ""
ENT.Author = VNTCB.Info.author
ENT.Category = VNTCB.Category.VNT
ENT.Contact = ""
ENT.Purpose = ""
ENT.Instructions = ""

ENT.Spawnable = false
ENT.AdminOnly = false

ENT.Name = "M197"
ENT.Ammo = 750
ENT.FireRate = 730
ENT.Spray = 0.3
ENT.FireOffset = Vector(60, 0, 0)


function ENT:SetupDataTables()
	self:base(VNTCB.Bases.Vehicle_Pod_Root).SetupDataTables(self)
	self:NetworkVar("Float", 2, "SpinSpeed")
end

