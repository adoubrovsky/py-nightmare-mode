for i, item in pairs(data.raw.item) do
    if item.fuel_category ~= nil and item.fuel_category == "biomass" then
        data.raw.item[item.name].burnt_result = "clean-ash"
    end
end

data.raw.recipe["clinkers-processing-2"]:add_unlock("coal-mk01")
data.raw.recipe["clinkers-processing-3"]:add_unlock("coke-mk02")
data.raw.recipe["calcinate-separation"]:remove_unlock("fluid-separation")
data.raw.recipe["calcinate-separation"]:add_unlock("ash-separation")
data.raw.recipe["clean-ash-separation"]:add_unlock("ash-separation")
RECIPE("jerky-to-ores"):add_unlock("molecular-decohesion")