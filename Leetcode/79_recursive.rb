array = [2, 3, 5, 7, 11, 13, 17, 19]
def contains?(array, num)
  return false if array.empty?
  return false if array[0] > num || array[-1] < num
  return true if array[0] == num
  middle = (array.length / 2)
  if array[middle] > num
    contains?(array[0...middle], num)
  else # equal as well
    contains?(array[middle..-1], num)
  end
end

puts contains?(array, 11)
puts contains?([2], 3)
puts contains?([2], 2)
puts contains?([3,4], 2)
puts contains?([3,4], 5)
puts contains?([], 1)

# array = [2, 3, 5, 7, 11, 13, 17, 19]
# def closest?(array, num)
#   return [] if array.empty?
#   return array[0] if array[0] > num
#   return array [-1] if array[-1] < num
#   return true if array[0] == num
#   # contain = contains?(array, num)
#   return num if contain
#   if array[middle] > num
#     contains?(array[0...middle], num)
#   else # equal as well
#     contains?(array[middle..-1], num)
#   end
# end
