require "prototypes/items"
require "prototypes/recipes"


data.raw.recipe["ash-separation"]:remove_result("coal-dust"):add_result({type = "item", name = "clinkers",  amount = 1, probability = 0.2})