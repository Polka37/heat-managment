local util = require("util")

local assembler_heat = settings.startup["assembler-heat"].value
local furnace_heat = settings.startup["assembler-heat"].value
local thruster_heat = settings.startup["assembler-heat"].value

-- Auto add interfaces
for _, assembler in pairs(data.raw["assembling-machine"]) do
	if assembler.name ~= "small-radiator" and assembler.name ~= "ground-radiator" then
		util.add_heat_interface(assembler, 150, 250, assembler_heat)
	end
end

for _, furnace in pairs(data.raw["furnace"]) do
	util.add_heat_interface(furnace, 400, 650, furnace_heat)
end

for _, thruster in pairs(data.raw["thruster"]) do
	util.add_heat_interface(thruster, 800, 400, thruster_heat)
end

-- Post Processing
util.add_heat_interface(data.raw["assembling-machine"]["foundry"], 400, 650, furnace_heat)
util.add_heat_interface(data.raw["furnace"]["recycler"], 150, 250, assembler_heat)
