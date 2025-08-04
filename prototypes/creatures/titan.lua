-- Consumes every animal
-- Slaughetered for Titan Teeth
-- Used in science

data:extend{
    {
        type = "item-subgroup",
        name = "py-nightmare-titan",
        group = "py-alienlife",
        order = "e-titan",
    },
    {
        type = "module-category",
        name = "titan"
    },

}

TECHNOLOGY {
    type = "technology",
    name = "titan",
    icons = {
      {icon = "__py-nightmare-mode__/graphics/technology/tech-blank.png", icon_size = 128},
      {icon = "__py-nightmare-mode__/graphics/technology/titan.png", scale = 0.8, icon_size = 128}
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {"schrodinger-antelope"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack",   2},
            {"chemical-science-pack",   2},
            {"production-science-pack", 2},
        },
        time = 50
    }
}

ITEM {
    type = "module",
    name = "titan",
    icons = {
        {icon = "__py-nightmare-mode__/graphics/icons/titan.png"}
    },
    icon_size = 64,
    category = "titan",
    tier = 1,
    flags = {},
    subgroup = "py-nightmare-titan",
    order = "v-titan",
    stack_size = 50,
    effect = {pollution = 1, speed = 1},
}

ITEM {
    type = "item",
    name = "titan-pup",
    icons = {
        {icon = "__py-nightmare-mode__/graphics/icons/titan-pup.png"}
    },
    icon_size = 64,
    category = "titan",
    tier = 1,
    flags = {},
    subgroup = "py-nightmare-titan",
    order = "v-titan-b",
    stack_size = 50,
    effect = {pollution = 1, speed = 1},
}

ITEM {
    type = "item",
    name = "earth-megalodon-sample",
    icons = {
      {icon = "__pyalienlifegraphics__/graphics/icons/earth-generic-sample.png"},
      {icon = "__py-nightmare-mode__/graphics/icons/titan.png", icon_size = 64, scale = 0.25, shift = {0, -8}},
    },
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-samples",
    order = "a",
    stack_size = 100
}

ITEM {
    type = "item",
    name = "titan-codex",
    icon = "__py-nightmare-mode__/graphics/icons/titan-codex.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alienlife-codex",
    order = "x",
    stack_size = 100
}

-- Startup Process

RECIPE {
    type = "recipe",
    name = "titan",
    category = "creature-chamber",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item",  name = "alien-sample-03",       amount = 30},
        {type = "item",  name = "cdna",                  amount = 5},
        {type = "item",  name = "bio-sample",            amount = 20},
        {type = "item",  name = "titan-codex",        amount = 2},
        {type = "item",  name = "earth-megalodon-sample", amount = 1},
        {type = "fluid", name = "fetal-serum",           amount = 100},
        {type = "item", name = "meat",               amount = 300},
    },
    results = {
        {type = "item", name = "titan", amount = 1},
    },
}:add_unlock("titan")

RECIPE {
    type = "recipe",
    name = "titan-codex",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "glass",           amount = 2},
        {type = "item", name = "small-lamp",      amount = 2},
        {type = "item", name = "processing-unit", amount = 5},
    },
    results = {
        {type = "item", name = "titan-codex", amount = 1},
    },
}:add_unlock("titan")

RECIPE {
    type = "recipe",
    name = "earth-megaladon-sample",
    category = "data-array",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item", name = "earth-generic-sample", amount = 1},
        {type = "item", name = "py-science-pack-3",    amount = 5},
        {type = "item", name = "titan-codex",       amount = 1},
    },
    results = {
        {type = "item", name = "earth-megalodon-sample", amount = 1},
    },
}:add_unlock("titan")

-- Breeding

py.autorecipes {
	name = "titan-breeding",
	category = "rc",
	allowed_module_categories = {"titan"},
	subgroup = "py-nightmare-titan",
	order = "titan-a",
	main_product = "titan-pup",
	mats =
	{
		{
			ingredients =
			{
				{name = "vrauks", amount = 10},
				{name = "auog", amount = 10},
				{name = "cottongut", amount = 10},
				{name = "korlex", amount = 10},
				{name = "arqad", amount = 10},
				{name = "ulric", amount = 10},
				{name = "xyhiphoe", amount = 6},
				{name = "mukmoux", amount = 6},
				{name = "trits", amount = 7},
				{name = "phagnot", amount = 7},
				{name = "arthurian", amount = 3},
				{name = "cridren", amount = 5},
				{name = "dingrits", amount = 5},
				{name = "dhilmos", amount = 3},
				{name = "scrondrix", amount = 3},
				{name = "kmauts", amount = 3},
				{name = "simik", amount = 3},
				{name = "numal", amount = 3},
				{name = "zungror", amount = 3},
				{name = "vonix", amount = 1},
			},
			results =
			{
				{name = "titan-pup", amount = 20},
			},
			crafting_speed = 80,
			tech = "titan"
		},
	}
}

-- Raising

py.autorecipes {
	name = "titan",
	category = "bay",
	subgroup = "py-nightmare-titan",
	order = "titan-b",
	main_product = "titan",
	number_icons = true,
	mats =
	{
		{
			ingredients =
			{
				{name = "titan-pup", amount = 5},
				{name = "vrauks", amount = 10},
				{name = "auog", amount = 10},
				{name = "cottongut", amount = 10},
				{name = "arqad", amount = 10},
				{name = "korlex", amount = 10},
				{name = "ulric", amount = 10},
				{name = "xyhiphoe", amount = 6},
				{name = "mukmoux", amount = 6},
				{name = "trits", amount = 7},
				{name = "phagnot", amount = 7},
				{name = "arthurian", amount = 3},
				{name = "cridren", amount = 5},
				{name = "dingrits", amount = 5},
				{name = "dhilmos", amount = 3},
				{name = "scrondrix", amount = 3},
				{name = "kmauts", amount = 3},
				{name = "simik", amount = 3},
				{name = "numal", amount = 3},
				{name = "zungror", amount = 3},
				{name = "vonix", amount = 1},
			},
			results =
			{
				{name = "titan", amount = 5},
			},
			crafting_speed = 150,
			tech = "titan"
		},
	}
}
