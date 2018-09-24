def rev(n)
  n.to_s.reverse.split(//).map(&:to_i)
end

def thirt(n)
  rem = [1, 10, 9, 12, 3, 4]
  num = rev(n) # [7,6,5,4,3,2,1]
  i = -1
  res = 100
  while res > 99
    res = num.map{|x|
      i == 5 ? i = 0 : i += 1
      rem[i] * x
    }
    i = -1
    res = res.reduce(:+)
    num = rev(res)
  end
  res
end

print thirt(85299258)