void main() {
  print(calculateSumOfArray([1, 2, 3, 4, 5]));
}

int calculateSumOfArray(List<int> numbers) =>
    numbers.reduce((acc, next) => acc + next);
