def find_nb(m)
  n = 1
  sum = 0
  res = -1
  until m <= sum
    sum += (n**3)
    n += 1
  end
  res = (n - 1) if sum == m
  res
end

puts find_nb(135440716410000)
