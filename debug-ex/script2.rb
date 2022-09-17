require 'pry-byebug'

def yell_greetings(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greetings("bob")