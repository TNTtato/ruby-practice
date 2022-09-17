def c_to_f(c)
  1.8*c + 32
end

def f_to_c(f)
  (f.to_f - 32)*5/9
end

def f_to_k(f)
  c = f_to_c(f)
  c_to_k(c)
end

def k_to_f(k)
  c = k_to_c(k)
  c_to_f(c)
end

def c_to_k(c)
  c + 273.15
end

def k_to_c(k)
  k - 273.15
end

def convert_temp(temp, input_scale:, output_scale: 'celsius')
  i = input_scale[0]
  o = output_scale[0]
  return temp if i == o

  conv = "#{i}_to_#{o}".to_sym
  send(conv, temp)
end
