# https://www.hackerrank.com/challenges/plus-minus/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
  res = [0.0, 0.0, 0.0]
  arr.each do |number|
    res[2] += 1 if number.zero?
    next if number.zero?
    res[(number.positive? ? 0 : 1)] += 1
  end
  res.map! do |num|
    format('%0.5f', (num / arr.length))
  end
  puts res
end

n = gets.to_i
arr = gets.rstrip.split(' ').map(&:to_i)

# TEST
# arr = [-4, 3, -9, 0, 4, 1 ]
plusMinus(arr)
