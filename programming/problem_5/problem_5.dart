void main() {
  Map<String, int>? expandAroundCenter({
    required List strList,
    required int leftIndex,
    required int rightIndex,
  }) {
    int decrementedLeftIndex = leftIndex - 1;
    int incrementedRightIndex = rightIndex + 1;
    int? currentLeftIndex;
    int? currentRightIndex;

    if (leftIndex < 0 || strList.length <= rightIndex) {
      return null;
    }

    for (var i = 1; i < strList.length; i++) {
      if (decrementedLeftIndex < 1 || strList.length <= incrementedRightIndex) {
        break;
      }
      if (strList[decrementedLeftIndex] == strList[incrementedRightIndex]) {
        currentLeftIndex = decrementedLeftIndex;
        currentRightIndex = incrementedRightIndex;
        decrementedLeftIndex--;
        incrementedRightIndex++;
      }
    }

    if (currentLeftIndex != null && currentRightIndex != null) {
      return {
        'leftIndex': currentLeftIndex,
        'rightIndex': currentRightIndex,
      };
    }

    if (strList[leftIndex] == strList[rightIndex]) {
      return {
        'leftIndex': leftIndex,
        'rightIndex': rightIndex,
      };
    }

    return null;
  }

  String? findLongestPalindromeSubstring(String str) {
    final strList = str.split('');
    var longestPalindromeSubstring = '';
    for (var i = 1; i < strList.length; i++) {
      final indexMap = expandAroundCenter(
        strList: strList,
        leftIndex: i - 1,
        rightIndex: i + 1,
      );
      if (indexMap != null) {
        final leftIndex = indexMap['leftIndex']!;
        final rightIndex = indexMap['rightIndex']!;

        final palindromeSubstringList =
            strList.sublist(leftIndex, rightIndex + 1);
        final palindromeSubstring = palindromeSubstringList.fold(
            '', (previous, current) => previous + current);

        if (longestPalindromeSubstring.length < palindromeSubstring.length) {
          longestPalindromeSubstring = palindromeSubstring;
        }
      }
    }
    return longestPalindromeSubstring.isEmpty
        ? null
        : longestPalindromeSubstring;
  }

  print(findLongestPalindromeSubstring('aba'));
}
