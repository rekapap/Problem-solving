# https://www.codewars.com/kata/all-balanced-parentheses/train/ruby

def balanced_parens(n)
  return [''] if n.zero?
  hash = { 1 => ['()'] }
  acc = 1
  (n - 1).times do
    res = []
    variations(hash, acc, res)
    hash.delete(acc)
    acc += 1
    hash[acc] = res.uniq # .sort { |x,y| y <=> x })
  end
  hash[n]
end

def variations(hash, acc, res)
  hash[acc].each do |e|
    res << "(#{e})"
    res << "()#{e}"
    res << "#{e}()"
  end
end

print balanced_parens(11)
