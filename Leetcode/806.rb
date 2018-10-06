# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
  sol = [1, 0]
  s.each_char do |ch|
    i = ch.ord - 'a'.ord
    num = widths[i]
    if num + sol[1] > 100
      sol[0] += 1
      sol[1] = num
    else
      sol[1] += num
    end
  end
  sol
end


# widths = [4,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
# s = "bbbcccdddaaa"

# number_of_lines(widths, s)
