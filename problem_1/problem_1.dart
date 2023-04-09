void main() {
  int diffMaxMin(List<int> numbers) {
    final sortedNum = numbers..sort();
    return sortedNum.last - sortedNum.first;
  }

  final numbers = [1, 2, 3];

  print(diffMaxMin(numbers));
}
