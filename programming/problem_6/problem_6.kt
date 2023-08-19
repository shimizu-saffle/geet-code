fun averageExcludingMinMax(inputNumbers: List<Int>): Double {
    val min = inputNumbers.minOrNull() ?: 0
    val max = inputNumbers.maxOrNull() ?: 0
    val filteredNumbers = inputNumbers.filter { it != min && it != max }
    val sum = filteredNumbers.sum()
    return sum.toDouble() / filteredNumbers.size
}

fun main() {
    println("averageExcludingMinMax: " + averageExcludingMinMax(listOf(1, 2, 3, 4, 5)))
}
