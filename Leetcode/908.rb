# @param {Integer[]} a
# @param {Integer} k
# @return {Integer}
def smallest_range_i(a, k)
  max = a.max - k
  min = a.min + k
  res = (max - min)
  res < 0 ? 0 : res
end

