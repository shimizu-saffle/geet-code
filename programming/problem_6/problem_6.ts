function averageExcludingMinMax(inputNumbers: number[]): number {
  const min = Math.min(...inputNumbers);
  const max = Math.max(...inputNumbers);
  inputNumbers = inputNumbers.filter((e) => e !== min && e !== max);
  const sum = inputNumbers.reduce((prev, curr) => prev + curr, 0);
  return sum / inputNumbers.length;
}

console.log('averageExcludingMinMax:', averageExcludingMinMax([1, 2, 3, 4, 5]));
