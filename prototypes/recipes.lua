data:extend({
	-- Radiators
	{
		type = "recipe",
		name = "small-radiator",
		enabled = false,
		energy_required = 15,
		ingredients = {
			{ type = "item", name = "heat-pipe", amount = 4 },
			{ type = "item", name = "copper-plate", amount = 20 },
			{ type = "item", name = "steel-plate", amount = 15 },
		},
		results = { { type = "item", name = "small-radiator", amount = 1 } },
	},
	{
		type = "recipe",
		name = "ground-radiator",
		enabled = false,
		energy_required = 20,
		ingredients = {
			{ type = "item", name = "heat-exchanger", amount = 1 },
			{ type = "item", name = "heat-pipe", amount = 8 },
			{ type = "item", name = "low-density-structure", amount = 10 },
		},
		results = { { type = "item", name = "ground-radiator", amount = 1 } },
	},
	{
		type = "recipe",
		name = "hm-large-radiator",
		enabled = false,
		energy_required = 20,
		ingredients = {
			{ type = "item", name = "ground-radiator", amount = 4 },
			{ type = "item", name = "heat-pipe", amount = 50 },
			{ type = "item", name = "lithium-plate", amount = 200 },
		},
		results = { { type = "item", name = "hm-large-radiator", amount = 1 } },
	},
	-- Coolants
	{ type = "recipe-category", name = "radiator-coolant" },
	{
		type = "item-subgroup",
		name = "hm-radiation",
		group = "space",
		order = "a1[radiation]",
	},
	{
		type = "recipe",
		name = "hm-heat-radiation-water",
		icon = "__base__/graphics/icons/signal/signal-fire.png",
		icons = {
			{ icon = "__base__/graphics/icons/signal/signal-fire.png" },
			{ icon = "__base__/graphics/icons/fluid/water.png", scale = 0.33, shift = { 8, -8 } },
		},
		category = "radiator-coolant",
		subgroup = "hm-radiation",
		enabled = true,
		energy_required = 1,
		ingredients = {
			{ type = "fluid", name = "water", amount = 5 },
		},
		hide_from_player_crafting = true,
	},
	{
		type = "recipe",
		name = "hm-heat-radiation-fluoroketone",
		icons = {
			{ icon = "__base__/graphics/icons/signal/signal-fire.png" },
			{ icon = "__space-age__/graphics/icons/fluid/fluoroketone-cold.png", scale = 0.33, shift = { 8, -8 } },
		},
		category = "radiator-coolant",
		subgroup = "hm-radiation",
		enabled = false,
		energy_required = 1,
		ingredients = {
			{ type = "fluid", name = "fluoroketone-cold", amount = 1 },
		},
		results = {
			{ type = "fluid", name = "fluoroketone-hot", amount = 1 },
		},
		hide_from_player_crafting = true,
	},
})
