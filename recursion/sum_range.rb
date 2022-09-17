def sum_range(n, sum = 0)
  return sum if n <= 0
  return sum_range(n - 1, sum + n)
end

p sum_range(5)