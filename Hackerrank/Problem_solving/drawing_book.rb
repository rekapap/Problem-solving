#!/bin/ruby

#
# Complete the pageCount function below.
#
def pageCount(book, page)
  return 0 if book == page || page == 1
  b_start = 1
  diff_1 = page / 2 
  diff_2 = ((book - page) / 2 ) + ((book - page) == 1 && book.even? ? 1 : 0)
  diff_1 < diff_2 ? diff_1 : diff_2
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()
