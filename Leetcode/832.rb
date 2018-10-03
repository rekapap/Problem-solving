# @param {Integer[][]} a
# @return {Integer[][]}
def flip_and_invert_image(a)
  a.map do |subarray|
     subarray.reverse.map do |num|
        num.zero? ? 1 : 0 
     end
  end
end