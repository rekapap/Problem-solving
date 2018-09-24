# https://www.hackerrank.com/challenges/staircase/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
  space = n - 1
  (1..n).each do |hash|
    print ' ' * space
    space -= 1
    print '#' * hash + "\n"
  end
end

n = gets.to_i

staircase n
