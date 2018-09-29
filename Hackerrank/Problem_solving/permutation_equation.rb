#!/bin/ruby
# https://www.hackerrank.com/challenges/permutation-equation/problem

require 'json'
require 'stringio'

# Complete the permutationEquation function below.
def permutationEquation(p)
  n = p.size
  (1..n).map do |x|
    res = 0
    p.each do |y|
      res = y if p[p[y - 1] - 1] == x
    end
    res
  end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.rstrip.split(' ').map(&:to_i)

result = permutationEquation p

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
