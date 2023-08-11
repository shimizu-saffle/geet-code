package main

import (
	"fmt"
	"math"
)

func averageExcludingMinMax(inputNumbers []int) float64 {
	min := math.MaxInt64
	max := math.MinInt64
	sum := 0

	for _, num := range inputNumbers{
		if num < min {
			min = num
		}
		if num > max {
			max = num
		}
		sum += num
	}
	sum -= min + max
	return float64(sum) / float64(len(inputNumbers)-2)	
}


func main()  {
	numbers := []int{1,2,3,4,5}
	fmt.Println("averageExcludingMinMax:", averageExcludingMinMax(numbers))	
}
