fun isAllUnique(input: String): Boolean = input.length == input.toSet().size

fun main() {
    println(isAllUnique("abc"))
}
