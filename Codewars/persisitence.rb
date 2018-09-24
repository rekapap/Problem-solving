def persistence(n)
  i = 0
  while n > 9
    n = n.to_s.chars.map(&:to_i)
    n = n.reduce(:*)
    i += 1
  end
  i
end

puts persistence(999)
