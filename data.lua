require "prototypes/items"
require "prototypes/fluids"
require "prototypes/recipes"


data.raw.recipe["ash-separation"]:remove_result("coal-dust"):remove_result("iron-oxide"):add_result({type = "item", name = "clinkers",  amount = 1, probability = 0.2}):add_result({type = "item", name = "calcinates",  amount = 2})
data.raw.recipe["ash-separation"].icons = py.composite_icon("ash-separation", "ash")