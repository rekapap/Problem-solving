
def f_c(f)
  (f - 32) * 5/9
end

def k_c(k)
  k - 273.15
end

def c_f(c)
  (c * 9/5) + 32
end

def c_k(c)
  c + 273.15
end

def f_k(f)
  c = f_c(f)
  c_k(c)
end

def k_f(k)
  c = k_c(k)
  c_f(c)
end

def convert_temp(n, input_scale:'kelvin', output_scale: 'celsius')
  return n if input_scale == output_scale
  send((input_scale[0] + '_' + output_scale[0]).to_sym, * n)
end

print convert_temp(0, input_scale:'kelvin', output_scale: 'fahrenheit')