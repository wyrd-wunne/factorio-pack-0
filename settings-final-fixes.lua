local function change_setting(setting_name, value)
  local setting_type
  if type(value) == "boolean" then
    setting_type = "bool-setting"
  elseif type(value) == "string" then
    setting_type = "string-setting"
  elseif type(value) == "number" then
    if math.floor(value) == value then
      setting_type = "int-setting"
    else
      setting_type = "double-setting"
    end
  else
    error('uknown setting type ' .. type(value))
  end

  local s
  if data.raw[setting_type] then
    s = data.raw[setting_type][setting_name]
    if not s and setting_type == "int-setting" then s = data.raw["double-setting"][setting_name] end
  end

  if s then
    s.default_value = value
    s.hidden = true
    if setting_type == "bool-setting" then
      s.forced_value = true
    else
      s.allowed_values = {value}
    end
  else
    error('missing setting `' .. setting_name .. '` of type ' .. setting_type)
  end
end

-- science cost tweaker
change_setting("sct-bio", "tier1")
change_setting("sct-lab-modules", "tier3")

-- shuttle train refresh
change_setting("shuttle-train-global-exit-action", "Depot")

-- todolist
change_setting("todolist-auto-assign", true)

-- bob's mods
change_setting("bobmods-assembly-burner", false)
change_setting("bobmods-enemies-enablesmallartifacts", false)
change_setting("bobmods-enemies-enableartifacts", false)
change_setting("bobmods-enemies-enablenewartifacts", false)
change_setting("bobmods-enemies-aliensdropartifacts", false)
change_setting("bobmods-enemies-superspawner", true)
change_setting("bobmods-logistics-beltoverhaulspeed", false)
change_setting("bobmods-mining-steamminingdrills", false)

-- earandel's mods
change_setting("print-equipment-gantry-warnings", true)
change_setting("informatron-show-at-start", false)

-- rso
change_setting("rso-starting-richness-mult", 3.0)
