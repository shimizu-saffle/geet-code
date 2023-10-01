function main() {
  const numbers = [1, 2, 3, 4, 5];
  const [evenAverage, oddAverage] = calculateEvenAndOddAverages(numbers);
  console.log(`oddAverage: ${oddAverage}`);
  console.log(`evenAverage: ${evenAverage}`);
}

function calculateEvenAndOddAverages(numbers: number[]): [number, number] {
  return [
    calculateAverage(numbers.filter((n) => n % 2 === 0)),
    calculateAverage(numbers.filter((n) => n % 2 !== 0)),
  ];
}

function calculateAverage(numbers: number[]): number {
  if (numbers.length === 0) {
    return 0.0;
  }
  return numbers.reduce((curr, next) => curr + next, 0) / numbers.length;
}

main();
