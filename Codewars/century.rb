def century(year)
  (year % 100).zero? ? year / 100 : (year / 100).floor + 1
end

print century(11)
