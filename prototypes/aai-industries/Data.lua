require("prototypes/aai-industries/overrides/overrides")
require("prototypes/aai-industries/items/items")
require("prototypes/aai-industries/fluids/fluids")
require("prototypes/aai-industries/recipes/recipes")

if mods["aai-industry"] then

		fun.findtechswithpack("automation-science-pack")
		fun.addscipack("science-pack-0")

		fun.global_item_replacer("iron-gear-wheel","small-parts-01",{"iron-gear-wheel","small-parts-01"})

	end
