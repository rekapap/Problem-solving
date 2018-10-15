# @param {String} s
# @return {Integer}
def roman_to_int(s)
  hash = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  }
  specials = {
    I: %i[V X],
    X: %i[L C],
    C: %i[D M]
  }
  sum = 0
  special_array = specials.keys
  symbols = s.chars.map(&:to_sym)
  i = 0
  symbols.each do |c|
    ch = c.to_sym
    next_ch = s[i + 1]
    next_ch = next_ch.to_sym unless next_ch.nil?
    if special_array.include?(ch) && specials[ch].include?(next_ch)
      sum -= hash[ch]
    else
      sum += hash[ch]
    end
    i += 1
  end
  sum
end

puts roman_to_int('MCMXCIV')
