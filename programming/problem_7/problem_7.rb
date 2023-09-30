def main
    numbers = [1, 2, 3, 4, 5]
    even_average, odd_average = calculate_even_and_odd_averages(numbers)
    puts "oddAverage: #{odd_average}"
    puts "evenAverage: #{even_average}"
end
  
def calculate_even_and_odd_averages(numbers)
    [
        calculate_average(numbers.select { |n| n.even? }),
        calculate_average(numbers.select { |n| n.odd? })
    ]
end
  
def calculate_average(numbers)
    return 0.0 if numbers.empty?

    numbers.sum.to_f / numbers.length
end
  
main
  