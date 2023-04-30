void main() {
  Map<String, int>? expandAroundCenter({
    required List<String> strList,
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
      if (decrementedLeftIndex < 0 || strList.length <= incrementedRightIndex) {
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

  bool compareNextElement(List list, int index) {
    if (index >= list.length - 1) {
      return false;
    }
    return list[index] == list[index + 1];
  }

  String? findLongestPalindromeSubstring(String str) {
    final strList = str.split('');
    var longestPalindromeSubstring = '';
    for (var i = 1; i < strList.length; i++) {
      if (compareNextElement(strList, i)) {
        continue;
      }
      final indexMap = expandAroundCenter(
        strList: strList,
        leftIndex: i - 1,
        rightIndex: i + 1,
      );
      if (indexMap != null) {
        final palindromeSubstring = strList
            .sublist(indexMap['leftIndex']!, indexMap['rightIndex']! + 1)
            .fold('', (previous, current) => previous + current);
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
    findLongestPalindromeSubstring('abacdcbeebdbefaafbefdbbeabcdedcbaebdcacba'),
  );
}
