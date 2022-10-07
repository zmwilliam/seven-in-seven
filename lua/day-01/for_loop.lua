function for_loop(a, b, fn)
  local i = a
  if a <= b then
    while i <= b do
      fn(i)
      i = i + 1
    end
  else
    while b <= i do
      fn(i)
      i = i - 1
    end
  end
end
