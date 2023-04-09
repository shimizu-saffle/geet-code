package main

import "fmt"

func getEvenNumbers(numbers []int) []int {
    evens := []int{}
    for _, n := range numbers {
        if n%2 == 0 {
            evens = append(evens, n)
        }
    }
    return evens
}

func main() {
    numbers := []int{1, 2, 3, 4, 5}
    fmt.Println(getEvenNumbers(numbers))
}
