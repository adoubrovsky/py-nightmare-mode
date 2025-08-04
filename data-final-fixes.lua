for i, recipe in pairs(data.raw.recipe) do
	if recipe.ingredients ~= nil then
		recipe:replace_ingredient("ash", "calcinates")
	end
end

---All coal/tar related recipes should still use coal ash
RECIPE("ash-separation"):replace_ingredient("calcinates", "ash")
RECIPE("py-limestone"):replace_ingredient("calcinates", "ash")
RECIPE("py-coal-tile"):replace_ingredient("calcinates", "ash")
RECIPE("py-asphalt"):replace_ingredient("calcinates", "ash")
RECIPE("flue-gas-2"):replace_ingredient("calcinates", "ash")
RECIPE("soda-ash"):replace_ingredient("calcinates", "ash")
RECIPE("uranium-seperation"):replace_ingredient("calcinates", "ash")
RECIPE("empty-comb"):replace_ingredient("calcinates", "ash")
RECIPE("phosphorus-acid"):replace_ingredient("calcinates", "ash")
RECIPE("cermet"):replace_ingredient("calcinates", "ash")
RECIPE("fish-oil-to-lube"):replace_ingredient("calcinates", "ash")

RECIPE("ash"):replace_result("ash", "clean-ash")
RECIPE("ash-bone"):replace_result("ash", "clean-ash")
RECIPE("ash3"):replace_result("ash", "clean-ash")

RECIPE("planter-box"):replace_ingredient("calcinates", "clean-ash")

RECIPE("biomass-dried-meat"):remove_unlock("compost"):set_fields{hidden = true}

-- New modules for repro-complex

local complexes = {"rc-mk01", "rc-mk02", "rc-mk03", "rc-mk04"}
local new_modules = {"titan"}

for _,name in pairs(complexes) do
	local complex = data.raw["assembling-machine"][name]
	complex.allowed_module_categories = py.merge(complex.allowed_module_categories, new_modules)
end
