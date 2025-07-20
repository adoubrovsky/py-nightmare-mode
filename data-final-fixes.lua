for i, recipe in pairs(data.raw.recipe) do
	if recipe.ingredients ~= nil then
		recipe:replace_ingredient("ash", "calcinates")
	end
end