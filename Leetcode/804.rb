# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  morse_key = m_key
  result = []
  words.map do |word|
    encoded = word.downcase.split(//).map do |letter|
      index = (letter.ord - 97)
      morse_key[index]
    end.join
    result << encoded unless result.include?(encoded)
  end
  result.length
end

def m_key
  ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-',
   '.-..', '--', '-.', '---', '.--.', '--.-', '.-.', '...', '-', '..-', '...-',
   '.--', '-..-', '-.--', '--..']
end
