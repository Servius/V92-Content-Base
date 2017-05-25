
include "v92/base.lua"
include "v92/keyboard.lua"

vnt.menu.aircraft = "Vehicles"

vnt.vehicle = vnt.vehicle or {

	addControls = function(category, t)
		local c
		for i, t in pairs(vnt.vehicle.controls) do
			if t.name == category then
				c = t
			end
		end
		if not c then
			c = { name = category, list = {} }
			table.insert(vnt.vehicle.controls, c)
		end

		for name, control in pairs(t) do
			control[2] = control[2] or KEY_NONE
			c.list[name] = control
		end
	end,

	controls = {},

	initialize = function()
		if not vnt.vehicle.initialized then
			vnt.vehicle.initialized = true
			hook.Run("vntVehicleAddInputs")
		end
	end,

}
