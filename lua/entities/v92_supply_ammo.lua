
AddCSLuaFile() 
 
if GetConVarNumber( "VNT_Debug_Prints" ) != 0 then	print( "[V92] entities/supply_ammo.lua Loading...")	end

ENT.Type					=	"anim"  
ENT.PrintName				=	"Supply - Ammo"  
ENT.Author					=	"V92"  
ENT.Contact					=	""  
ENT.Purpose					=	""  
ENT.Instructions			=	"Ammo Crate" 
ENT.Category 				=	"VDFOPSCOM"

ENT.AutomaticFrameAdvance	=	true
ENT.Spawnable				=	true	
ENT.AdminOnly				=	false

if CLIENT then	function ENT:Draw()	self:DrawModel()	end	end

if SERVER then
function ENT:SpawnFunction( ply, tr )
	if ( !tr.Hit ) then return end

	local SpawnPos = tr.HitPos + tr.HitNormal * 64

	local ent = ents.Create( "supply_ammo" )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()
	return ent
end

	function ENT:Initialize()     	
		self:SetModel( "models/Items/ammocrate_smg1.mdl" )  	
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
				_A:GiveAmmo( 30, "556x45mmnato" )
				_A:GiveAmmo( 50, "68x43mm" )
				_A:GiveAmmo( 50, "68mmcl" )
				_A:GiveAmmo( 20, "762x51mmnato" )
				_A:GiveAmmo( 8, "40sw" )
				_A:GiveAmmo( 8, "45acp" )
				_A:GiveAmmo( 8, "9x19mmnato" )
				_A:GiveAmmo( 8, "12gauge" )
				_A:GiveAmmo( 8, "9x18mmwp" )
				_A:GiveAmmo( 30, "545x39mmwp" )
				_A:GiveAmmo( 8, "762x25mmwp" )
				_A:GiveAmmo( 30, "762x39mmwp" )
				_A:GiveAmmo( 30, "762x54mmwp" )
				_A:GiveAmmo( 3, "40x46mmgrenade" )
				_A:GiveAmmo( 1, "m18grenade" )
				_A:GiveAmmo( 1, "m67grenade" )
				_A:GiveAmmo( 1, "rgd5grenade" )
			end)
			timer.Simple( 2, function() 
				self.use = true 
				self:SetBodygroup(1,1)
			end)
		end
	end
end
