def fakt(n)
  (1..n).reduce(:*)
end

combination = -> (number) do
  -> (another_number) do
    (fakt(number) / (fakt(another_number) * fakt(number - another_number)))
  end
end

n = 4 # gets.to_i
r = 2 # gets.to_i
nCr = combination.(n)
puts nCr.(r)
