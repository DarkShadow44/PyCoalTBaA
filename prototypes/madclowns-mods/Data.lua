

if mods["Clowns-Processing"] and mods['pyhightech'] then
data:extend({
{
type = "recipe",
    name = "phosphoric-acid-1",
    category = "distilator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "phosphorous-acid", amount = 30},
        {type = "fluid", name = "steam", amount = 120, temperature = 165},
        {type = "item", name = "wood", amount = 10},
    },
    results = {
        {type = "fluid", name = "phosphoric-acid", amount = 15},
		{type = "fluid", name = "phosphine-gas", amount = 15},
    },
    main_product = "phosphine-gas",
}
})
table.insert(data.raw["technology"] ["basic-electronics"].effects, {type = "unlock-recipe", recipe = "phosphoric-acid-1"})
fun.global_item_replacer('phosphorus-ore','phosphate-rock')
fun.global_item_replacer('liquid-phosphoric-acid','phosphoric-acid')
angelsmods.functions.make_converter("liquid-phosphoric-acid","phosphoric-acid")
end
