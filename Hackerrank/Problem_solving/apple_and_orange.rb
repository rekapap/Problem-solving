# https://www.hackerrank.com/challenges/apple-and-orange/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the countApplesAndOranges function below.
def countApplesAndOranges(s, t, a, b, apples, oranges)
  fruit_range_check(s, t, a, apples)
  fruit_range_check(s, t, b, oranges)
end

def fruit_range_check(s, t, a, apples)
  a_pos = apples.map { |n| n + a }
  puts(a_pos.count { |x| (s..t).cover?(x) })
end

st = gets.rstrip.split

s = st[0].to_i

t = st[1].to_i

ab = gets.rstrip.split

a = ab[0].to_i

b = ab[1].to_i

mn = gets.rstrip.split

m = mn[0].to_i

n = mn[1].to_i

apples = gets.rstrip.split(' ').map(&:to_i)

oranges = gets.rstrip.split(' ').map(&:to_i)

countApplesAndOranges s, t, a, b, apples, oranges
