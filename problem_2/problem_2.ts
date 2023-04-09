function getEvenNumbers(numbers: number[]): number[] {
  return numbers.filter((n) => n % 2 === 0);
}

const numbers: number[] = [1, 2, 3, 4, 5];
console.log(getEvenNumbers(numbers));
