def collatz(n, n_steps = 0)
  puts n
  if n == 1
    puts "Number of steps needed: #{n_steps}"
    return 1 
  end
  n_steps += 1
  return collatz(n / 2, n_steps) if n.even?

  return collatz(3 * n + 1, n_steps) if n.odd?
end

collatz(27)