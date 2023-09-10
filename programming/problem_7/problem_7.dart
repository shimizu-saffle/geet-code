void main() {
  const numbers = [1, 2, 3, 4, 5];
  final (evenAverage, oddAverage) = calculateEvenAndOddAverages(numbers);
  print('oddAverage: $oddAverage');
  print('evenAverage: $evenAverage');
}

(double, double) calculateEvenAndOddAverages(List<int> numbers) {
  return (
    calculateAverage(
      numbers.where((element) => element % 2 == 0).toList(),
    ),
    calculateAverage(
      numbers.where((element) => element % 2 != 0).toList(),
    ),
  );
}

double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0.0;
  }
  return numbers.reduce((curr, next) => curr + next) / numbers.length;
}
