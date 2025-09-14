local color_map = {
  black = 0,
  brown = 1,
  red = 2,
  orange = 3,
  yellow = 4,
  green = 5,
  blue = 6,
  violet = 7,
  grey = 8,
  white = 9
}

local unit_map = {
  "", "kilo", "mega", "giga"
}


local decode = function(c1, c2, c3)
  local ohm_value = ((color_map[c1] * 10) + color_map[c2]) * (10 ^ color_map[c3])
  local metric = "ohms"

  local unit_index = 1;

  while ohm_value > 0 and ohm_value % 1000 == 0 do
    ohm_value = ohm_value / 1000
    unit_index = unit_index + 1
  end

  return ohm_value, unit_map[unit_index] .. metric
end


return {
  decode = decode
}
