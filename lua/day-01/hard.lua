function reduce(max, init, fn)
  if max <= 0 then
    return init
  end

  return fn(init, reduce(max - 1, max, fn))
end

function factorial(n)
  local fn = function(p, n)
    return p * n
  end

  return reduce(n, 1, fn)
end

local function add(p, n)
  return p + n
end

print(reduce(0, 1, add)) -- 1
print(reduce(5, 0, add)) -- 15
print(reduce(5, 5, add)) -- 20

print('--------')

print(factorial(0)) --  1
print(factorial(1)) --  1
print(factorial(5)) -- 120
print(factorial(10)) -- 3628800
