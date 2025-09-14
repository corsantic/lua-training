local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
  local str_number = tostring(number)
  local len = #str_number
  local sum = 0

  for i = 1, len do
    local c = str_number:sub(i, i)
    sum = sum + (c ^ len)
  end

  if sum == number then
    return true
  end
  return false
end

return ArmstrongNumbers
