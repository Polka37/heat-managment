data:extend({
	{
		type = "technology",
		name = "ground-radiator",
		icon = "__TFMG-thermal__/graphics/radiator-ground/radiator-ground.png",
		icon_size = 256,
		unit = {
			time = 60,
			count = 500,
			ingredients = {
				{ "automation-science-pack", 1 },
				{ "logistic-science-pack", 1 },
				{ "chemical-science-pack", 1 },
				{ "production-science-pack", 1 },
				{ "utility-science-pack", 1 },
				{ "space-science-pack", 1 },
				{ "electromagnetic-science-pack", 1 },
				{ "metallurgic-science-pack", 1 },
				{ "agricultural-science-pack", 1 },
				{ "cryogenic-science-pack", 1 },
			},
		},
		prerequisites = { "cryogenic-science-pack" },
		effects = {
			{ type = "unlock-recipe", recipe = "ground-radiator" },
		},
	},
})

table.insert(data.raw["technology"]["space-platform"].effects, { type = "unlock-recipe", recipe = "small-radiator" })
