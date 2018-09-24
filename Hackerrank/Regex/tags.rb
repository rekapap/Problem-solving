number_of_lines = gets.to_i
input = ''
number_of_lines.times do
  read = gets
  input << read
end

result = []
input.scan(/(?<=<)\s*([a-z0-9]+)/) do |match|
  result.push(match) unless result.include? match
end
puts result.sort.join(';')

# 'hellobullshit'.gsub(//)
# puts res.sort.join(';')
#puts input

=begin
Test_String = gets
regex = Test_String.scan /#{Regex_Pattern}/
print "Number of matches : ",regex.length
=end

# (/(<\s*([a-z0-9]+)\/*>)/) 

# (?<=<(?:\s*)?)[a-z0-9]+(?=(?:\s*)?>)