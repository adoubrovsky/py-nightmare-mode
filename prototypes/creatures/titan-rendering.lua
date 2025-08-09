------------------RENDERING------------------

local INPUT_AMOUNT = 1

local BASE_MEAT = 30
local BASE_SKIN = 15
local BASE_FAT = 20
local BASE_GUTS = 20
local BASE_BLOOD = 100
local BASE_BRAIN = 1
local BASE_SPECIAL = 1

local IMP_MEAT = 45
local IMP_SKIN = 25
local IMP_FAT = 25
local IMP_GUTS = 25
local IMP_BLOOD = 230
local IMP_BRAIN = 3
local IMP_SPECIAL = 2

ITEM {
  type = "item",
  name = "big-brain",
  icon = "__py-nightmare-mode__/graphics/icons/big-brain.png",
  icon_size = 64,
  stack_size = 20,
}

RECIPE {
  type = "recipe",
  name = "full-render-big-brain",
  icons = {
    {icon = "__py-nightmare-mode__/graphics/icons/big-brain.png", icon_size = 64},
    {icon = "__py-nightmare-mode__/graphics/icons/rendering.png", icon_size = 64}
  },
  ingredients = {
    {
      type = "item",
      name = "big-brain",
      amount = 1
    }
  },
  results = {
    {
      type = "item",
      name = "brain",
      amount = 10
    }
  }
}:add_unlock("titan")

py.autorecipes {
	name = "rendering",
	category = "slaughterhouse",
	subgroup = "py-nightmare-titan",
	order = "b",
	crafting_speed = 30,
	mats =
	{
		{
			ingredients =
			{
				{name = "titan", amount = INPUT_AMOUNT},
			},
			results =
			{
				{name = "meat",            amount = BASE_MEAT},
				{name = "mukmoux-fat",     amount = BASE_FAT},
				{name = "chitin",          amount = BASE_SKIN},
				{name = "guts",            amount = BASE_GUTS},
				{name = "arthropod-blood", amount = BASE_BLOOD},
				{name = "big-brain",           amount = BASE_BRAIN}
			},
			crafting_speed = 30,
			tech = "titan",
			name = "full-render-titans",
      icons = {
        {icon = "__py-nightmare-mode__/graphics/icons/titan.png", icon_size = 64},
        {icon = "__py-nightmare-mode__/graphics/icons/rendering.png", icon_size = 64}
      },
		},
		-- --meat titan rendering
		-- {
		-- 	ingredients =
		-- 	{
		-- 		{name = "titan",      remove_item = true},
		-- 		{name = "meat-titan", amount = INPUT_AMOUNT},
		-- 	},
		-- 	results =
		-- 	{
		-- 		{name = "mukmoux-fat",     remove_item = true},
		-- 		{name = "chitin",          remove_item = true},
		-- 		{name = "guts",            remove_item = true},
		-- 		{name = "arthropod-blood", remove_item = true},
		-- 		{name = "meat",            amount = IMP_MEAT},
		-- 	},
		-- 	tech = "anabolic-rna",
		-- 	name = "ex-me-dhi",
		-- 	icons = {
		-- 		{icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png"},
		-- 		{icon = "__pyalienlifegraphics__/graphics/icons/mip/meat-01.png", scale = 0.25, shift = {-8, -8}}
		-- 	},
		-- 	icon_size = 64,
		-- },
		-- --guts titan rendering
		-- {
		-- 	ingredients =
		-- 	{
		-- 		{name = "meat-titan", remove_item = true},
		-- 		{name = "guts-titan", amount = INPUT_AMOUNT},
		-- 	},
		-- 	results =
		-- 	{
		-- 		{name = "meat", remove_item = true},
		-- 		{name = "guts", amount = IMP_GUTS},
		-- 	},
		-- 	tech = "antitumor",
		-- 	name = "ex-gut-dhi",
		-- 	icons = {
		-- 		{icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png"},
		-- 		{icon = "__pyalienlifegraphics__/graphics/icons/mip/guts-07.png", scale = 0.25, shift = {-8, -8}}
		-- 	},
		-- 	icon_size = 64,
		-- },
		-- --blood titan rendering
		-- {
		-- 	ingredients =
		-- 	{
		-- 		{name = "guts-titan",  remove_item = true},
		-- 		{name = "blood-titan", amount = INPUT_AMOUNT},
		-- 	},
		-- 	results =
		-- 	{
		-- 		{name = "guts",            remove_item = true},
		-- 		{name = "arthropod-blood", amount = IMP_BLOOD},
		-- 	},
		-- 	tech = "recombinant-ery",
		-- 	name = "ex-blo-dhi",
		-- 	icons = {
		-- 		{icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png"},
		-- 		{icon = "__pyalienlifegraphics__/graphics/icons/arthropod-blood.png", scale = 0.25, shift = {-8, -8}}
		-- 	},
		-- 	icon_size = 64,
		-- },
		-- --fat titan rendering
		-- {
		-- 	ingredients =
		-- 	{
		-- 		{name = "blood-titan", remove_item = true},
		-- 		{name = "fat-titan",   amount = INPUT_AMOUNT},
		-- 	},
		-- 	results =
		-- 	{
		-- 		{name = "arthropod-blood", remove_item = true},
		-- 		{name = "mukmoux-fat",     amount = IMP_FAT},
		-- 	},
		-- 	tech = "orexigenic",
		-- 	name = "ex-fat-dhi",
		-- 	icons = {
		-- 		{icon = "__pyalienlifegraphics__/graphics/icons/dhilmo.png"},
		-- 		{icon = "__pyalienlifegraphics__/graphics/icons/mukmoux-fat.png", scale = 0.25, shift = {-8, -8}}
		-- 	},
		-- 	icon_size = 64,
		-- },
	}
}
