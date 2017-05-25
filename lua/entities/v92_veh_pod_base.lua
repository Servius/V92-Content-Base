
if not ( vnt or VNTCB ) then

	return false
	
end

AddCSLuaFile()

ENT.Base = "base_anim" -- (String) Base entity
ENT.Type = "anim" -- (String) Entity type

ENT.Spawnable = false -- (Boolean) Appears in Spawn Menu?
ENT.AdminOnly = true -- (Boolean) Is admin only?

ENT.PrintName = "Pod Base" -- (String) Nice name
ENT.Author = VNTCB.Info.author -- (String) Author name
ENT.Category = VNTCB.Category.VNT -- (String) Category
ENT.Contact = VNTCB.Info.contact -- (String) Contact
ENT.Purpose = VNTCB.Info.purpose -- (String) Purpose
ENT.Instructions = VNTCB.Info.instructions -- (String) Instructions

ENT.Name = "Base" -- (String) Entity/Kill Feed Name
ENT.Ammo = 10 -- (Integer) Ammo
ENT.FireRate = 100 -- (Integer) RPM

-- Sound table, use raw file names
ENT.Sounds = { }

function ENT:SetupDataTables()
	self:NetworkVar( "Int" , 0 , "Ammo" ) -- ammo count
	self:NetworkVar( "Float" , 0 , "LastShot" ) -- last shot time
	self:NetworkVar( "Float" , 1 , "NextShot" ) -- delay/next shot time
end

function ENT:base( name )

	-- Current pod is self
	local current = self

	-- While we're self
	while current do

		-- 
		if current.ClassName == name then

			-- return current pod
			return current

		end

		-- 
		current = current.BaseClass

	end

	-- Error out with a message
	Error( "No base class with name \"" .. name .. "\"" , 2 )

end

if SERVER then

	-- Server-Side initialize
	function ENT:Initialize( )

		self:SetNextShot( 0 ) -- Next shot time
		self:SetLastShot( 0 ) -- Last shot time
		self:SetAmmo( self.Ammo ) -- Set ammo

		-- Create sound table
		self.sounds = { }

		-- for the keys in self.Sounds
		for n, p in pairs( self.Sounds ) do

			-- If the key isn't the base class entity
			if n != "BaseClass" then

				-- Create a sound key for it
				self.sounds[n] = CreateSound(self, p)

			end

		end

	end

	-- Server-side on remove
	function ENT:OnRemove()

		-- For the sound keys
		for _, SoundKeys in pairs(self.sounds) do

			-- Stop all sounds
			SoundKeys:Stop()

		end

	end

	-- get the attacker using the pod
	function ENT:getAttacker()

		-- if the seat is valid and the seat has a driver
		if IsValid( self.seat ) and IsValid( self.seat:GetDriver() ) then

			-- return that the driver is the attacker
			return self.seat:GetDriver()

		end

		-- send it to the aircraft
		return self.aircraft

	end

	--	Server-side trigger pod code
	function ENT:trigger( Boolean , TriggeringSeat )

		--	the first arg is that we should be shooting
		self.shouldShoot = Boolean

		-- the second arg is the seat that is shooting
		self.seat = TriggeringSeat

	end

	-- if we can fire
	function ENT:canFire()

		-- no shit
		return true

	end

	-- fire code
	function ENT:fire()

	end

	-- stop firing code
	function ENT:stop()

	end

	-- weapon selected?
	function ENT:select( IsWeaponSelected )

		-- if the weapon isn't active
		if !IsWeaponSelected then

			-- stop firing
			self:stop()

		end

		-- using an else here would make the pod fire continuously

	end

	-- take ammo
	function ENT:takeAmmo( amount )

		-- if we have no ammo
		if self:GetAmmo() < amount then 

			-- disable taking ammo since we have none
			return false 

		end

		-- set our ammo to the amount - used amount
		self:SetAmmo(self:GetAmmo() - amount)

		-- cycle back
		return true

	end

	-- server think
	function ENT:Think()
	
		-- if seat is valid, we can fire, we should be shooting, shot timer is up, and we have ammo
		if IsValid(self.seat) and self:canFire() and self.shouldShoot and self:GetNextShot() <= CurTime() and self:GetAmmo() > 0 then

			-- if the seat has no driver
			if !IsValid(self.seat:GetDriver()) then

				-- can't shoot
				self.shouldShoot = false

			else

				-- run the fire code
				self:fire()

				--	set our last shot to the current moment
				self:SetLastShot(CurTime())

				--	set our delay
				self:SetNextShot(self:GetLastShot() + 60/self.FireRate)

			end

		end

		-- if fire delay is up
		if self:GetNextShot() <= CurTime() then
		
			-- stop firing
			self:stop()

		end
		
		-- set next think tick
		self:NextThink( CurTime() )

		-- we can think
		return true

	end

end