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
    username.scan(/^[A-Z]{5}\d{4}[A-Z]$/) do
      result = true
    end
    puts(result ? 'YES' : 'NO')
  end
end

array = input_data
check_format(array)