def expanded_around_center(string, left_index, right_index)
   if left_index < 0 or string.length <= right_index
    return [left_index, right_index]
   end

   while left_index >= 0 and right_index < string.length and string[left_index] == string[right_index]
    left_index -= 1
    right_index += 1
   end

   return [left_index + 1, right_index - 1]
end

puts expanded_around_center('abacdcbeebdbefaafbefdbbeabcdeedcbaebdcacba', 28, 29)
