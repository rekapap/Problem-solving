# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  array = nums.sort.each_slice(2).to_a
  array.map do |sub_array|
    sub_array.min 
  end.reduce(0, :+)
end