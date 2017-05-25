
--[[
	WAC (WeltEnSTurm's Addon Compilation)
	Copyright (C) 2012 Robert Luger

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  http://www.gnu.org/licenses/gpl.html
]]

vnt = vnt or {
	
	version = "Ayy LMAO",
	
	author = "V92 ; weltensturm",
	
	menu = {
		tab = "Options",
		category = "V92",
	},
	
	player = function(p)
		p.vnt = p.vnt or {}
	end,

	smoothApproach = function(x,y,s,c)
		if not x then error("first argument nil", 2) end
		if not y then error("second argument nil", 2) end
		local FrT=math.Clamp(FrameTime(), 0.001, 0.035)*0.3
		c=(c and c*FrT)or(99999)
		return x-math.Clamp((x-y)*s*FrT,-c,c)
	end,

	smoothApproachAngle = function(x,y,s,c)
		local FrT=math.Clamp(FrameTime(), 0.001, 0.035)*0.3
		c=(c and c*FrT)or(99999)
		return x-math.Clamp(math.AngleDifference(x,y)*s*FrT,-c,c)
	end,

	smoothApproachAngles = function(a1,a2,s,c)
		if not a1 or not a2 then error("one argument is nil", 2) end
		a1.p = vnt.smoothApproachAngle(a1.p, a2.p, s,c)
		a1.y = vnt.smoothApproachAngle(a1.y, a2.y, s,c)
		a1.r = vnt.smoothApproachAngle(a1.r, a2.r, s,c)
		return a1
	end,

	smoothApproachVector = function(begin, target, s, c)
		if not begin then error("first argument is nil", 2) end
		if not target then error("second argument is nil", 2) end
		if not s then error("third argument is nil", 2) end
		local dir = (begin-target):GetNormal()
		local dist = begin:Distance(target)
		local var = vnt.smoothApproach(0,dist,s,c)
		local v = begin-dir*var
		begin.x = v.x
		begin.y = v.y
		begin.z = v.z
		--[[begin.x=WAC.SmoothApproach(begin.x,end.x,s,c)
		begin.y=WAC.SmoothApproach(begin.y,end.y,s,c)
		begin.z=WAC.SmoothApproach(begin.z,end.z,s,c)]]
		return begin
	end,


	hooks = {},
	hooksCalcView = {},
	hook = function(gmhook, name, func, unload)
		if gmhook == "CalcView" then
			vnt.hooksCalcView[name] = {f = func, u = unload, g = gmhook}
		else
			vnt.hooks[name] = {f = func, u = unload, g = gmhook}
			hook.Add(gmhook, name, func)
		end
	end,
	
	menuPanels = {},
	addMenuPanel = function(tab, category, name, func, ...)
		vnt.menuPanels[tab] = vnt.menuPanels[tab] or {}
		vnt.menuPanels[tab][category] = vnt.menuPanels[tab][category] or {}
		vnt.menuPanels[tab][category][name] = vnt.menuPanels[tab][category][name] or {}
		
		local t = vnt.menuPanels[tab][category][name]
		t.funcs = t.funcs or {}
		table.insert(t.funcs, func)
		
		if t.triggers then
			for k, v in pairs(t.triggers) do
				t.triggers[k] = ""
			end
		end
		
		t.triggers = t.triggers or {}
		if ... then
			for _, var in pairs({...}) do
				t.triggers[var] = ""
			end
		end
		
	end,
	
}
