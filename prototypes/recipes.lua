data:extend({
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
			{ type = "item", name = "lithium-plate", amount = 20 },
		},
		results = { { type = "item", name = "ground-radiator", amount = 1 } },
	},
	{ type = "recipe-category", name = "radiator-coolant" },
	{
		type = "recipe",
		name = "hm-heat-radiation-water",
		icon = "__base__/graphics/icons/signal/signal-fire.png",
		category = "radiator-coolant",
		subgroup = "space-platform",
		enabled = true,
		energy_required = 1,
		ingredients = {
			{ type = "fluid", name = "water", amount = 1 },
		},
	},
	{
		type = "recipe",
		name = "hm-heat-radiation-fluoroketone",
		icon = "__base__/graphics/icons/signal/signal-fire.png",
		category = "radiator-coolant",
		subgroup = "space-platform",
		enabled = true,
		energy_required = 1,
		ingredients = {
			{ type = "fluid", name = "fluoroketone-cold", amount = 1 },
		},
		results = {
			{ type = "fluid", name = "fluoroketone-hot", amount = 1 },
		},
	},
})
