
if mods["aai-industry"] then

data:extend({
  {
    type = "tool",
    name = "science-pack-0",
    icon = "__PyCoalTBaA__/graphics/icons/science-pack-0.png",
    icon_size = 32,
    flags = {},
    subgroup = "science-pack",
    order = "a[science-pack-0]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "recipe",
    name = "science-pack-0",
    category = "crafting",
    normal = {
      energy_required = 0.6,
      ingredients = {
        {type="item", name="copper-plate", amount=2},
        {type="item", name="iron-gear-wheel", amount=1}
      },
      results= { {type="item", name="science-pack-0", amount=1} },
    },
    expensive = {
      energy_required = 0.6,
      ingredients = {
        {type="item", name="copper-plate", amount=4},
        {type="item", name="iron-gear-wheel", amount=2}
      },
      results= { {type="item", name="science-pack-0", amount=1} },
    },
    },
})

data:extend({
	{
    type = "recipe",
    name = "coal-gas-from-fawogae",
    category = "distilator",
    enabled = "true",
    energy_required = 3,
    ingredients = {
        {type = "item", name = "fawogae", amount = 10}
    },
    results = {
        {type = "fluid", name = "coal-gas", amount = 10},
        {type = "fluid", name = "tar", amount = 30},
        {type = "item", name = "iron-oxide", amount = 1, probability = 0.5},
        {type = "item", name = "coal", amount = 5}
    },
    main_product = "coal-gas",
    icon = "__pycoalprocessinggraphics__/graphics/icons/coalgas-from-wood.png",
    icon_size = 32,
    subgroup = "py-syngas",
    order = "f"
	},
})


end
