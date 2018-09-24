def rotate(value, min, max, ammount)
  return value if value < min || value > max
  value += ammount
  value -= (max - min + 1) if value > max
  value
end

def rot13(text)
  result = ''
  text.each_byte do |value|
    value = rotate(value, 'a'.ord, 'z'.ord, 13)
    value = rotate(value, 'A'.ord, 'Z'.ord, 13)
    result += value.chr
  end
  result
end

puts rot13('Jul qvq gur puvpxra pebff gur ebnq?')
