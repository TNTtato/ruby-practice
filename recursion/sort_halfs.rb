def sort_by_halfs(arr)
  if arr.length <= 2  # the base case
    a = arr[0]
    b = arr[-1]
  else
    a = sort_by_halfs(arr.slice!(0, arr.length/2))
    b = sort_by_halfs(arr)
  end    
  
  return a > b ? a : b
end

rocks = 30.times.map{rand(200) + 1}
puts rocks.join(', ')
puts "Heaviest rock is: #{sort_by_halfs(rocks)}"