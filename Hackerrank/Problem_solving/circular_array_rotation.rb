#!/bin/ruby
# https://www.hackerrank.com/challenges/circular-array-rotation/problem


require 'json'
require 'stringio'

# Complete the circularArrayRotation function below.
def circularArrayRotation(a, k, queries)
  # a.rotate!(-k)
  # queries.map do |q|
  #   a[q]
  # end
  queries.map do |q|
    a[(q-k)%a.size]
  end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nkq = gets.rstrip.split

n = nkq[0].to_i

k = nkq[1].to_i

q = nkq[2].to_i

a = gets.rstrip.split(' ').map(&:to_i)

queries = Array.new(q)

q.times do |i|
    queries_item = gets.to_i
    queries[i] = queries_item
end

result = circularArrayRotation a, k, queries

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()
