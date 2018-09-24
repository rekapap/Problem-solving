#!/bin/ruby

require 'json'
require 'stringio'

# Complete the kangaroo function below.
def kangaroo(x1, v1, x2, v2)
  return 'NO' if v1 == v2
  m = ((x2 - x1) / (v1 - v2))
  return 'NO' if m < 0
  (m * v1 + x1) == (m * v2 + x2) ? 'YES' : 'NO'
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

x1V1X2V2 = gets.rstrip.split

x1 = x1V1X2V2[0].to_i

v1 = x1V1X2V2[1].to_i

x2 = x1V1X2V2[2].to_i

v2 = x1V1X2V2[3].to_i

result = kangaroo x1, v1, x2, v2

fptr.write result
fptr.write "\n"

fptr.close()


# TEST
# puts kangaroo(21, 6, 47, 3)
