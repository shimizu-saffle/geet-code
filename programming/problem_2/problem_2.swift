func getEvenNumbers(numbers: [Int]) -> [Int] {
    return numbers.filter { $0 % 2 == 0 }
}

let numbers: [Int] = [1, 2, 3, 4, 5]
print(getEvenNumbers(numbers: numbers))
