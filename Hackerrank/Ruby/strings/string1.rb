=begin
def process_text(array)
  array.each.map do |string|
    string.chomp(/''| "\n" | "\r" | "\r\n"/)
  end.join('')
end
array = ["Hi, \n", " Are you having fun?    "]
puts process_text(array)
=end

def process_text(array)
  array.map do |string|
    string.strip
  end.join(' ')
end