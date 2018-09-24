def square_of_sum (my_array, proc_sum, proc_square)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end

proc_square_number = Proc.new {|x| x * x}

proc_sum_array = Proc.new do |a|
  sum = 0
  i = 0
  while i < a.length
    sum += a[i]
    i = i + 1
  end
  sum
end


#my_array = gets.split().map(&:to_i)

#puts square_of_sum(my_array, proc_square_number, proc_sum_array)

my_array = [ 1, 2, 3]

print square_of_sum(my_array, proc_sum_array, proc_square_number)