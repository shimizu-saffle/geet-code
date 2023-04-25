def diff_max_min(numbers)
  return 0 if numbers.empty?
  numbers.max - numbers.min
end
  
numbers = [100, 1, 50]
puts diff_max_min(numbers)
  