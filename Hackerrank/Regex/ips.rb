def input_data
  number_of_lines = gets.to_i
  input = []
  number_of_lines.times do
    input << gets.chomp
  end
  input
end

pattern_v4 = '^((\d)|([1-9]\d)|([1]\d\d)|([2][0-4]\d)|([2][5][0-5]))\.((\d)|([1-9]\d)|([1]\d\d)|([2][0-4]\d)|([2][5][0-5]))\.((\d)|([1-9]\d)|([1]\d\d)|([2][0-4]\d)|([2][5][0-5]))\.((\d)|([1-9]\d)|([1]\d\d)|([2][0-4]\d)|([2][5][0-5]))$'
pattern_v6 = '^[0-9a-f]{4}:[0-9a-f]{1,4}:[0-9a-f]{1,4}:[0-9a-f]{1,4}:[0-9a-f]{1,4}:[0-9a-f]{1,4}:[0-9a-f]{1,4}:[0-9a-f]{1,4}$'

def scan_check(pattern, string)
  string.scan(/#{pattern}/) do
    @result = true
    puts string
  end
def 

def check_format(array)
  array.map do |string|
    @result = false
    scan_check(pattern_v4, 'IPv4')
    scan_check(pattern_v6, 'IPv6')
    puts 'Neither' if @result == false
  end
end

array = input_data
check_format(array)

=begin
# Tests
for x in 0..256 do
  #print "#{x} "
  str = "#{rand(300)}.#{rand(300)}.#{rand(300)}.#{rand(300)}"
  puts str if str.match(/^((\d)|([1-9]\d)|([1]\d\d)|([2][0-4]\d)|([2][5][0-5]))\.((\d)|([1-9]\d)|([1]\d\d)|([2][0-4]\d)|([2][5][0-5]))\.((\d)|([1-9]\d)|([1]\d\d)|([2][0-4]\d)|([2][5][0-5]))\.((\d)|([1-9]\d)|([1]\d\d)|([2][0-4]\d)|([2][5][0-5]))$/) == nil
end
=end
