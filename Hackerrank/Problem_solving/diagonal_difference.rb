# https://www.hackerrank.com/challenges/diagonal-difference/
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the diagonalDifference function below.
def diagonalDifference(arr)
  times = arr.length - 1
  right = (0..times).map do |n|
    arr[n][n]
  end.reduce(0, :+)
  acc = -1
  left = times.downto(0).map do |n|
    acc += 1
    arr[acc][n]
  end.reduce(0, :+)
  (right - left).abs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = Array.new(n)

n.times do |i|
  arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()

# TESTS
# arr = [
#        [11, 2, 4],
#        [4, 5, 6],
#        [10, 8, -12]
#      ]
#puts diagonalDifference(arr)
