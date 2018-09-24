def full_name(*n)
   #n.join(' ')
   n * ' '
end
arr = ['r', 'g', 'fee' ,'r']

print arr
puts ''
print arr * ' '
puts ''

print full_name('r', 'g', 'fee' ,'r')