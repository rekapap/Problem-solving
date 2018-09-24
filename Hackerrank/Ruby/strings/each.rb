# Your code here

def count_multibyte_char(str)
  str.each_char.map do |ch|
    ch.bytesize > 1 ? 1 : 0
  end.reduce(0, :+)
end

# TEST
puts count_multibyte_char('¥♥1000')
