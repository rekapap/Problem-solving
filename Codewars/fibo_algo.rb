=begin
def fib(orig)
  number = orig.abs - 1
  return 1 if orig == 1
  return 0 if orig.zero?
  return 1 if orig == -1
  array = [0, 1]
  number.times do
    array.push(array[-1] + array[-2])
  end
  return (array[-1]) if orig > 1
  return (array[-1])  if orig < 0 && orig.odd?
  return -(array[-1]) if orig < 0 && orig.even?
end
=end
def fib(orig)
  number = orig.abs - 1
  return num_check(orig) if number < 1
  res = calculate(number)
  res_val(res, orig)
end

def num_check(orig)
  return 1 if orig == 1
  return 0 if orig.zero?
  return 1 if orig == -1
end

def calculate(number)
  fib0 = 0
  fib1 = 1
  fib2 = 0
  number.times do
    fib2 = fib0 + fib1
    fib0 = fib1
    fib1 = fib2
  end
  fib2
end

def res_val(res, orig)
  return res if orig > 1
  return res if orig < 0 && orig.odd?
  return -res if orig < 0 && orig.even?
end

puts fib(0)
puts fib(1)
puts fib(100)
# puts fibonacci(1_000_000)
