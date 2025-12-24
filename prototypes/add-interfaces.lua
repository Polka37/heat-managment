local util = require("util")

for _, assembler in pairs(data.raw["assembling-machine"]) do
	if assembler.name ~= "small-radiator" and assembler.name ~= "ground-radiator" then
		util.add_heat_interface(assembler, 150, 250, settings.startup["assembler-heat"].value)
	end
end

for _, furnace in pairs(data.raw["furnace"]) do
	util.add_heat_interface(furnace, 400, 650, settings.startup["furnace-heat"].value)
end

util.add_heat_interface(data.raw["assembling-machine"]["foundry"], 400, 650, settings.startup["furnace-heat"].value)
util.add_heat_interface(data.raw["furnace"]["recycler"], 150, 250, settings.startup["assembler-heat"].value)

for _, thruster in pairs(data.raw["thruster"]) do
	util.add_heat_interface(thruster, 800, 400, settings.startup["thruster-heat"].value)
end
