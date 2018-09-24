def input_data
  number_of_lines = gets.to_i
  input = []
  number_of_lines.times do
    input << gets.chomp
  end
  input
end

def check_format(array)
  array.map do |latitude|
    latitude.scan(/^[Hh][Ii]\s[^Dd].*$/) do |match|
      puts match
    end
  end
end

array = input_data
check_format(array)
