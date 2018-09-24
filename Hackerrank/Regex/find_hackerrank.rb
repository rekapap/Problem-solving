def input_data
  number_of_lines = gets.to_i
  input = []
  number_of_lines.times do
    input << gets.chomp
  end
  input
end

def scan_check(line, pattern, string)
  line.scan(/#{pattern}/) do
    @result = true
    puts string
  end
end

def check_format(words)
  words.each do |line|
    p1 = '^(\bhackerrank\b).*(?<!hackerrank)$'
    p2 = '[^h].*(\bhackerrank\b)$'
    p3 = '^(\bhackerrank\b)((.*(\bhackerrank\b))|)$'
    @result = false
    scan_check(line, p1,'1')
    scan_check(line, p2,'2')
    scan_check(line, p3,'0')
    puts '-1' if @result == false
  end
end

array = input_data
check_format(array)

# 2
# 1
# 0
# -1