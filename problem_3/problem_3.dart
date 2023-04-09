void main() {
  List<int> addByIndex(List<int> listA, List<int> listB) {
    final sumList = <int>[];
    for (var i = 0; i < listA.length; i++) {
      sumList.add(listA[i] + listB[i]);
    }
    return sumList;
  }

  const listA = [1, 2, 3];
  const listB = [4, 5, 6];
  print(addByIndex(listA, listB));
}
