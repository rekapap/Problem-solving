def input_data
  number_of_lines = gets.to_i
  input = []
  number_of_lines.times do
    input << gets.chomp
  end
  input
end

langs = "C:CPP:JAVA:PYTHON:PERL:PHP:RUBY:CSHARP:HASKELL:CLOJURE:BASH:SCALA:ERLANG:CLISP:LUA:BRAINFUCK:JAVASCRIPT:GO:D:OCAML:R:PASCAL:SBCL:DART:GROOVY:OBJECTIVEC"
@langs = langs.split(':')

def scan_check(line, pattern)
  line.scan(/^\d\d\d\d\d\s#{pattern}$/) do
    @result = true
  end
end

def check_format(words)
  words.each do |line|
    @result = false
    @langs.each do |p1|
      scan_check(line, p1)
    end
    puts(@result == true ? 'VALID' : 'INVALID')
  end
end

array = input_data
check_format(array)
