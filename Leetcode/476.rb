# @param {Integer} num
# @return {Integer}
def find_complement(num)
  p = 1
  res = 0
  while num > 0
    res += p * ((num & 1) == 1 ? 0 : 1)
    p *= 2
    num /= 2
  end
  res
end
