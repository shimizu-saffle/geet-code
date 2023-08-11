def average_excluding_min_max(input_numbers)
    min = input_numbers.min
    max = input_numbers.max
    input_numbers.delete(min)
    input_numbers.delete(max)
    sum = input_numbers.reduce(0) { |prev, curr| prev + curr }
    sum / input_numbers.length.to_f
end

puts 'average_excluding_min_max:', average_excluding_min_max([1, 2, 3, 4, 5])
