test = '<b>xxx<\b> <b>fff<\b> <c>ccc<\c>'

test.scan(/<\s*(\w+)\s*>[a-z0-9\s]*<\s*\\\1\s*>/) { |match| 
    print 'matches: '
    puts match
}