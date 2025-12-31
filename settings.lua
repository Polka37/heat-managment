data:extend({
	{
		type = "double-setting",
		name = "assembler-heat",
		setting_type = "startup",
		default_value = 0.5,
		order = "a1[assembler-heat]",
	},
	{
		type = "double-setting",
		name = "furnace-heat",
		setting_type = "startup",
		default_value = 0.8,
		order = "a2[furnace-heat]",
	},
	{
		type = "double-setting",
		name = "thruster-heat",
		setting_type = "startup",
		default_value = 1,
		order = "a3[thruster-heat]",
	},
	{
		type = "bool-setting",
		name = "hm-require-coolant",
		setting_type = "startup",
		default_value = true,
		order = "b[hm-require-coolant]",
	},
})
