# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  range = (left..right).to_a
  range.map do |num|
    valid = num.to_s.chars.map do |digit|
      digit.to_i.zero? ? false : (num % digit.to_i).zero?
    end.uniq
    if valid.size == 1
      valid.include?(false) ? nil : num
    end
  end.compact
end

print self_dividing_numbers(47, 77)
