def fake_bin(s)
  s.tr('1-9', '00001')
end

puts fake_bin('123456789')
