=begin
methodName = 'center'    
params = {'param1' => 20, 'param2' => '_'}.sort.collect{|k,v| v}
a = "This is a string"
a.send(methodName.to_sym, *params)
=> "__This is a string__"
=end

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
  str = ''
  if input_scale == 'fahrenheit'
    str = 'f_'
  elsif input_scale == 'kelvin'
    str = 'k_'
  else input_scale == 'celsius'
    str = 'c_'
  end
  

  if output_scale == 'fahrenheit'
    str << 'f'
  elsif output_scale == 'kelvin'
    str << 'k'
  else output_scale == 'celsius'
    str << 'c'
  end
  send(str.to_sym, * n.to_f)
end

print convert_temp(0, input_scale: 'fahrenheit', output_scale: 'kelvin')
