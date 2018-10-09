# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
  array = nums.flatten
  size = array.size
  req_size = r * c
  return nums unless (size / req_size) > 0 && (size % req_size).zero?
  array.each_slice(c).to_a
end
