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
  special_rules = {
    I: %i[V X],
    X: %i[L C],
    C: %i[D M]
  }
  sum = 0
  special_keys = special_rules.keys
  symbols = s.chars.map(&:to_sym)
  i = 0
  symbols.each do |ch|
    next_ch = symbols[i + 1]
    if special_keys.include?(ch) && special_rules[ch].include?(next_ch)
      sum -= hash[ch]
    else
      sum += hash[ch]
    end
    i += 1
  end
  sum
end

# TESTS
# puts roman_to_int('MCMXCIV')
