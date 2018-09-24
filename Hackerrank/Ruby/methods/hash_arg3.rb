
def f_c(f)
  (f - 32.0) * 5.0 / 9.0
end

def k_c(k)
  k - 273.15
end

def c_f(c)
  (c * 9.0 / 5.0) + 32.0
end

def c_k(c)
  c + 273.15
end

def noop(n)
  n
end

def convert_temp(n, input_scale:'kelvin', output_scale: 'celsius')
  to_celcius = {
    'fahrenheit' => method(:f_c),
    'kelvin' => method(:k_c),
    'celsius' => method(:noop)
  }

  from_celcius = {
    'fahrenheit' => method(:c_f),
    'kelvin' => method(:c_k),
    'celsius' => method(:noop)
  }

  from_celcius[output_scale].call(to_celcius[input_scale].call(n.to_f))
end

#print convert_temp(0, input_scale:'kelvin', output_scale: 'fahrenheit')
print convert_temp(0, input_scale: 'fahrenheit', output_scale: 'kelvin')
