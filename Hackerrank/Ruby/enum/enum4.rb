def mapmaker(range)
  ch = range.to_a
  map = {}
  i = 0
  ch.each do |letter|
    map[letter] = ch[(i + 13) % 26]
    i += 1
  end
  map
end

map1 = mapmaker('A'..'Z')
map2 = mapmaker('a'..'z')

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
  result_array = []
  secret_messages.each do |strings|
    result_array.push(char13(strings))
  end
  result_array
end

puts rot13(["Why did the chicken cross the road?", "Gb trg gb gur bgure fvqr!"])