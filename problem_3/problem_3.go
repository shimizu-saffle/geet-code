package main

import "fmt"

func addByIndex(listA []int, listB []int) []int {
    sumList := make([]int, len(listA))
    for i := range sumList {
        sumList[i] = listA[i] + listB[i]
    }
    return sumList
}

func main() {
    listA := []int{1, 2, 3}
    listB := []int{4, 5, 6}
    fmt.Println(addByIndex(listA, listB))
}
