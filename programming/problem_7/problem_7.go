package main

import (
	"fmt"
)

func main() {
	numbers := []int{1, 2, 3, 4, 5}
	evenAverage, oddAverage := calculateEvenAndOddAverages(numbers)
	fmt.Printf("oddAverage: %f\n", oddAverage)
	fmt.Printf("evenAverage: %f\n", evenAverage)
}

func calculateEvenAndOddAverages(numbers []int) (float64, float64) {
	evenNumbers := filter(numbers, func(n int) bool { return n%2 == 0 })
	oddNumbers := filter(numbers, func(n int) bool { return n%2 != 0 })

	return calculateAverage(evenNumbers), calculateAverage(oddNumbers)
}

func filter(numbers []int, condition func(int) bool) []int {
	var filtered []int
	for _, num := range numbers {
		if condition(num) {
			filtered = append(filtered, num)
		}
	}
	return filtered
}		

func calculateAverage(numbers []int) float64 {
	if len(numbers) == 0 {
		return 0.0
	}

	sum := 0
	for _, num := range numbers {
		sum += num
	}
	return float64(sum) / float64(len(numbers))
}
