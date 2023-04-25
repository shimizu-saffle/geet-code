fun getEvenNumbers(numbers: List<Int>): List<Int> = numbers.filter { it % 2 == 0 }

fun main() {
    val numbers = listOf(1, 2, 3, 4, 5)
    println(getEvenNumbers(numbers))
}
