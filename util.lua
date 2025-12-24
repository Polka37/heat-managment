local util = {}

--- @param entity string
--- @param max_working_temperature integer
--- @param max_safe_temperature integer
--- @param heat_ratio float
function util.add_heat_interface(entity, max_working_temperature, max_safe_temperature, heat_ratio)
	if not entity then
		log("a building doesn't exist, skipping adding heat interface")
		return
	end

	entity.TFMG_thermal = {
		surface_conditions = {
			{
				property = "gravity",
				max = 0,
			},
		},
		heat_ratio = heat_ratio,
		max_working_temperature = max_working_temperature,
		max_safe_temperature = max_safe_temperature,
		default_temperature = 15,
	}
end

return util
