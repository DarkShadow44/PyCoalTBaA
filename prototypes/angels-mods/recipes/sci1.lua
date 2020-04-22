
--TODO: sci 1
	--need alage farm moved to game start
	--fawogae plantaion needs circuit 1 removed and recipe simplified
	--rich clay needs enabled at game start
	--quartz needs added to angels ores and bobmonium needs added to map when bobs mods is disabled

	-- move coarse faction to mineral water to game start
	-- add recipe to coarse faction at game start

--enable ground sample and add it to sci 1
if data.raw.recipe["ground-sample01"] ~= nil then

	data.raw.recipe["ground-sample01"].enabled = true

end

--cheap solid seperator is in building file

--unlock algae farm at start
--data.raw.recipe["algae-farm"].enabled=true
fun.Recipe
	{
	name = "algae-farm",
	enabled = true,
	ingredients =
		{
			{
				{"iron-plate", 10}
			},
			{
				{"iron-pipe", 5}
			},
			{
				{"small-parts-01", 5}
			},
		}
	}

fun.Recipe
	{
	name = "algae-green-simple",
	enabled = true
	}
--remove circuits remove fawogae plantaion
fun.remove_ingredient("fawogae-plantation", "electronic-circuit")

--move rich-clay to game start
fun.Recipe
	{
	name = "rich-clay",
	enabled = true,
	category = "crafting-with-fluid"
	}

fun.Recipe
	{
		name = "fawogae-substrate",
		enabled = true,
		ingredients =
		{
			{
				{type = "item", name = "fawogae", amount = 5}
			},
			{
				{type = "item", name = "algae-green", amount = 5}
			}
		}
	}

--recipes to get carbon dioxide + ash from burning wood, coal, coke
fun.Recipe
	{
	name = "wood-burning",
	energy_required = 1.5,
	enabled = true,
	ingredients =
		{
			{
				{type = "item", name = "wood", amount = 10}
			}
		},
	results =
		{
			{
				{type = "fluid", name = "carbon-dioxide", amount = 50}
			},
			{
				{type = "item", name = "ash", amount = 5}
			}
		},
	category = "smelting",
	main_product = "ash",
	icon = "__pycoalprocessinggraphics__/graphics/icons/ash.png"
	}

fun.Recipe
	{
	name = "coal-burning",
	energy_required = 1.5,
	enabled = true,
	ingredients =
		{
			{
				{type = "item", name = "coal", amount = 5}
			}
		},
	results =
		{
			{
				{type = "fluid", name = "carbon-dioxide", amount = 75}
			},
			{
				{type = "item", name = "ash", amount = 3}
			}
		},
	category = "smelting",
	main_product = "ash",
	icon = "__pycoalprocessinggraphics__/graphics/icons/ash.png"
	}

fun.Recipe
	{
	name = "wood-burning",
	energy_required = 1.5,
	enabled = true,
	ingredients =
		{
			{
				{type = "item", name = "coke", amount = 5}
			}
		},
	results =
		{
			{
				{type = "fluid", name = "carbon-dioxide", amount = 25}
			},
			{
				{type = "item", name = "ash", amount = 8}
			}
		},
	category = "smelting",
	main_product = "ash",
	icon = "__pycoalprocessinggraphics__/graphics/icons/ash.png"
	}

--add fawogae-substrate and ground sample together to make biosample
fun.Recipe
	{
	name = "bio-sample",
	energy_required = 2,
	enabled = true,
	ingredients =
		{
			{
				{type = "item", name = "fawogae-substrate", amount = 2}
			},
			{
				{type = "item", name = "ground-sample01", amount = 5}
			}
		},
	results =
		{
			{
				{type = "item", name = "bio-sample", amount = 1}
			}
		}
	}

--add that to the sci 1 recipe with flasks
fun.ingredient_replace("automation-science-pack","fawogae-substrate","bio-sample")

--added red hot molten glass.
--update py flask recipe to be a handcraft recipe only for game start
fun.ingredient_replace("flask","glass","ore-quartz")

if data.raw.recipe["flask"] ~= nil then

	data.raw.recipe["flask"].category = "handcrafting"

end