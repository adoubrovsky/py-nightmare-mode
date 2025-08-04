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
    prerequisites = {"earnshaw-theorem"},
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

RECIPE {
    type = "recipe",
    name = "titan",
    category = "creature-chamber",
    enabled = false,
    energy_required = 300,
    ingredients = {
        {type = "item",  name = "alien-sample-03",       amount = 2},
        {type = "item",  name = "cdna",                  amount = 5},
        {type = "item",  name = "bio-sample",            amount = 20},
        {type = "item",  name = "antelope-codex",        amount = 2},
        {type = "item",  name = "earth-antelope-sample", amount = 1},
        {type = "fluid", name = "fetal-serum",           amount = 100},
        {type = "fluid", name = "tritium",               amount = 60},
    },
    results = {
        {type = "item", name = "titan", amount = 1},
    },
}:add_unlock("titan")

-- RECIPE {
--     type = "recipe",
--     name = "antelope-codex",
--     category = "crafting",
--     enabled = false,
--     energy_required = 5,
--     ingredients = {
--         {type = "item", name = "glass",           amount = 2},
--         {type = "item", name = "small-lamp",      amount = 2},
--         {type = "item", name = "processing-unit", amount = 5},
--     },
--     results = {
--         {type = "item", name = "antelope-codex", amount = 1},
--     },
-- }:add_unlock("schrodinger-antelope")

-- RECIPE {
--     type = "recipe",
--     name = "earth-antelope-sample",
--     category = "data-array",
--     enabled = false,
--     energy_required = 300,
--     ingredients = {
--         {type = "item", name = "earth-generic-sample", amount = 1},
--         {type = "item", name = "py-science-pack-3",    amount = 5},
--         {type = "item", name = "antelope-codex",       amount = 1},
--     },
--     results = {
--         {type = "item", name = "earth-antelope-sample", amount = 1},
--     },
-- }:add_unlock("schrodinger-antelope")
