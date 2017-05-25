
AddCSLuaFile()

ENT.Base = "base_anim"
ENT.Type = "anim"

ENT.PrintName = "Maintenance Station"
ENT.Author = VNTCB.Info.author
ENT.Category = VNTCB.Category.VNT
ENT.Spawnable = true
ENT.AdminOnly = true

if SERVER then

	ENT.Radius = 500

	function ENT:Initialize()
		self:SetModel("models/props_vehicles/generatortrailer01.mdl")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self:SetSolid(SOLID_VPHYSICS)
		self:NextThink(CurTime())
	end

	function ENT:Think()
		for _, e in pairs(ents.FindInSphere(self:GetPos(), self.Radius)) do
			if e.Aerodynamics and e.maintenance then
				e:maintenance()
			end
		end
		self:NextThink(CurTime()+2)
		return true
	end

end
