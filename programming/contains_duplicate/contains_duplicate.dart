void main(List<String> args) {
  print(containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]));
}

/// 整数配列 [nums] が与えられたとき、配列中に少なくとも2回出現する値があれば真を返し、すべての要素が異なる場合は偽を返す。
bool containsDuplicate(List<int> nums) {
  final numsSet = <int>{};
  for (final n in nums) {
    if (!numsSet.add(n)) {
      return true;
    }
  }
  return false;
}
