def input_data
  number_of_lines = gets.to_i
  input = []
  number_of_lines.times do
    input << gets.chomp
  end
  input
end

def check_string(array)
  array.map do |string|
    result = []
    string.scan(/(\d{1,3})[\-\s]+(\d{1,3})[\-\s]+(\d{4,10})/) do |match|
      match.each_with_index do |num, i|
        result << "CountryCode=#{num}" if i.zero?
        result << "LocalAreaCode=#{num}" if i == 1
        result << "Number=#{num}" if i == 2
      end
      puts result.join(',')
    end
  end
end

str = input_data
check_string(str)
