
--new recipes go here

--all recipes will start with tba- to make them seperate from the other mods recipes
--(ORE SORTING)--



--[[
	--Angels ore 1--
	--Crushed--
fun.Recipe
	{
    name = "tba-angelsore2-crushed-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
    results=
    {
		{
			{name="ore-aluminium",amount=2},
			{name="angels-iron-nugget", amount=2},
		},
		{
			{name="angels-iron-pebbles", amount=2},
		},
		{
			{name="tba-ore2-crushed-slag", amount=6},
		},
    },
	ingredients =
		{
			{
				{name="angels-ore2-crushed", amount="add_results"}
			}
		},
    icon = "__angelsrefining__/graphics/icons/angels-ore2-crushed-sorting.png",
    order = "a[angelsore2-crushed-processing]",
	}
	--Chunk--
		--Contains borax--
fun.Recipe
	{
    name = "tba-angelsore2-chunk-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
	ingredients =
	{
		{
			{name="angels-ore2-chunk", amount=6}
		}
    },
    results=
    {
		{
			{name="angels-iron-nugget", amount=2}
		},
		{
			{name="angels-iron-pebbles", amount=2}
		},
		{
			{name="raw-borax", amount=2}
		},
		{
			{name="tba-ore2-chunk-slag", amount=4}
		}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-chunk-sorting.png",
    order = "a[angelsore2-chunk-processing]",
	}
	--Crystal--
fun.Recipe
	{
    name = "tba-angelsore2-crystal-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
	ingredients =
	{
		{
			{name="angels-ore2-crystal", amount=6}
		}
    },
    results=
    {
		{
			{name="angels-iron-nugget", amount=3}
		},
		{
			{name="angels-iron-pebbles", amount=2}
		},
		{
			{name="raw-borax", amount=3}
		},
		{
			{name="tba-ore2-crystal-slag", amount=2}
		}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-crystal-sorting.png",
    order = "a[angelsore2-crystal-processing]",
	}
	--Pure--
fun.Recipe
	{
    name = "tba-angelsore2-pure-processing",
    category = "tba-ore-sorting",
	subgroup = "ore-sorting-t1",
	ingredients =
	{
		{
			{name="angels-ore2-pure", amount=6}
		}
	},
    results=
    {
		{
			{name="angels-iron-nugget", amount=3}
		},
		{
			{name="angels-iron-pebbles", amount=3}
		},
		{
			{name="raw-borax", amount=4}
		}
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-pure-sorting.png",
    order = "a[angelsore2-pure-processing]",
	}
]]--