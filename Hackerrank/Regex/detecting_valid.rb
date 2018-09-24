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
    result = false
    latitude.scan(/^\([\+\-]?(([1-9])|([1-8]\d)|(90))(\.\d+)?,\s[\+\-]?(((([1-9]\d?)|(1[0-7]\d))(\.\d+)?)|(180(\.0+)?))\)$/) do |match|
      result = true
    end
    puts(result ? 'Valid' : 'Invalid')
  end
end

array = input_data
check_format(array)

# .scan(/^\(([^,]+),\s([^,]+)\)$/)
# .scan(/^\([\+\-]?[1-9]\d?(\.\d+)?,\s[\+\-]?[1-9]\d{0,2}(\.\d+)?\)$/)