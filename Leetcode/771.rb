# https://leetcode.com/problems/jewels-and-stones/
# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  acc = 0
  pattern = j.split(//).join('|')
  s.scan(/#{pattern}/) do |_match|
    acc += 1
  end
  acc
end
