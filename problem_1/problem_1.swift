func diffMaxMin(_ numbers: [Int]) -> Int {
    guard !numbers.isEmpty else {
        return 0
    }
    return numbers.max()! - numbers.min()!
}

let numbers: [Int] = [100, 1, 50]
print(diffMaxMin(numbers))
