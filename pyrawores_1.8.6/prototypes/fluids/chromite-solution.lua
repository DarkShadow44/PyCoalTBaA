FLUID {
    type = "fluid",
    name = "chromite-solution",
    icon = "__pyrawores__/graphics/icons/chromite-solution.png",
	icon_size = 32,
    default_temperature = 10, -- less than 15 = liquid / equal a 15 = gas
    base_color = {r = 0.113, g = 0.556, b = 0.568},
    flow_color = {r = 0.113, g = 0.556, b = 0.568},
    max_temperature = 100,
    gas_temperature = 15,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    subgroup = "py-rawores-chromium",
    order = "c"
}
