def pi(x)
  res = (x / Math.log(x))
end

def prime_array_size(num)
  range = 1
  prime_numbers = 0
  until num <= prime_numbers
   range *= 10
   prime_numbers = pi(range)
  end
  range
end

# puts prime_array_size(4)

def prime_numbers(num)
  array_size = 10000 #prime_array_size(num+1)
  array = Array.new(array_size) {true}
  counter = 1
  for pos in (2..array_size) 
    res = array.each_with_index.map do |x, i|
      (i % pos).zero? && (i / pos) != 1 ? nil : x # swap? => use [] instead 
    end
    array = res
  end
  primes = []
  res.each_with_index do |b, i|
   primes.push(i) if b == true
  end
  print primes[1, num - 1] # delete 0,1
end



 puts prime_numbers(200)

=begin

array = array.each_with_index.map do |b, i|
   i unless b.nil?
  end
  array


array2 = [ true, true, true, true, true ]
# for ind in 1...5 do
res = array2.each_with_index.map { |x, i|
    (i % 3).zero? ? nil : x
}
# end
print res
=end
