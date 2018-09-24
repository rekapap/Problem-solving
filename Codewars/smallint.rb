def find_smallest_int(arr)
  res = []
  res[0] = arr[0]
  arr.each do |x|
    res[0] = x if x < res[0]
  end
  res[0]
end

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -234]

puts find_smallest_int(list)
