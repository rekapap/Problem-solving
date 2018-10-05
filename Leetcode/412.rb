# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  (1..n).map do |n|
    fb(n)
  end
end

def fb(n)
  return "FizzBuzz" if (n % 3).zero? && (n % 5).zero?
  return "Fizz" if (n % 3).zero?
  return "Buzz" if (n % 5).zero?
  n.to_s
end
