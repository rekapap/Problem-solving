# Enter your code here. Read input from STDIN. Print output to STDOUT

# My Prime? method
def my_prime?(num)
  num <= 1 ? false : (2..Math.sqrt(num).to_i).none? { |x| (num % x).zero? }
  #n / natural log of n = ln(n)
end

# Methods for palindromic?
def digit_checker(array, index1, index2)
  array[index1] == array[index2]
end

def compare_loop(index1, index2)
  @half.times do
    break unless digit_checker(@digits, index1, index2)
    index1 -= 1
    index2 += 1
  end
end

def palindromic?(number)
  @digits = number.to_s.chars
  length = @digits.length
  @half = (length / 2)
  return true if length == 1
  @index = @half - 1
  @check = compare_loop(@index, @index + 1) if length.even?
  @check = compare_loop(@index, @index + 2) unless length.even?
  @check.nil? ? false : true
end

# HACKERRANK

palindromic_prime_array = ->(array_size) do
  # 2.upto(Float::INFINITY).lazy.select { |x| palindromic?(x)}.lazy.select { |x| my_prime?(x) }.first(array_size) # 2.49 / 2.47/ 0.01
  2.upto(Float::INFINITY).lazy.select { |x| 
    palindromic?(x) && my_prime?(x) 
  }.first(array_size) #2/39 / 2.36 / 0.01 
end

=begin
palindromic_array = ->(array_size) do
  2.upto(Float::INFINITY).lazy.select do |x|
    palindromic?(x)
  end.first(array_size)
end

prime_array = ->(array_size) do
  2.upto(Float::INFINITY).lazy.select do |x|
    my_prime?(x)
  end.first(array_size)
end
=end
=begin
print palindromic_array.(200)
puts "\n--------------"
print prime_array.(200)
puts "\n --------------"
=end
print palindromic_prime_array.(200)
=begin
# TESTS
# num = [2, 3, 5, 11, 101, 505, 2002, 191]
# print prime?(33)
# print palindromic?(12)
# print palindromic_primes(num)
=end
