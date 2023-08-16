func averageExcludingMinMax(inputNumbers: [Int]) -> Double {
    let min = inputNumbers.min() ?? 0
    let max: Int = inputNumbers.max() ?? 0
    let filteredNumbers = inputNumbers.filter {$0 != min && $0 != max}
    let sum = filteredNumbers.reduce(0, +)
    return Double(sum) / Double(filteredNumbers.count)
}

print("averageExcludingMinMax: ", averageExcludingMinMax(inputNumbers: [1,2,3,4,5]))
