fun diffMaxMin(numbers: List<Int>): Int =
    if (numbers.isEmpty()) 0 else numbers.max() - numbers.min()

fun main() {
    val numbers = listOf(100, 1, 50)
    println(diffMaxMin(numbers))
}
