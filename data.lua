local autoplace = {
  size = 600,
  richness = 600
}

data.raw["map-gen-presets"]["default"]["wyrd-star-preset"] = {
  default = false,
  order = "a",
  basic_settings = {
    autoplace_controls = {
      ["coal"] = autoplace,
      ["angels-ore1"] = autoplace,
      ["angels-ore2"] = autoplace,
      ["angels-ore3"] = autoplace,
      ["angels-ore4"] = autoplace,
      ["angels-ore5"] = autoplace,
      ["angels-ore6"] = autoplace,
      ["angels-fissure"] = autoplace,
      ["angels-natural-gas"] = autoplace,
      ["crude-oil"] = autoplace,
      ["infinite-angels-ore1"] = autoplace,
      ["infinite-angels-ore2"] = autoplace,
      ["infinite-angels-ore3"] = autoplace,
      ["infinite-angels-ore4"] = autoplace,
      ["infinite-angels-ore5"] = autoplace,
      ["infinite-angels-ore6"] = autoplace,
      ["infinite-coal"] = autoplace,
      ["angels-biter-slider"] = {
        size = 600
      }
    }
  },
  advanced_settings = {
    pollution = {
      enabled = true
    },
    enemy_evolution = {
      enabled = true,
      time_factor = 2e-6,
      destroy_factor = 2e-4,
      pollution_factor = 3e-7
    },
    enemy_expansion = {
      enabled = true
    },
    difficulty_settings = {
      research_queue_setting = "always"
    }
  }
}
