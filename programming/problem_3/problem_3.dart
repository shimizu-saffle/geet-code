void main() {
  List<int> addByIndex(List<int> listA, List<int> listB) => listA
      .asMap()
      .entries
      .map((entry) => entry.value + listB[entry.key])
      .toList();

  const listA = [1, 2, 3];
  const listB = [4, 5, 6];
  print(addByIndex(listA, listB));
}
