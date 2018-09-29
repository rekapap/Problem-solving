#!/bin/ruby

#
# Complete the pageCount function below.
#
def pageCount(book, page)
  return 0 if book == page || page == 1
  diff1 = page / 2
  diff2 = ((book - page) / 2) + ((book - page) == 1 && book.even? ? 1 : 0)
  diff1 < diff2 ? diff1 : diff2
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

p = gets.to_i

result = pageCount n, p

fptr.write result
fptr.write "\n"

fptr.close()
