# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity(a)
  a.sort_by { |n| n % 2 }
end
# TEST
# a = [1,2,3,4]
# print sort_array_by_parity(a)
