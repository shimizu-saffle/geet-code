void main() {
  List<int> getEvenNumbers(List<int> numbers) =>
      numbers.where((e) => e % 2 == 0).toList();

  const numbers = [1, 2, 3, 4, 5];
  print(getEvenNumbers(numbers));
}
