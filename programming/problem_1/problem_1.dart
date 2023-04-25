import 'dart:math';

void main() {
  int diffMaxMin(List<int> numbers) =>
      numbers.isEmpty ? 0 : numbers.reduce(max) - numbers.reduce(min);

  final numbers = [100, 1, 50];

  print(diffMaxMin(numbers));
}
