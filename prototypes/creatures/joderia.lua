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
      {icon = "__py-nightmare-mode__/graphics/technology/titan.png", scale = 0.8, icon_size = 128}
    },
    icon_size = 128,
    order = "c-a",
    prerequisites = {""},
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
