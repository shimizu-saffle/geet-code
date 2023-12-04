package main

import (
	"fmt"
	"math"
)

func main()  {
	fmt.Println(longestSubstringLengthOfUniqueCharacters("pwwkeabcdw"))
}


func longestSubstringLengthOfUniqueCharacters(input string) int  {
	charMap := make(map[rune]bool)
	var longest int
	var start int

	for i, char := range input {
		for charMap[char] {
			charMap[rune(input[start])] = false
			start++
		}
		charMap[char] = true
		longest = int(math.Max(float64(longest), float64(i-start+1)))
	}

	return longest
}
