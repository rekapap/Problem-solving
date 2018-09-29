require 'prime'

#[2, 4] => 6 # A => are all factors of the integer being considered
#[16, 32, 96]# B => The integer being considered is a factor of all elements of the second array
 # Print the number of integers that are considered to be between A and B

a = [2, 9]
b = [20, 30, 12]
hash = {}
a.each do |n|
  res = Prime.prime_division(n)
  hash[n] = res
end

minimum_req = Hash.new(0)
hash.each_value do |value|
  value.each do |set|
    minimum_req[set[0]] = set[1] if minimum_req[set[0]] < set[1]
  end
end

lcm = minimum_req.map do |k, v|
  k**v
end.reduce(:*)

puts lcm

#legit_numbers = (1..)
acc = 0
b.each do |n|
  acc += 1 if (n % lcm).zero?
end

puts acc
