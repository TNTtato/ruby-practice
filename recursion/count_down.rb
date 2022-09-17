def count_down(n)
  return puts 'Hooray' if n <= 0

  puts n
  count_down(n - 1)
end

count_down(10)