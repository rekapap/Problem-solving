=begin
def reverse_number(n)
  n.to_s.reverse.to_i
end
=end

reverse_number = Proc.new { |n|
  abs = n.to_s.reverse.to_i
  n > 0 ? abs : -abs
}
tester = [123, -456, 1000]

puts tester.to_s
puts tester.map(&reverse_number).to_s
