def get_even_numbers(numbers)
  numbers.select { |n| n.even? }
end
  
numbers = [1, 2, 3, 4, 5]
puts get_even_numbers(numbers)
  