def gradingStudents(grades)
  grades.map do |grade|
    if (grade < 38) || (grade % 5) < 3
      grade
    else
      ((grade / 5) + 1) * 5
    end
  end
end
# TESTS
array = [73, 67, 38, 33]
puts gradingStudents(array)