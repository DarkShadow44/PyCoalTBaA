require("functions/functions")

if mods["pyrawores"] then

	if mods["aai-industry-sp0"] then
	
		table.remove(data.raw.technology["electric-mining"].unit.ingredients, 1)
	
	end

	--bob mods stuff
	if mods["boblibrary"] then

		--[[bob-updates.lua]] -- luacheck: globals bobmods

	local add_result = bobmods.lib.recipe.add_result
	local remove_result = bobmods.lib.recipe.remove_result

		if mods["bobores"] then

		--log(serpent.block(data.raw["autoplace-control"]))
			data.raw.resource["bauxite-ore"] = nil
			data.raw["autoplace-control"]["bauxite-ore"] = nil

			data.raw.resource["cobalt-ore"] = nil
			data.raw["autoplace-control"]["cobalt-ore"] = nil

			data.raw.resource["gem-ore"] = nil
			data.raw["autoplace-control"]["gem-ore"] = nil

			data.raw.resource["gold-ore"] = nil
			data.raw["autoplace-control"]["gold-ore"] = nil

			data.raw.resource["lead-ore"] = nil
			data.raw["autoplace-control"]["lead-ore"] = nil

			data.raw.resource["nickel-ore"] = nil
			data.raw["autoplace-control"]["nickel-ore"] = nil

			data.raw.resource["quartz"] = nil
			data.raw["autoplace-control"]["quartz"] = nil

			data.raw.resource["rutile-ore"] = nil
			data.raw["autoplace-control"]["rutile-ore"] = nil

			data.raw.resource["silver-ore"] = nil
			data.raw["autoplace-control"]["silver-ore"] = nil

			data.raw.resource["sulfur"] = nil
			data.raw["autoplace-control"]["sulfur"] = nil

			data.raw.resource["tin-ore"] = nil
			data.raw["autoplace-control"]["tin-ore"] = nil

			data.raw.resource["tungsten-ore"] = nil
			data.raw["autoplace-control"]["tungsten-ore"] = nil

			data.raw.resource["zinc-ore"] = nil
			data.raw["autoplace-control"]["zinc-ore"] = nil

			--data.raw.resource["lithia-water"] = nil
			--data.raw["autoplace-control"]["lithia-water"] = nil

			--data.raw.resource["ground-water"] = nil
			--data.raw["autoplace-control"]["ground-water"] = nil
			
			data.raw["map-gen-presets"]["default"]["rail-world"]["basic_settings"] = nil
			data.raw["map-gen-presets"]["default"]["rich-resources"]["basic_settings"] = nil
			
			results_replacer("tailings-tin-lead","tin-ore","ore-tin")
			results_replacer("tailings-tin-lead","lead-ore","ore-lead")
			
			results_replacer("tailings-nickel-zinc","nickel-ore","ore-nickel")
			results_replacer("tailings-nickel-zinc","zinc-ore","ore-zinc")
			
			--results_replacer("tailings-gold-silver","gold-ore","ore-gold")
			--results_replacer("tailings-gold-silver","silver-ore","ore-silver")
			
			results_replacer("tailings-bauxite-cobalt","bauxite-ore","ore-aluminium")
			--results_replacer("tailings-bauxite-cobalt","cobalt-ore","ore-cobalt")
			
			--results_replacer("tailings-rutile-tungsten","","")
			--results_replacer("tailings-rutile-tungsten","","")
			
				-- tailings_nickel_zinc
				-- tailings_tin_lead
				-- tailings_gold_silver
				-- tailings_gemstones
				-- tailings_bauxite_cobalt
				-- tailings_rutile_tungsten
				
		end
		
		if mods["bobelectronics"] then
		
			if mods["pyhightech"] then

				RECIPE('electronic-circuit'):remove_ingredient('solder')
				RECIPE('advanced-circuit'):remove_ingredient('solder')
				RECIPE('processing-unit'):remove_ingredient('solder')

			end
			
			global_item_replacer("tinned-copper-cable","tinned-cable")

			--data.raw.recipe["tinned-copper-cable"] = null
			data.raw.item["tinned-copper-cable"] = null
			
		end
	
	ingredient_replace("gun-turret","duralumin","aluminium-plate")
	
		--remove bob techs and remove them from prerequisites script
		--TODO: convert into callable funtion and move to a functions file 
		local TechList = {}

		table.insert(TechList, 'electrolysis-1')
		table.insert(TechList, 'electrolyser-2')
		table.insert(TechList, 'electrolyser-3')
		table.insert(TechList, 'electrolyser-4')
		table.insert(TechList, 'nickel-processing')

		local AllTechs = table.deepcopy(data.raw.technology)

		for t, tech in pairs(TechList) do

			data.raw.technology[tech] = null
			
			for at, alltech in pairs(AllTechs) do
			
			--log(serpent.block(alltech))
			
				if alltech.prerequisites ~= null then
				
					for p, prereq in pairs(alltech.prerequisites) do
					
						--log(tech)
						--log(prereq)
					
						if tech == prereq then
						
						--log("is this working")
						--log(p)
						--log(serpent.block(alltech.prerequisites))
						
							table.remove(data.raw.technology[alltech.name].prerequisites, p)
							
						end
						
					end
					
				end
				
			end
			
		end

		--remove unneeded recipes
		TECHNOLOGY("chemical-processing-2"):remove_effect('ferric-chloride-solution')
			
	end
	
	if mods["angelssmelting"] then
	
		global_item_replacer("liquid-molten-aluminium","molten-aluminium")
		global_item_replacer("liquid-molten-copper","molten-copper")
		global_item_replacer("liquid-molten-iron","molten-iron")
		global_item_replacer("liquid-molten-lead","molten-lead")
		global_item_replacer("liquid-molten-silver","molten-silver")
		global_item_replacer("liquid-molten-nickel","molten-nickel")
		global_item_replacer("liquid-molten-steel","molten-steel")
		global_item_replacer("liquid-molten-tin","molten-tin")
		global_item_replacer("liquid-molten-titanium","molten-titanium")
		global_item_replacer("liquid-molten-zinc","molten-zinc")
	
	end

end