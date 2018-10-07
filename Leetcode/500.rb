# @param {String[]} words
# @return {String[]}
def find_words(words)
  hash = {
    first: 'QWERTYUIOP',
    second: 'ASDFGHJKL',
    third: 'ZXCVBNM'
  }
  solution = []
  words.each do |word|
    res = word.chars.map do |letter|
      hash.map do |k, v|
        k if v.include?(letter.upcase)
      end.compact
    end.uniq
    solution << word if res.size == 1
  end.compact
  solution
end

# TESTS
# words = ["Hello", "Alaska", "Dad", "Peace"]
# print find_words(words)
