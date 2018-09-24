# https://www.hackerrank.com/challenges/birthday-cake-candles/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the birthdayCakeCandles function below.
# Slower
# def birthdayCakeCandles(ar)
#  biggest = 1
#  ar.each do |n|
#    biggest = n if n > biggest
#  end
#   number = 0
#   ar.each do |n|
#     number += 1 if n == biggest
#   end
#   number
# end

def birthdayCakeCandles(ar)
  ar.sort!
  biggest = ar[-1]
  ar.count(biggest)
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

# TESTS
# ar = [3, 2, 1, 3]
# ar = Array.new(10_000_000) { rand(100) }
result = birthdayCakeCandles(ar)

fptr.write result
fptr.write "\n"

fptr.close()
