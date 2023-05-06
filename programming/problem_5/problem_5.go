package main

import "fmt"

// expandedAroundCentner 与えられた中心を基準に回文を展開し、左右のインデックスを返す。
func expandedAroundCentner(stList []string, leftIndex int, rightIndex int) (newLeftIndex int, newRightIndex int,success bool) {
	if leftIndex < 0 || len(stList) <= rightIndex {
		return 0, 0, false
	}

	// 左右のインデックスを境界内で展開し、回文である限り続ける
	for leftIndex >= 0  && rightIndex < len(stList) && stList[leftIndex] == stList[rightIndex]{
		leftIndex--
		rightIndex++
	}

	return leftIndex + 1, rightIndex + 1, true
}

func main()  {
	stList := []string{"a","b","c","b","a"}
	leftIndex, rightIndex, success := expandedAroundCentner(stList, 2, 2)

	if success {
		fmt.Printf("leftIndex: %d, rightIndex: %d\n", leftIndex, rightIndex)
	} else {
		fmt.Printf("Invalid input")
	}
	
}
