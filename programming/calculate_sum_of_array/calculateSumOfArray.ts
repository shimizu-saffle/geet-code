function calculateSumOfArray({ numbers }: { numbers: number[] }): number {
  return numbers.reduce((acc, next) => acc + next);
}

console.log(calculateSumOfArray({ numbers: [1, 2, 3, 4, 5] }));
