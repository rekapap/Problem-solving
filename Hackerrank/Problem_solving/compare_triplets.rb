# https://www.hackerrank.com/challenges/compare-the-triplets/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the compareTriplets function below.
def compareTriplets(a, b)
    score = [0,0]
    [a, b].transpose.each do |pair|
        next if pair[0] == pair[1]
        score[(pair[0] > pair[1] ? 0 : 1)] += 1
    end
    score
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()
