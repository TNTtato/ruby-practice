def palin(strg)
  strg = strg.split.join('').downcase
  return true if strg.length <= 3 && strg[0] == strg[-1]
  return false unless strg[0] == strg[-1]
  palin(strg[1..-2])
end

p palin('Yo hago yoga hoy')
p palin('palindrome')
