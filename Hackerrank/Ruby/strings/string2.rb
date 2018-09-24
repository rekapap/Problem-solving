def mask_article(str, array)
  return "Array consist word(s) that's not in the srting!" unless check_array(str, array)
  array.each do |word|
    tagged_word = strike(word)
    str.gsub!("#{word}", "#{tagged_word}")
  end
  str
end

def check_array(str, array)
  check = array.map do |word|
    false unless str.include? word
  end
  !(check.include? false)
end

def strike(string)
  string.gsub(/(.+)/,'<strike>\1</strike>')
end

# TEST
puts mask_article("Hello World! This is crap!", ["crap"])


=begin
def strike(string)
  string.gsub(/(^)/, '<strike>').gsub(/($)/, '</strike>')
end

 puts strike("Foolan Barik")

#puts "hello".gsub(/(^)/,'<strike>')

 puts "string".gsub(/(.+)/,'<string>\1</string>') 
 # => .* => <s>string</s><s></s> 
 #=> because * check if its zero character as well! And thats' why it prints it twice
=end
=begin
{ |m| "#{$1}<strike>" }
=end
=begin
def strike(string)
  string.gsub(/(^)($)/, '<strike>') # (/[\^]/, "\^" => "\^*") # '^' => "\^<strike>", "\$" => "</strike>\$")
end

# TESTS
puts strike("mommy")

puts "hello".gsub!(/(^)/, '<strike>')
puts "hello".gsub(/($)/, '</strike>')




"hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
"hello".gsub(/([aeiou])/, '<\1>')             #=> "h<e>ll<o>"
"hello".gsub(/./) {|s| s.ord.to_s + ' '}      #=> "104 101 108 108 111 "
"hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')  #=> "h{e}ll{o}"
'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')    #=> "h3ll*"
=end