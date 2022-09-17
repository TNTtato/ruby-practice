combination = -> (n) do
  fact = ->(k) { (1..k).reduce(:*) }
  n_fact = fact.(n)
  -> (r) do
      r_fact = fact.(r)
      n_r_fact = fact.(n - r)
      n_fact/(n_r_fact*r_fact)
  end
end

n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)