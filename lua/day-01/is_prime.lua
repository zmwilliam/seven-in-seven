function is_prime(num)
  if num <= 0 then
    return false
  end

  if num == 1 then
    return true
  end

  for i = num - 1, 2, -1 do
    if num % i == 0 then
      return false
    end
  end

  return true
end
