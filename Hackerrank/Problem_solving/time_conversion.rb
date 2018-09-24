# https://www.hackerrank.com/challenges/time-conversion/problem
#!/bin/ruby

#
# Complete the timeConversion function below.
#
def timeConversion(s)
  chars = s.split(//)
  zone = chars.pop(2).join('')
  hour = chars[0, 2].join('')
  chars[0..1] = hour.to_i.+(12).to_s if zone == 'PM' && hour != '12'
  chars[0..1] = '00' if zone == 'AM' && hour == '12'
  chars.join('')
end

fp = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip
# TEST
#s = '12:05:45PM'
result = timeConversion(s)

fp.write result
fp.write "\n"

fp.close()