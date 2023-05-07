package main

import "fmt"

// expandedAroundCentner 与えられた中心を基準に回文を展開し、左右のインデックスを返す。
func expandedAroundCentner(stList []rune, leftIndex int, rightIndex int) (newLeftIndex int, newRightIndex int,success bool) {
	if leftIndex < 0 || len(stList) <= rightIndex {
		return 0, 0, false
	}

	// 左右のインデックスを境界内で展開し、回文である限り続ける
	for leftIndex >= 0  && rightIndex < len(stList) && stList[leftIndex] == stList[rightIndex]{
		leftIndex--
		rightIndex++
	}

	return leftIndex + 1, rightIndex - 1, true
}

// findLongestPalindromeSubstring 与えられた文字列内で最長の回文部分文字列を返す
func findLongestPalindromeSubstring(str string) *string {
	strList := []rune(str)
	var longestPalindromeSubstring string

	for i := 0; i < 2*len(strList)-1; i++ {
		leftIndex := i / 2
		rightIndex := leftIndex + i%2

		newLeftIndex, newRightIndex, success := expandedAroundCentner(strList, leftIndex, rightIndex)
		if success {
			palindromeSubstring := string(strList[newLeftIndex:newRightIndex+1])
			if len(longestPalindromeSubstring) < len(palindromeSubstring) {
				longestPalindromeSubstring = palindromeSubstring
			}
		}
	}
	if longestPalindromeSubstring == "" {
		return nil
	}
	return &longestPalindromeSubstring
}

func main()  {
	result := findLongestPalindromeSubstring("abacdcbeebdbefaafbefdbbeabcdeedcbaebdcacba")
	if result == nil {
		fmt.Printf("No palindrome substring found.")
	} else {
		fmt.Printf("Longest palindrome substring %s\n", *result)
	}
}
