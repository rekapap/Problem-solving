
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
  k = k_c(k)
  c_f(c)
end


def convert_temp(n, input_scale:, output_scale: 'celsius')
  str = ''
  case input_scale
  when 'fahrenheit'
    str = 'f_'
  when 'kelvin'
    str = 'k_'
  when 'celsius'
    str = 'c_'
  else
    print 'Error'
  end
  case output_scale
  when 'fahrenheit'
    str << 'f'
  when 'kelvin'
    str << 'k'
  when 'celsius'
    str << 'c'
  else
    print 'Error'
  end
  send(str.to_sym, * n)
end
puts convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
