data:extend{
    {
        type = "item-subgroup",
        name = "py-nightmare-joderia",
        group = "py-alienlife",
        order = "f-joderia",
    },
}

TECHNOLOGY {
    type = "technology",
    name = "joderia",
    icons = {
      {icon = "__py-nightmare-mode__/graphics/technology/tech-blank.png", icon_size = 128},
      {icon = "__py-nightmare-mode__/graphics/technology/joderia.png", scale = 0.8, icon_size = 128}
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {"py-science-pack-4"},
    effects = {},
    unit = {
        count = 150,
        ingredients = {
            {"automation-science-pack", 3},
            {"logistic-science-pack",   2},
            {"chemical-science-pack",   2},
            {"production-science-pack",   2},
            {"py-science-pack-4",   1},
        },
        time = 50
    }
}

FLUID {
    type = "fluid",
    name = "joderia",
    icons = {
        {icon = "__py-nightmare-mode__/graphics/icons/joderia.png"}
    },
    icon_size = 64,
    tier = 1,
    flags = {},
    default_temperature = 15,
    base_color = {203/255, 53/255, 0},
    flow_color = {203/255, 53/255, 0},
    subgroup = "py-nightmare-joderia",
    order = "v-joderia",
    stack_size = 200,
}

RECIPE {
    type = "recipe",
    name = "joderia-bootstrap",
    category = "bio-reactor",
    ingredients = {
        {
            type = "fluid",
            name = "bacteria-1",
            amount = 10
        },
        {
            type = "fluid",
            name = "blood",
            amount = 800
        }
    },
    results = {
        {
            type = "fluid",
            name = "joderia",
            amount = 1,
            probability = 0.01
        }
    },
    main_product = "joderia"
}

RECIPE {
    type = "recipe",
    name = "joderia-breeding",
    category = "bio-reactor",
    ingredients = {
        {
            type = "fluid",
            name = "joderia",
            amount = 1
        },
        {
            type = "fluid",
            name = "blood",
            amount = 500
        }
    },
    results = {
        {
            type = "fluid",
            name = "joderia",
            amount_min = 0,
            amount_max = 8
        }
    },
    main_product = "joderia"
}
