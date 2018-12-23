require "util"
data:extend(
{
  {
    type = "item",
    name = "electronics-machine-4",
    icon = "__MilesBobsExpansion__/graphics/icons/electronics-machine-4.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "bob-assembly-machine",
    order = "d[electronics-machine-4]",
    place_result = "electronics-machine-4",
    stack_size = 50
  },

  {
    type = "assembling-machine",
    name = "electronics-machine-4",
    icon = "__MilesBobsExpansion__/graphics/icons/electronics-machine-4.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "electronics-machine-4"},
    max_health = 600,
    corpse = "medium-remnants",
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
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine-mask/assembling-machine-3.png",
          priority = "high",
          width = 142,
          height = 113,
          frame_count = 32,
          line_length = 8,
          shift = {0.56, -0.06},
          scale = 0.66,
        },
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine-mask/assembling-machine-3-mask.png",
          priority = "high",
          width = 142,
          height = 113,
          frame_count = 32,
          line_length = 8,
          shift = {0.56, -0.06},
          scale = 0.66,
          tint = {r = 0.9, g = 0.7, b = 0.0},
        },
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t3-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"electronics", "electronics-machine"},
    crafting_speed = 6,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.012
    },
    energy_usage = "500kW",
    ingredient_count = 6,
    module_specification =
    {
      module_slots = 8,
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },


  {
    type = "recipe",
    name = "electronics-machine-4",
    enabled = "false",
    ingredients =
    {
      {"electronics-machine-3", 1},
      {"processing-unit", 10},
      {"steel-plate", 10},
      {"iron-gear-wheel", 10},
	  {"speed-module-3", 5},
    },
    result = "electronics-machine-4"
  },

  {
    type = "technology",
    name = "electronics-machine-4",
    icon = "__base__/graphics/technology/automation.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electronics-machine-4"
      }
    },
    prerequisites =
    {
      "electronics-machine-3",
      "advanced-electronics-2"
    },
    unit =
    {
      count = 200,
      time = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
    },
    upgrade = true,
  },
    {
    type = "recipe",
    name = "electronics-machine-5",
    enabled = "false",
    ingredients =
    {
      {"electronics-machine-4", 1},
      {"processing-unit", 20},
      {"steel-plate", 20},
      {"iron-gear-wheel", 20},
	  {"speed-module-4", 5},
    },
    result = "electronics-machine-5"
  },

  {
    type = "technology",
    name = "electronics-machine-5",
    icon = "__base__/graphics/technology/automation.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electronics-machine-5"
      }
    },
    prerequisites =
    {
      "electronics-machine-4",
      "advanced-electronics-3"
    },
    unit =
    {
      count = 400,
      time = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
    },
    upgrade = true,
  },
}
)
		local new_assembler=table.deepcopy(data.raw["assembling-machine"]["electronics-machine-4"])
		new_assembler.name="electronics-machine-5"
		new_assembler.icon="__MilesBobsExpansion__/graphics/icons/electronics-machine-5.png"
		new_assembler.crafting_speed="8.0"
		new_assembler.order="d[electronics-machine-5]"
		new_assembler.animation.layers[2].tint={r = 1.0, g = 1.0, b = 1.0}
		new_assembler.energy_usage="800kW"
		new_assembler.minable={hardness = 0.2, mining_time = 0.5, result = "electronics-machine-5"}
		new_assembler.module_specification.module_slots="10"
		data:extend{new_assembler}
		
		local new_assembleritem=table.deepcopy(data.raw["item"]["electronics-machine-4"])
        new_assembleritem.name="electronics-machine-5"
		new_assembleritem.place_result="electronics-machine-5"		
		new_assembleritem.icon="__MilesBobsExpansion__/graphics/icons/electronics-machine-5.png"
		data:extend{new_assembleritem}