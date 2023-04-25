function diffMaxMin(numbers: number[]): number {
  return numbers.length != 0 ? Math.max(...numbers) - Math.min(...numbers) : 0;
}

const numbers = [100, 1, 50];
console.log(diffMaxMin(numbers));
