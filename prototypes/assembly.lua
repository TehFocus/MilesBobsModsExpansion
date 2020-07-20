require "util"
data:extend(
{
  {
    type = "item",
    name = "assembling-machine-7",
    icon = "__MilesBobsExpansion__/graphics/icons/assembling-machine-7.png",
    icon_size = 32,
    subgroup = "bob-assembly-machine",
    order = "c[assembling-machine-7]",
    place_result = "assembling-machine-7",
    stack_size = 50
  },

  {
    type = "assembling-machine",
    name = "assembling-machine-7",
    icon = "__MilesBobsExpansion__/graphics/icons/assembling-machine-7.png",
    icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-7"},
    max_health = 800,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    next_upgrade = "assembling-machine-8",
    animation =
    {
      layers =
      {
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
          hr_version =
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5
          }
        },
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
          priority = "high",
          width = 142,
          height = 113,
          repeat_count = 32,
          shift = {0.84, -0.09},
          tint = {r = 0.4, g = 0.6, b = 0.6},
        },
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          hr_version =
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5
          }
        }
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
    crafting_speed = 4,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.2
    },
    energy_usage = "650kW",
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },

  {
    type = "recipe",
    name = "assembling-machine-7",
    enabled = "false",
    ingredients =
    {
      {"assembling-machine-6", 1},
      {"processing-unit", 10},
      {"steel-plate", 10},
      {"iron-plate", 15},
      {"iron-gear-wheel", 10},
	  {"speed-module-5", 5},
    },
    result = "assembling-machine-7"
  },

  {
    type = "technology",
    name = "automation-7",
    icon = "__base__/graphics/technology/automation.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-7"
      }
    },
    prerequisites = {"automation-6"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 100
    },
    upgrade = true,
  },

  {
    type = "recipe",
    name = "assembling-machine-8",
    enabled = "false",
    ingredients =
    {
      {"assembling-machine-7", 1},
      {"processing-unit", 15},
      {"steel-plate", 15},
      {"iron-plate", 20},
      {"iron-gear-wheel", 15},
	  {"speed-module-6", 5},
    },
    result = "assembling-machine-8"
  },

  {
    type = "technology",
    name = "automation-8",
    icon = "__base__/graphics/technology/automation.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-8"
      }
    },
    prerequisites = {"automation-7"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 150
	  },
	upgrade = true,
  },

  {
    type = "recipe",
    name = "assembling-machine-9",
    enabled = "false",
    ingredients =
    {
      {"assembling-machine-8", 1},
      {"processing-unit", 20},
      {"steel-plate", 20},
      {"iron-plate", 40},
      {"iron-gear-wheel", 30},
	  {"speed-module-7", 5},
    },
    result = "assembling-machine-9"
  },

  {
    type = "technology",
    name = "automation-9",
    icon = "__base__/graphics/technology/automation.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-9"
      }
    },
    prerequisites = {"automation-8"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 200
	  },
	upgrade = true,
  },

  {
    type = "recipe",
    name = "assembling-machine-10",
    enabled = "false",
    ingredients =
    {
      {"assembling-machine-9", 1},
      {"processing-unit", 30},
      {"steel-plate", 40},
      {"iron-plate", 80},
      {"iron-gear-wheel", 60},
	  {"speed-module-8", 5},
    },
    result = "assembling-machine-10"
  },

  {
    type = "technology",
    name = "automation-10",
    icon = "__base__/graphics/technology/automation.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-10"
      }
    },
    prerequisites = {"automation-9"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"utility-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 250
	  },
	upgrade = true,
  },
}
)
		local new_assembler=table.deepcopy(data.raw["assembling-machine"]["assembling-machine-7"])
		new_assembler.name="assembling-machine-8"
		new_assembler.icon="__MilesBobsExpansion__/graphics/icons/assembling-machine-8.png"
		new_assembler.crafting_speed="5.0"
		new_assembler.order="c[assembling-machine-8]"
		new_assembler.animation.layers[2].tint ={r = 243/255, g = 136/255, b = 213/255}
		new_assembler.energy_usage="1000kW"
		new_assembler.minable={hardness = 0.2, mining_time = 0.5, result = "assembling-machine-8"}
		new_assembler.module_specification.module_slots="6"
		data:extend{new_assembler}
		
		local new_assembleritem=table.deepcopy(data.raw["item"]["assembling-machine-7"])
        new_assembleritem.name="assembling-machine-8"
		new_assembleritem.place_result="assembling-machine-8"
        new_assembler.order="c[assembling-machine-8]"		
		new_assembleritem.icon="__MilesBobsExpansion__/graphics/icons/assembling-machine-8.png"
		data:extend{new_assembleritem}
		
		local new_assembler=table.deepcopy(data.raw["assembling-machine"]["assembling-machine-7"])
		new_assembler.name="assembling-machine-9"
		new_assembler.icon="__MilesBobsExpansion__/graphics/icons/assembling-machine-9.png"
		new_assembler.crafting_speed="5.50"
		new_assembler.order="c[assembling-machine-9]"
		new_assembler.animation.layers[2].tint={r = 0.9, g = 0.7, b = 0.0}
		new_assembler.energy_usage="1250kW"
		new_assembler.minable={hardness = 0.2, mining_time = 0.5, result = "assembling-machine-9"}
		new_assembler.module_specification.module_slots="7"
		data:extend{new_assembler}
		
		local new_assembleritem=table.deepcopy(data.raw["item"]["assembling-machine-7"])
        new_assembleritem.name="assembling-machine-9"
		new_assembleritem.place_result="assembling-machine-9"
		new_assembler.order="c[assembling-machine-9]"
		new_assembleritem.icon="__MilesBobsExpansion__/graphics/icons/assembling-machine-9.png"
		data:extend{new_assembleritem}
		
		local new_assembler=table.deepcopy(data.raw["assembling-machine"]["assembling-machine-7"])
		new_assembler.name="assembling-machine-10"
		new_assembler.icon="__MilesBobsExpansion__/graphics/icons/assembling-machine-10.png"
		new_assembler.crafting_speed="6.00"
		new_assembler.order="c[x-assembling-machine-9+1]"
		new_assembler.animation.layers[2].tint={r = 1.0, g = 1.0, b = 1.0}
		new_assembler.energy_usage="2000kW"
		new_assembler.minable={hardness = 0.2, mining_time = 0.5, result = "assembling-machine-10"}
		new_assembler.module_specification.module_slots="8"
		data:extend{new_assembler}
		
		local new_assembleritem=table.deepcopy(data.raw["item"]["assembling-machine-7"])
        new_assembleritem.name="assembling-machine-10"
		new_assembleritem.place_result="assembling-machine-10"
    	new_assembleritem.order="c[assembling-machine-9+1]"
		new_assembleritem.icon="__MilesBobsExpansion__/graphics/icons/assembling-machine-10.png"
		data:extend{new_assembleritem}
		
		
		local recipe = {
			name = "assembling-machine-7",
			type = "recipe",
			ingredients =
				{
					{"assembling-machine-6", 1},
					{"processing-unit", 5},
					{"steel-plate", 10},
					{"iron-plate", 10},
					{"iron-gear-wheel", 10},
					{"speed-module-5", 5},
				},
			result = "assembling-machine-7"
		}
		if mods["bobplates"] then
			recipe.ingredients =
				{
					{"assembling-machine-6", 1},
					{"processing-unit", 5},
					{"tungsten-carbide", 10},
					{"tungsten-gear-wheel", 10},
					{"speed-module-5", 5},
				}
		end
		
		if mods["bobelectronics"] then
			recipe.ingredients =
				{
					{"assembling-machine-6", 1},
					{"advanced-processing-unit", 5},
					{"steel-plate", 10},
					{"iron-plate", 10},
					{"iron-gear-wheel", 10},
					{"speed-module-5", 5},
				}
		end
		
		if mods["bobplates"] and mods["bobelectronics"] then
			recipe.ingredients =
				{
					{"assembling-machine-6", 1},
					{"advanced-processing-unit", 5},
					{"tungsten-carbide", 10},
					{"tungsten-gear-wheel", 10},
					{"speed-module-5", 5},
				}
		end
		data:extend({recipe})
		
		local recipe = {
			name = "assembling-machine-8",
			type = "recipe",
			ingredients =
				{
					{"assembling-machine-7", 1},
					{"processing-unit", 8},
					{"steel-plate", 15},
					{"iron-plate", 15},
					{"iron-gear-wheel", 15},
					{"speed-module-6", 5},
				},
			result = "assembling-machine-8"
		}
		if mods["bobplates"] then
			recipe.ingredients =
				{
					{"assembling-machine-7", 1},
					{"processing-unit", 8},
					{"tungsten-carbide", 10},
					{"nitinol-alloy", 20},
					{"speed-module-6", 5},
				}
		end
		
		if mods["bobelectronics"] then
			recipe.ingredients =
				{
					{"assembling-machine-7", 1},
					{"advanced-processing-unit", 8},
					{"steel-plate", 15},
					{"iron-plate", 15},
					{"iron-gear-wheel", 15},
					{"speed-module-6", 5},
				}
		end
		
		if mods["bobplates"] and mods["bobelectronics"] then
			recipe.ingredients =
				{
					{"assembling-machine-7", 1},
					{"advanced-processing-unit", 8},
					{"tungsten-carbide", 10},
					{"nitinol-alloy", 20},
					{"speed-module-6", 5},
				}
		end
		data:extend({recipe})
				
		local recipe = {
			name = "assembling-machine-9",
			type = "recipe",
			ingredients =
				{
					{"assembling-machine-8", 1},
					{"processing-unit", 10},
					{"steel-plate", 20},
					{"iron-plate", 20},
					{"iron-gear-wheel", 20},
					{"speed-module-7", 5},
    },
			result = "assembling-machine-9"
		}
		if mods["bobplates"] then
			recipe.ingredients =
				{
					{"assembling-machine-8", 1},
					{"processing-unit", 10},
					{"cobalt-steel-alloy", 10},
					{"nitinol-alloy", 20},
					{"nitinol-bearing", 20},
					{"speed-module-7", 5},
				}
		end
		
		if mods["bobelectronics"] then
			recipe.ingredients =
				{
					{"assembling-machine-8", 1},
					{"advanced-processing-unit", 10},
					{"processing-electronics", 10},
					{"steel-plate", 20},
					{"iron-plate", 20},
					{"iron-gear-wheel", 20},
					{"speed-module-7", 5},
				}
		end
		
		if mods["bobplates"] and mods["bobelectronics"] then
			recipe.ingredients =
				{
					{"assembling-machine-8", 1},
					{"advanced-processing-unit", 10},
					{"processing-electronics", 10},
					{"cobalt-steel-alloy", 10},
					{"nitinol-alloy", 20},
					{"nitinol-bearing", 20},
					{"speed-module-7", 5},
				}
		end
		data:extend({recipe})
				
		local recipe = {
			name = "assembling-machine-10",
			type = "recipe",
			ingredients =
				{
					{"assembling-machine-9", 1},
					{"processing-unit", 20},
					{"steel-plate", 30},
					{"iron-plate", 30},
					{"iron-gear-wheel", 30},
					{"speed-module-8", 5},
				},
			result = "assembling-machine-10"
		}
		if mods["bobplates"] then
			recipe.ingredients =
				{
					{"assembling-machine-9", 1},
					{"processing-unit", 20},
					{"cobalt-steel-alloy", 20},
					{"nitinol-alloy", 20},
					{"nitinol-bearing", 20},
					{"speed-module-8", 5},
				}
		end
		
		if mods["bobelectronics"] then
			recipe.ingredients =
				{
					{"assembling-machine-9", 1},
					{"advanced-processing-unit", 20},
					{"steel-plate", 30},
					{"iron-plate", 30},
					{"iron-gear-wheel", 30},
					{"speed-module-8", 5},
				}
		end
		
		if mods["bobplates"] and mods["bobelectronics"] then
			recipe.ingredients =
				{
					{"assembling-machine-9", 1},
					{"advanced-processing-unit", 20},
					{"cobalt-steel-alloy", 20},
					{"nitinol-alloy", 20},
					{"nitinol-bearing", 20},
					{"speed-module-8", 5},
				}
		end
		data:extend({recipe})