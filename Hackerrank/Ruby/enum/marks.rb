=begin
> marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
> group_by_marks(marks, 30)
=> {"Failed"=>[["Ramesh", 23]], "Passed"=>[["Vivek", 40], ["Harsh", 88], ["Mohammad", 60]]}

> (1..5).group_by {|x| x%2}
{1=>[1,3,5], 0=>[2, 4]}
=end

def group_by_marks(marks, pass_marks)
  marks.group_by {|k, v| v >= pass_marks ? 'Passed' : 'Failed'}
end

marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}

print group_by_marks(marks, 30)