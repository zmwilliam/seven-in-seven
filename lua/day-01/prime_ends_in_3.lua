require('ends_in_3')
require('is_prime')

function primes_ending_in_3(n)
  local count = 0
  local current = 1

  while count <= n do
    if is_prime(current) and ends_in_3(current) then
      print(current)
      count = count + 1
    end
    current = current + 1
  end
end

primes_ending_in_3(5)
