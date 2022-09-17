def fact(n)
  return 1 if n <= 1

  return n * fact(n - 1)
end

p fact(5)