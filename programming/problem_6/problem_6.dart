void main() {
  print(
    averageExcludingMinMax([1, 2, 3, 4, 5]),
  );
}

double averageExcludingMinMax(List<int> inputNumbers) {
  final min = inputNumbers.reduce((curr, next) => curr < next ? curr : next);
  final max = inputNumbers.reduce((curr, next) => curr > next ? curr : next);
  inputNumbers
    ..removeWhere((e) => e == min)
    ..removeWhere((e) => e == max);
  return inputNumbers.reduce((a, b) => a + b) / inputNumbers.length;
}
