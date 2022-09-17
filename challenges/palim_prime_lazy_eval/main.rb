require 'prime'
n_first = gets.to_i

def palim?(k)
  k.to_s.reverse.to_i == k
end
 
palim_prime = ->(n) do
  2.upto(Float::INFINITY).lazy.select { |k| Prime.prime?(k) && palim?(k) }.first(n)
end

p palim_prime.(n_first)