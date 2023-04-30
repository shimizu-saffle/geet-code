void main() {
  // 与えられた中心を基準に回文を展開し、左右のインデックスを返す関数
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

  // 与えられた文字列内で最長の回文部分文字列を見つける関数
  String? findLongestPalindromeSubstring(String str) {
    final strList = str.split('');
    var longestPalindromeSubstring = '';
    // 文字列の各文字とその隣の文字の間を中心に、奇数長と偶数長の回文を探す
    for (var i = 0; i < strList.length; i++) {
      for (var j = 0; j < 2; j++) {
        final indexMap = expandAroundCenter(
          strList: strList,
          leftIndex: i,
          rightIndex: i + j,
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
    }
    return longestPalindromeSubstring.isEmpty
        ? null
        : longestPalindromeSubstring;
  }

  print(
    findLongestPalindromeSubstring('abacdcbeebdbefaafbefdbbeabcdedcbaebdcacba'),
  );
}
