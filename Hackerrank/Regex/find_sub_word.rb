def input_data
  number_of_lines = gets.to_i
  input = []
  number_of_lines.times do
    input << gets.chomp
  end
  input
end

def check_words(string, words)
  words.map do |word|
    result = []
    string.scan(/[a-zA-Z0-9_]+#{word}[a-zA-Z0-9_]+/) do
      result.push(1)
    end
    result.reduce(0, :+)
  end
end

str = input_data.join("\n")
words = input_data
puts check_words(str, words)
