
if not game.SinglePlayer() then return end

local cms={
	x=CreateClientConVar("VNT_Vehicle_CL_model_line_x",0,true,false),
	y=CreateClientConVar("VNT_Vehicle_CL_model_line_y",0,true,false),
	z=CreateClientConVar("VNT_Vehicle_CL_model_line_z",0,true,false),
	model=CreateClientConVar("VNT_Vehicle_CL_model_model","",true,false),
	b=CreateClientConVar("VNT_Vehicle_CL_showdevhelp",0,true,false)
}

local cm=NULL

concommand.Add("VNT_Vehicle_Clientsidemodel_Create", function(p,c,a)
	if IsValid(cm) then cm:Remove() end
	local m=ClientsideModel(cms.model:GetString(),RENDERGROUP_OPAQUE)
	if IsValid(m) then
		m:SetPos(p:GetPos()+Vector(0,0,200))
		cm=m
	end
end)

concommand.Add("VNT_Vehicle_ClientsideModel_Remove", function(p,c,a)
	if IsValid(cm) then cm:Remove() end
end)

concommand.Add("VNT_Vehicle_CL_model_printvars", function(p,c,a)
	local s="Vector("..math.floor(cms.x:GetFloat()*100)/100 ..","..math.floor(cms.y:GetFloat()*100)/100 ..","..math.floor(cms.z:GetFloat()*100)/100 ..")"
	p:ChatPrint(s)
end)

vnt.hook("HUDPaint","VNT_Vehicle_CL_dev_draw", function()
	if IsValid(cm) then
		pointPos = Vector(cms.x:GetFloat(),cms.y:GetFloat(),cms.z:GetFloat())
		local p = {
			start = cm:LocalToWorld(pointPos):ToScreen(),
			fwd = cm:LocalToWorld(pointPos + Vector(1,0,0)):ToScreen(),
			left = cm:LocalToWorld(pointPos + Vector(0,1,0)):ToScreen(),
			up = cm:LocalToWorld(pointPos + Vector(0,0,1)):ToScreen()
		}

		surface.SetDrawColor(Color(255, 0, 0))
		surface.DrawLine(p.start.x, p.start.y, p.fwd.x, p.fwd.y)
		surface.SetDrawColor(Color(0, 255, 0))
		surface.DrawLine(p.start.x, p.start.y, p.up.x, p.up.y)
		surface.SetDrawColor(Color(0, 0, 255))
		surface.DrawLine(p.start.x, p.start.y, p.left.x, p.left.y)
	end
end)
