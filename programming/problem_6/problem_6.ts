function averageExcludingMinMax(inputNumbers: number[]): number {
  const min = Math.min(...inputNumbers);
  const max = Math.max(...inputNumbers);
  const filteredNumbers = inputNumbers.filter((e) => e !== min && e !== max);
  const sum = filteredNumbers.reduce((prev, curr) => prev + curr, 0);
  return sum / filteredNumbers.length;
}

console.log('averageExcludingMinMax:', averageExcludingMinMax([1, 2, 3, 4, 5]));
