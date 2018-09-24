$fib_array = [0, 1]

def fib(orig)
  num =  orig.abs
  res = pos_fib(num)
  res_val(res, orig)
end

def pos_fib(num)
  return $fib_array[num] if $fib_array.length > num # 0,1
  calc_fib(num)
end

def calc_fib(num)
  start = $fib_array.length
  (start..num).each do |n|
    $fib_array.push($fib_array[n-2]+ $fib_array[n-1])
  end
  $fib_array[-1]
end

def res_val(res, orig)
  return -res if orig < 0 && orig.even?
  res
end

def memory_maker
  array = []
  counter = 10000
  10.times do
    array.push(fib(counter))
    counter += 10000
  end
  array
end
$stored_data = memory_maker
