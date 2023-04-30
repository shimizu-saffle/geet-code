void main() {
  /// 与えられた中心を基準に回文を展開し、左右のインデックスを返す関数
  Map<String, int>? expandAroundCenter({
    required List<String> strList,
    required int leftIndex,
    required int rightIndex,
  }) {
    if (leftIndex < 0 || strList.length <= rightIndex) {
      return null;
    }

    // 左右のインデックスを境界内で展開し、回文である限り続ける
    while (leftIndex >= 0 &&
        rightIndex < strList.length &&
        strList[leftIndex] == strList[rightIndex]) {
      leftIndex--;
      rightIndex++;
    }

    // 最終的な左右のインデックスを返す
    return {
      'leftIndex': leftIndex + 1,
      'rightIndex': rightIndex - 1,
    };
  }

  /// 与えられた文字列内で最長の回文部分文字列を見つける関数
  String? findLongestPalindromeSubstring(String str) {
    final strList = str.split('');
    var longestPalindromeSubstring = '';

    // 文字列の各文字とその隣の文字の間を中心に、奇数長と偶数長の回文を探す
    // i の範囲を 0 から 2 * strList.length - 1として、奇数長と偶数長の回文を1つのループで探索
    for (var i = 0; i < 2 * strList.length - 1; i++) {
      // i が偶数の場合、leftIndex と rightIndex が同じ値になり、奇数長の回文を探す
      // i が奇数の場合、rightIndex が leftIndex より1大きい値になり、偶数長の回文を探す
      final leftIndex = i ~/ 2;
      final rightIndex = leftIndex + i % 2;

      // leftIndex と rightIndex を中心として回文部分文字列を探す
      final indexMap = expandAroundCenter(
        strList: strList,
        leftIndex: leftIndex,
        rightIndex: rightIndex,
      );

      if (indexMap != null) {
        // 回文部分文字列を取得し、最長のものを更新する
        final palindromeSubstring = strList
            .sublist(indexMap['leftIndex']!, indexMap['rightIndex']! + 1)
            .join('');
        if (longestPalindromeSubstring.length < palindromeSubstring.length) {
          longestPalindromeSubstring = palindromeSubstring;
        }
      }
    }

    return longestPalindromeSubstring.isEmpty
        ? null
        : longestPalindromeSubstring;
  }

  print(
    findLongestPalindromeSubstring(
      'abacdcbeebdbefaafbefdbbeabcdeedcbaebdcacba',
    ),
  );
}
