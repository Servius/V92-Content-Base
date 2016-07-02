
AddCSLuaFile() 
 
if GetConVarNumber( "VNT_Debug_Prints" ) != 0 then	print( "[V92] entities/supply_rocket.lua Loading...")	end

ENT.Type				= "anim"  
ENT.PrintName			= "Supply - Rockets"  
ENT.Author				= "V92"  
ENT.Contact				= ""  
ENT.Purpose				= ""  
ENT.Instructions		= "Rocket Ammo Crate" 
ENT.Category 			= "VDFOPSCOM"

ENT.AutomaticFrameAdvance	=	true
ENT.Spawnable			= true	
ENT.AdminOnly			= false

if CLIENT then	function ENT:Draw()	self:DrawModel()	end  end

function ENT:SpawnFunction( ply, tr )

	if ( !tr.Hit ) then return end

	local SpawnPos = tr.HitPos + tr.HitNormal * 64

	local ent = ents.Create( "supply_rocket" )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()
	return ent
end

if SERVER then
	function ENT:Initialize()     	
		self:SetModel( "models/Items/ammocrate_rockets.mdl" )  	
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_VPHYSICS )
		self:SetSolid( SOLID_VPHYSICS )   
		self:SetUseType( SIMPLE_USE )
		self:SetBodygroup(1,1)
		self:DropToFloor()
		self.use = true
		local phys = self:GetPhysicsObject()  	
		if (phys:IsValid()) then	phys:Wake()	end  
	end
	function ENT:Use(_A)
		if (self.use) then
			self.use = false
			local open	= self:LookupSequence( "open" )
			local close	= self:LookupSequence( "close" )
			self:ResetSequence( open )
			timer.Simple( 1, function() 
				self:SetBodygroup(1,0)
				self:ResetSequence( close ) 
				_A:GiveAmmo( 3, "matador" )
				_A:GiveAmmo( 3, "mrrl" )
				_A:GiveAmmo( 3, "rpg7rocket" )
			end)
			timer.Simple( 2, function() 
				self.use = true 
				self:SetBodygroup(1,1)
			end)
		end
	end
end
