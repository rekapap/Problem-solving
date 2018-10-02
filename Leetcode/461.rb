# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  (x ^ y).to_s(2).each_char.map(&:to_i).reduce(0, :+)
end
