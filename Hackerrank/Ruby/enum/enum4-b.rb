def mapmaker(range, shift)
  ch = range.to_a
  map = {}
  i = 0
  ch.each do |letter|
    map[letter] = ch[(i + shift) % (2 * shift)]
    i += 1
  end
  map
end

map1 = mapmaker('A'..'Z', 13)
map2 = mapmaker('a'..'z', 13)

def mapmerger(map1, map2)
  map = map1.merge(map2)
end

$map = mapmerger(map1, map2)

def char13(string)
  chary = string.split('')
  result = ''
  chary.each do |x|
    result += x unless $map.key?(x)
    $map.each do |letter, rot13|
      result += rot13 if x == letter
    end
  end
  result
end

def rot13(secret_messages)
  secret_messages.collect { |strings| char13(strings) }
end
