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
    string.scan(/\b#{word}\b/) do |match|
      result.push(1)
    end
    result.reduce(0, :+)
  end
end

str = input_data.join("\n")
words = input_data
puts check_words(str, words)
