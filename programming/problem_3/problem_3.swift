func addByIndex(listA: [Int], listB: [Int]) -> [Int] {
    zip(listA, listB).map { $0 + $1 }
}

let listA: [Int] = [1, 2, 3]
let listB: [Int] = [4, 5, 6]
print(addByIndex(listA: listA, listB: listB))
