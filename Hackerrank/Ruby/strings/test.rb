=begin
puts 'o'.match(/(b?)o\1/)
puts 'ow'.match(/(b?)o\1/)
puts 'bo'.match(/(b?)o\1/)
puts 'bob'.match(/(b?)o\1/)

puts 'ob'.match(/(b?)o\1/) # => o
puts 'bob'.match(/(b)?o\1/)
puts '12.34.56.78'.match(/^\d\d((-)|(:)|(---)|(\.))\d\d\1\d\d\1\d\d$/)
puts '12345678'.match(/^\d\d(()|(-)|(:)|(---)|(\.))?\d\d\1\d\d\1\d\d$/)
puts '12-34-56-78'.match(/^\d\d(|-|:|---|\.)\d\d\1\d\d\1\d\d$/)
puts 'cbobbc'.match(/(b)?(c)?o\1\1\2/)
puts 'cbobbc'.match(/(c)?(b)?o\2\2\1/)
puts "haahaahaa".match(/(haa|hee|hoo)\1\1/)
puts "haahaahaa".match(/((haa)|(hee)|(hoo))\1\1/){|match| "*#{match}*"}


puts "go!go!amigo!".match(/(\2amigo|(go!))+/)
puts "tactactictac".match(/^(\2tic|(tac))+$/)
puts "OOKOKOKOKOOOK".match(/(\2K|(O))+$/)
=end
