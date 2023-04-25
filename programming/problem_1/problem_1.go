package main

import (
	"fmt"
	"sort"
)

func diffMaxMin(numbers []int) int {
	if len(numbers) == 0 {
		return 0
	}
	sort.Ints(numbers)
	return numbers[len(numbers)-1] - numbers[0]
}

func main() {
	numbers := []int{100, 1, 50}
	fmt.Println(diffMaxMin(numbers))
}
