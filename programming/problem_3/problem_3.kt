fun addByIndex(listA: List<Int>, listB: List<Int>): List<Int> = 
    // zip関数を使用して、listAとlistBの要素を同じインデックスでペアにする
    listA.zip(listB).map { it.first + it.second } // 各ペアの要素の和を計算し、リストで返す

fun main() {
    val listA = listOf(1, 2, 3)
    val listB = listOf(4, 5, 6)
    println(addByIndex(listA, listB))
}
