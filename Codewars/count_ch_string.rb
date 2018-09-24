def count_chars(s)
  return {} if s.empty?
  dict = Hash.new(0)
  s.each_char do |ch|
    # dict[ch] = 0 if dict[ch].nil?
    dict[ch] += 1
  end
  dict
end

string = 'aba'
print count_chars(string)
