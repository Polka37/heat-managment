data.raw.item["small-radiator"].hidden = false
data.raw.item["small-radiator"].hidden_in_factoriopedia = false
data.raw.item["small-radiator"].subgroup = "space-platform"

data.raw.item["ground-radiator"].hidden = false
data.raw.item["ground-radiator"].hidden_in_factoriopedia = false
data.raw.item["ground-radiator"].subgroup = "space-platform"
data.raw.item["ground-radiator"].order = "e[radiator]"

data.raw["assembling-machine"]["ground-radiator"].energy_usage = "10MW"

if settings.startup["hm-require-coolant"].value then
	local underground_pipe_picture = {
		north = {
			filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			scale = 0.5,
			shift = { 0, 1 },
		},
		east = {
			filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			scale = 0.5,
			shift = { -1, 0 },
		},
		south = {
			filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			scale = 0.5,
			shift = { 0, -1 },
		},
		west = {
			filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			scale = 0.5,
			shift = { 1, 0 },
		},
	}
	data.raw["assembling-machine"]["ground-radiator"].fixed_recipe = nil
	data.raw["assembling-machine"]["ground-radiator"].crafting_categories = { "radiator-coolant" }
	data.raw["assembling-machine"]["ground-radiator"].fluid_boxes = {
		{
			production_type = "input",
			pipe_picture = underground_pipe_picture,
			pipe_covers = pipecoverspictures(),
			volume = 100,
			pipe_connections = {
				{ flow_direction = "input-output", direction = defines.direction.south, position = { 1, 1 } },
				{ flow_direction = "input-output", direction = defines.direction.east, position = { 1, 1 } },
				{ flow_direction = "input-output", direction = defines.direction.north, position = { -1, -1 } },
				{ flow_direction = "input-output", direction = defines.direction.west, position = { -1, -1 } },
			},
			secondary_draw_orders = { north = -1, south = -1, east = -1, west = -1 },
		},
		{
			production_type = "output",
			pipe_picture = underground_pipe_picture,
			pipe_covers = pipecoverspictures(),
			volume = 100,
			pipe_connections = {
				{ flow_direction = "input-output", direction = defines.direction.north, position = { 1, -1 } },
				{ flow_direction = "input-output", direction = defines.direction.east, position = { 1, -1 } },
				{ flow_direction = "input-output", direction = defines.direction.south, position = { -1, 1 } },
				{ flow_direction = "input-output", direction = defines.direction.west, position = { -1, 1 } },
			},
			secondary_draw_orders = { north = -1, south = -1, east = -1, west = -1 },
		},
	}
end
