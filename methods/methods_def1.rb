def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered"
  end
  if number % 2 == 0
    "#{number} is an even number"
  else
    "#{number} is an odd number"
  end
end

puts even_odd(16)
puts even_odd(99)
puts even_odd("Ruby")
