
def my_prime?(n)
  (n <= 1) ? false : (2..Math.sqrt(n).to_i).none? {|x| n % x == 0}
end

prime_array = ->(array_size) do
  2.upto(Float::INFINITY).lazy.select do |x|
    my_prime?(x)
  end.first(array_size)
end

print prime_array.(200)