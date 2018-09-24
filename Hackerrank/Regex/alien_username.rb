def input_data
  number_of_lines = gets.to_i
  input = []
  number_of_lines.times do
    input << gets.chomp
  end
  input
end

def check_format(array)
  array.map do |username|
    result = false
    username.scan(/^[._][0-9]+[A-Za-z]*_?$/) do
      result = true
    end
    puts(result ? 'VALID' : 'INVALID')
  end
end

array = input_data
check_format(array)
