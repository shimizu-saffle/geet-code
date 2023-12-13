function isPrimeNumber(n: number): boolean {
  // 2未満の数は素数ではない。2は素数だが、それ以外の偶数は素数ではない。
  if (n < 2 || n % 2 === 0) return n === 2;
  // 3から n の平方根までの奇数で、割り切れる数があれば、n は素数ではない。
  const limit = Math.sqrt(n);
  for (let i = 3; i <= limit; i += 2) {
    if (n % i === 0) return false;
  }
  return true;
}

console.log(isPrimeNumber(113));
