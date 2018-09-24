# https://www.hackerrank.com/challenges/mini-max-sum/
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the miniMaxSum function below.
def miniMaxSum(arr)
  arr.sort!
  print arr[0, 4].reduce(0, :+).to_s + ' ' + arr[-4, 4].reduce(0, :+).to_s
end

arr = gets.rstrip.split(' ').map(&:to_i)
# arr = [1, 2, 3, 4, 5]
miniMaxSum arr