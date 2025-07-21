RECIPE {
	type = "recipe",
	name = "clinkers-processing-1",
	category = "crusher",
	enabled = false,
	energy_required = 10,
	ingredients = {
		{type = "item", name = "clinkers", amount = 1}
	},
	results = {
		{type = "item", name = "coal-dust", amount = 4}
	},
	main_product = "coal-dust",
	icons = py.composite_icon("clinkers", "coal-dust"),
	--icon = "__pycoalprocessinggraphics__/graphics/icons/ash.png",
	icon_size = 64,
}:add_unlock("crusher")

RECIPE {
	type = "recipe",
	name = "clinkers-processing-2",
	category = "secondary-crusher",
	enabled = false,
	energy_required = 15,
	ingredients = {
		{type = "item", name = "clinkers", amount = 3}
	},
	results = {
		{type = "item", name = "coal-dust", amount = 1},
		{type = "item", name = "coal", amount = 2},
		{type = "item", name = "crushed-coal", amount = 1}
	},
	main_product = "coal",
	icons = py.composite_icon("clinkers", "coal"),
	icon_size = 64,
}

RECIPE {
	type = "recipe",
	name = "clinkers-processing-3",
	category = "ball-mill",
	enabled = false,
	energy_required = 20,
	ingredients = {
		{type = "item", name = "clinkers", amount = 5}
	},
	results = {
		{type = "item", name = "coke", amount = 8},
		{type = "item", name = "coal", amount = 2},
		{type = "item", name = "coal-dust", amount = 4}
	},
	main_product = "coal",
	icons = py.composite_icon("clinkers", "coke"),
	icon_size = 64,
}

RECIPE {
    type = "recipe",
    name = "clean-ash-separation",
    category = "solid-separator",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "clean-ash", amount = 10}
    },
    results = {
        {type = "item", name = "coal-dust",  amount = 1, probability = 0.5},
		{type = "item", name = "calcinates",  amount = 6},
        {type = "item", name = "soot", amount = 1, probability = 0.05}
    },
    icons = py.composite_icon("ash-separation", "clean-ash"),
    icon_size = 32,
    subgroup = "py-items-class",
    order = "f"
}

RECIPE {
	type = "recipe",
    name = "jerky-to-ores",
    category = "atomizer",
    enabled = false,
    energy_required = 20,
    ingredients = {
        {type = "item", name = "dried-meat", amount = 15}
    },
    results = {
        {type = "item", name = "iron-ore",  amount = 40},
		{type = "item", name = "copper-ore",  amount = 15},
        {type = "item", name = "ore-zinc", amount = 5}
    },
    icons = py.composite_icon("ash-separation", "clean-ash"),
    icon_size = 32,
    subgroup = "py-items-class",
    order = "f"
}