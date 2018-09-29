def numeric_palindrome(*args)
  arr = *args
  comb = []
  (2..arr.size).each do |n|
    comb += arr.combination(n).to_a
  end
  comb.map! do |el|
    el.reduce(1, :*).to_s.split('')
  end
  res = comb.map { |num| pali_maker(num) }
  res.max
end

def pali_maker(array)
  hash = Hash.new { |h, k| h[k] = [] }
  pali_array(array, hash)
  start, mid, mirr = pali_numbers(hash)
  return mid.to_s.to_i if hash[2][0].to_s == '0'
  "#{start}#{mid}#{mirr}".to_i
end

def pali_array(array, hash)
  array.uniq.each do |n|
    num = array.count(n)
    two = (num / 2)
    one = num % 2
    two.times { hash[2] << n }
    one.times { hash[1] << n }
  end
end

def pali_numbers(hash)
  start = hash[2].sort { |x, y| y <=> x }.join('')
  mid = hash[1].max.to_s
  mirr = hash[2].sort.join('')
  [start, mid, mirr]
end

puts numeric_palindrome(57, 62, 23)
puts numeric_palindrome(15, 125, 8)
