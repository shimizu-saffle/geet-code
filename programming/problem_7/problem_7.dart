void main() {
  const numbers = [1, 2, 3, 4, 5];
  final (evenAverage, oddAverage) = eachNumberTypeAverage(numbers);
  print('oddAverage: $oddAverage');
  print('evenAverage: $evenAverage');
}

(double, double) eachNumberTypeAverage(List<int> numbers) {
  final evenNumbers = <int>[];
  final oddNumbers = <int>[];
  numbers.forEach(
    (e) => e % 2 == 0 ? evenNumbers.add(e) : oddNumbers.add(e),
  );
  return (
    calculateAverage(oddNumbers),
    calculateAverage(evenNumbers),
  );
}

double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0.0;
  }
  return numbers.reduce((curr, next) => curr + next) / numbers.length;
}
