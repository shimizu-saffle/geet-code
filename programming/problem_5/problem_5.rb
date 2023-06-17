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

def find_longest_palindrome_substring(string)
   longest = ""

   for i in 0..(2 * string.length - 1) 
      left = i / 2
      right = left + i % 2

      left, right = expanded_around_center(string, left, right)

      if right - left + 1 > longest.length
         longest = string[left..right]
      end      
   end


   longest
end

puts find_longest_palindrome_substring('abacdcbeebdbefaafbefdbbeabcdeedcbaebdcacba')
