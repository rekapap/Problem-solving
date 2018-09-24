def is_solved(board)
  return win?(board)[0] if win?(board)
  return -1 if empty_spot?(board)
  0
end

def empty_spot?(array)
  check = false
  array.each do |subarray|
    subarray.each do |digit|
      check = true if digit.zero?
    end
  end
  check ? true : false
end

def win?(array)
  return win_horizontal?(array) if win_horizontal?(array)
  return win_vertical?(array) if win_vertical?(array)
  return win_cross?(array) if win_cross?(array)
  false
end

def win_horizontal?(array)
  check = nil
  array.each do |subarray|
    check = subarray.uniq if subarray.uniq.length == 1 && subarray.uniq != [0]
  end
  check.nil? ? false : check
end

def win_vertical?(array)
  check = nil
  num = array[0].length
  for x in 0...num do
    temp = []
    array.each do |subarray|
      temp << subarray[x]
    end
    check = temp.uniq if temp.uniq.length == 1 && temp.uniq != [0]
  end
  check.nil? ? false : check
end

def win_cross?(array)
  left_cross(array) || right_cross(array)
end

def left_cross(array)
  check = nil
  temp = []
  array.each_with_index do |subarray,i|
    temp << subarray[i]
  end
  check = temp.uniq if temp.uniq.length == 1 && temp.uniq != [0]
  check.nil? ? false : check
end

def right_cross(array)
  check = nil
  num = array[0].length
  temp = []
  array.each do |subarray|
    num -= 1
    temp << subarray[num]
  end
  check = temp.uniq if temp.uniq.length == 1 && temp.uniq != [0]
  check.nil? ? false : check
end
# 0 => empty
# 1 => X
# 2 => O

# [[0, 0, 1],
#  [0, 1, 2],
#  [2, 1, 0]]

# END
# -1 if the board is not yet finished (there are empty spots), 1+ 0s
# 1 if "X" won, 3 Xs,
# 2 if "O" won, 3 Os,
# 0 if it's a cat's game (i.e. a draw). => zero 0 spots && no wins.

puts is_solved([[0,0,1],[0,1,2],[2,1,0]]) # -1)
puts is_solved([[0,0,1],[2,2,2],[2,1,0]]) #, 2)
puts is_solved([[1,0,1],[0,1,2],[2,1,1]]) #, 1)
puts right_cross([[1, 0, 1], [0, 1, 0], [1, 2, 2]]) #1
puts right_cross([[1, 2, 2], [0, 2, 0], [2, 1, 1]]) #2

# puts win_vertical?([[2, 0, 2], [2, 0, 0], [2, 0, 0]])