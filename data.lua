---Function taken from pypostprocessing and altered to get recipe icons as well
---Returns a composite icon with a base icon and up to 4 child icons.
---The child icons are placed in the corners of the base icon, and can be tinted with a shadow color.
---@param base_prototype_string string
---@param child_top_left string?
---@param child_top_right string?
---@param child_bottom_left string?
---@param child_bottom_right string?
---@param shadow_alpha number?
---@param shadow_scale number?
---@param child_scale number?
---@param shift number?
function py.recipe_composite_icon(base_prototype_string, child_top_left, child_top_right, child_bottom_left, child_bottom_right,
                           shadow_alpha, shadow_scale, child_scale, shift)
    shadow_alpha = shadow_alpha or 0.6
    shadow_scale = shadow_scale or 0.6
    child_scale = child_scale or 0.5
    shift = shift or 10
    local base_prototype = data.raw.fluid[base_prototype_string] or data.raw.item[base_prototype_string] or data.raw.recipe[base_prototype_string]

    local icons = {
        {
            icon = base_prototype.icon,
            icon_size = (base_prototype.icon_size or 64)
        }
    }

    -- Add shadow icons
    if child_top_left then
        local child_prototype = data.raw.fluid[child_top_left] or data.raw.item[child_top_left]
        table.insert(icons, {
            icon = child_prototype.icon,
            icon_size = (child_prototype.icon_size or 64),
            shift = {-shift, -shift},
            scale = 32 / (child_prototype.icon_size or 64) * shadow_scale,
            tint = {r = 0, g = 0, b = 0, a = shadow_alpha},
        })
    end

    if child_top_right then
        local child_prototype = data.raw.fluid[child_top_right] or data.raw.item[child_top_right]
        table.insert(icons, {
            icon = child_prototype.icon,
            icon_size = (child_prototype.icon_size or 64),
            shift = {shift, -shift},
            scale = 32 / (child_prototype.icon_size or 64) * shadow_scale,
            tint = {r = 0, g = 0, b = 0, a = shadow_alpha}
        })
    end

    if child_bottom_left then
        local child_prototype = data.raw.fluid[child_bottom_left] or data.raw.item[child_bottom_left]
        table.insert(icons, {
            icon = child_prototype.icon,
            icon_size = (child_prototype.icon_size or 64),
            shift = {-shift, shift},
            scale = 32 / (child_prototype.icon_size or 64) * shadow_scale,
            tint = {r = 0, g = 0, b = 0, a = shadow_alpha}
        })
    end

    if child_bottom_right then
        local child_prototype = data.raw.fluid[child_bottom_right] or data.raw.item[child_bottom_right]
        table.insert(icons, {
            icon = child_prototype.icon,
            icon_size = (child_prototype.icon_size or 64),
            shift = {shift, shift},
            scale = 32 / (child_prototype.icon_size or 64) * shadow_scale,
            tint = {r = 0, g = 0, b = 0, a = shadow_alpha}
        })
    end

    -- Add normal children icons
    if child_top_left then
        local child_prototype = data.raw.fluid[child_top_left] or data.raw.item[child_top_left]
        table.insert(icons, {
            icon = child_prototype.icon,
            icon_size = (child_prototype.icon_size or 64),
            shift = {-shift, -shift},
            scale = 32 / (child_prototype.icon_size or 64) * child_scale,
            tint = {r = 1, g = 1, b = 1, a = 1},
            draw_background = true
        })
    end

    if child_top_right then
        local child_prototype = data.raw.fluid[child_top_right] or data.raw.item[child_top_right]
        table.insert(icons, {
            icon = child_prototype.icon,
            icon_size = (child_prototype.icon_size or 64),
            shift = {shift, -shift},
            scale = 32 / (child_prototype.icon_size or 64) * child_scale,
            tint = {r = 1, g = 1, b = 1, a = 1},
            draw_background = true
        })
    end

    if child_bottom_left then
        local child_prototype = data.raw.fluid[child_bottom_left] or data.raw.item[child_bottom_left]
        table.insert(icons, {
            icon = child_prototype.icon,
            icon_size = (child_prototype.icon_size or 64),
            shift = {-shift, shift},
            scale = 32 / (child_prototype.icon_size or 64) * child_scale,
            tint = {r = 1, g = 1, b = 1, a = 1},
            draw_background = true
        })
    end

    if child_bottom_right then
        local child_prototype = data.raw.fluid[child_bottom_right] or data.raw.item[child_bottom_right]
        table.insert(icons, {
            icon = child_prototype.icon,
            icon_size = (child_prototype.icon_size or 64),
            shift = {shift, shift}, 
            scale = 32 / (child_prototype.icon_size or 64) * child_scale,
            tint = {r = 1, g = 1, b = 1, a = 1},
            draw_background = true
        })
    end

    return icons
end


require "prototypes/items"
require "prototypes/recipes"


data.raw.recipe["ash-separation"]:remove_result("coal-dust"):add_result({type = "item", name = "clinkers",  amount = 1, probability = 0.2})
data.raw.recipe["ash-separation"].icons = py.recipe_composite_icon("ash-separation", "ash")

--data.raw.recipe["ash-separation"].icon = py.recipe_composite_icon("ash-separation", "ash")