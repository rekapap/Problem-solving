def validSolution(board)
  win?(board)
end

def no_empty_spot?(array)
  !array.flatten.include?(0)
end

def win?(array)
  no_empty_spot?(array) && win_horizontal?(array) && win_vertical?(array) && win_nines(array)
end

def win_horizontal?(array)
  check = []
  array.each do |subarray|
    check << (subarray.uniq == subarray)
  end
  check.include?(false) ? false : true
end

def win_vertical?(array)
  check = []
  num = array[0].length
  for x in 0...num do
    temp = []
    array.each do |subarray|
      temp << subarray[x]
    end
    check << (temp.uniq == temp)
  end
  check.include?(false) ? false : true
end

def win_nines(array)
  array_divided = []
  array.each do |line|
    array_divided << line.each_slice(3).to_a
  end
  check = []
  array_divided.each_slice(3).to_a.each do |part|
    check << check_3x3(part)
  end
  !check.include?(false)
end

def check_3x3(array)
  num = array[0].length
  data = Array.new(num) {[]}
  array.each do |line|
    line.each_with_index do |frag, index|
      data[index] << frag
    end
  end
  check = []
  data.each do |square|
   check << (square.flatten.uniq.length == square.flatten.length)
  end
  !check.include?(false)
end

sodoku = [
  [5, 3, 4, 6, 7, 8, 9, 1, 2],
  [6, 7, 2, 1, 9, 5, 3, 4, 8],
  [1, 9, 8, 3, 4, 2, 5, 6, 7],
  [8, 5, 9, 7, 6, 1, 4, 2, 3],
  [4, 2, 6, 8, 5, 3, 7, 9, 1],
  [7, 1, 3, 9, 2, 4, 8, 5, 6],
  [9, 6, 1, 5, 3, 7, 2, 8, 4],
  [2, 8, 7, 4, 1, 9, 6, 3, 5],
  [3, 4, 5, 2, 8, 6, 1, 7, 9]
]

sodoku2 = [
  [5, 3, 4, 6, 7, 8, 9, 1, 2], 
  [6, 7, 2, 1, 9, 0, 3, 4, 8],
  [1, 0, 0, 3, 4, 2, 5, 6, 0],
  [8, 5, 9, 7, 6, 1, 0, 2, 0],
  [4, 2, 6, 8, 5, 3, 7, 9, 1],
  [7, 1, 3, 9, 2, 4, 8, 5, 6],
  [9, 0, 1, 5, 3, 7, 2, 1, 4],
  [2, 8, 7, 4, 1, 9, 6, 3, 5],
  [3, 0, 0, 4, 8, 1, 1, 7, 9]
]
puts validSolution(sodoku)
