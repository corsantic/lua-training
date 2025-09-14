return function(n)
  if (n % 3 ~= 0 and n % 5 ~= 0 and n % 7 ~= 0) then
    return tostring(n)
  end

  local sound = ''
  if (n % 3 == 0) then sound = sound .. 'Pling' end
  if (n % 5 == 0) then sound = sound .. 'Plang' end
  if (n % 7 == 0) then sound = sound .. 'Plong' end
  return sound
end
