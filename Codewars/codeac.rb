# method that capitalizes a word
def capitalize(string)
  "#{string[0].upcase}#{string[1..-1]}"
end

capitalize('ryan') # prints 'Ryan'
capitalize('jane') # prints 'Jane'

# block that capitalizes each string in the array
%w[ryan jane].each { |string| puts capitalize(string) }
