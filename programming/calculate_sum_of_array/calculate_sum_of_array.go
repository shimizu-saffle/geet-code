package main

import "fmt"

func calculateSumOfArray(numbers []int) int {
	sum := 0
	for _, num := range numbers {
		sum += num
	}
	return sum
}

func main()  {
	fmt.Println(calculateSumOfArray([]int{1,2,3,4,5}))
}
