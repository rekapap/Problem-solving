def duplicate_encode(word)
  letters = {}
  word = word.downcase.chars.each do |x|
    letters[x] = letters.key?(x) ? ')' : '('
  end
  word.map { |x| letters[x] }.join('')
end

print duplicate_encode('Asdfgha')
