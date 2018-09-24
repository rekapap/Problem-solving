def take(arr, p = 1)
  arr - arr[0, p]
end

arr = [1,2,3]

print take(arr, 2)