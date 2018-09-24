# https://www.hackerrank.com/challenges/grading/problem
# !/bin/ruby

#
# Complete the gradingStudents function below.
#
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
# array = [73, 67, 38, 33]
# puts gradingStudents(array)

fp = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

grades = Array.new(n)

n.times do |grades_itr|
  grades_item = gets.to_i
  grades[grades_itr] = grades_item
end

result = gradingStudents grades

fp.write result.join "\n"
fp.write "\n"

fp.close
