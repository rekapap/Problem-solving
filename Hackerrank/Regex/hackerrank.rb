def input_data
  number_of_lines = gets.to_i
  input = []
  number_of_lines.times do
    input << gets.chomp
  end
  input
end

def check_format(words)
  result = []
  words.each do |line|
    line.scan(/\b[@#]*[hH][aA][cC][kK][eE][rR][rR][aA][nN][kK]\b/) do
      result.push(1)
    end
  end
  result.reduce(0, :+)
end

array = input_data
puts check_format(array)
