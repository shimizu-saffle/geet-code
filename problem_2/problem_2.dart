void main() {
  List<int> getEvenNumbers(List<int> numbers) =>
      List.of(numbers)..removeWhere((e) => e % 2 != 0);
  const numbers = [1, 2, 3, 4, 5];
  print(getEvenNumbers(numbers));
}
