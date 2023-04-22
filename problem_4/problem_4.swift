func isAllUnique(input: String) -> Bool {
    return Set(input).count == input.count
}

print(isAllUnique(input: "abc"))
