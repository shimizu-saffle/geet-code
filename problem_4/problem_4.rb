def is_all_unique(input)
    input.chars.uniq.size == input.size
end

puts is_all_unique('abc')
