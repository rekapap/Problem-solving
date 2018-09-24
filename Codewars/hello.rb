def say_hello(name, city, state)
  name = name.join(' ')
  "Hello, #{name}! Welcome to #{city}, #{state}!"
end

say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')
