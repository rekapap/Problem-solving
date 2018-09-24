def sum1(n)
  (0..n).reduce{|sum, x| (x * x) + 1 + sum }
end

def sum2(n)
  (1..n).reduce(0){|sum, x| (x * x) + 1 + sum }
end

puts sum1(25)
puts sum2(25)
