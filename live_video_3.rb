arr = [1,2,3,4,5,6,7,8,9, 10]

# idx = 0

# loop do
#   puts arr[idx]
#   idx += 1
#   break if idx == arr.size
# end

# arr.map do |n|
#   puts n
# end

arr << 12
arr.unshift(0)
arr.pop
arr << 3
arr.uniq!



new_arr = arr.select { |v| v.odd? }

p arr
p new_arr