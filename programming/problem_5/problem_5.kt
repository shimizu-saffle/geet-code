// expandedAroundCenter 与えられた中心を基準に回文を展開し、左右のインデックスを返す。
fun expandedAroundCenter(stList: List<Char>, leftIndex: Int, rightIndex: Int): Triple<Int, Int, Boolean> {
    var leftIndexVar = leftIndex
    var rightIndexVar = rightIndex

    return (leftIndexVar >= 0 && stList.size > rightIndexVar).let { valid ->
        if (valid) {
            while (leftIndexVar >= 0 && rightIndexVar < stList.size && stList[leftIndexVar] == stList[rightIndexVar]) {
                leftIndexVar--
                rightIndexVar++
            }
            Triple(leftIndexVar + 1, rightIndexVar - 1, true)
        } else {
            Triple(0, 0, false)
        }
    }
}
