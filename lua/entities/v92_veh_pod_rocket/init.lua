
ENT.Base = VNTCB.Bases.Vehicle_Pod_Root

ENT.rocketPositions = {
	
}

function ENT:Initialize()

	self.sound = {
		fire = self:sound("HelicopterVehicle/MissileShoot.mp3")
	}

	self.rockets = {}


end

function ENT:fire()

end



