def fakt (n)
  (1..n).reduce(:*)
end

combination = -> (n) do
    -> (r) do
      fakt(n) /(fakt(r) * fakt(n-r)
    end
end


n = 5 # gets.to_i
r = 3 # gets.to_i
nCr = combination.(n)
puts nCr.(r)