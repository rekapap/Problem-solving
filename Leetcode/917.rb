# @param {String} s
# @return {String}
def reverse_only_letters(s)
  letters = s.chars.map{ |char| char.match(/^[a-zA-Z]$/) ? char : nil }.compact.reverse
  i = 0
  s.chars.map do |char|
    if char.match(/^[a-zA-Z]$/)
      letter = letters[i]
      i += 1
    else
      letter = char
    end
    letter
  end.join
end

# puts reverse_only_letters("a-bC-dEf-ghIj").to_s
