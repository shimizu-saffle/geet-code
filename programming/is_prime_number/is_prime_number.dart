import 'dart:math';

void main() {
  print(isPrimeNumber(113));
}

/// 与えられた正の整数が素数（1と自身以外に約数を持たない数）かどうかを判定する。
bool isPrimeNumber(int n) {
  // 2未満の数は素数ではない。2は素数だが、それ以外の偶数は素数ではない。
  if (n < 2 || n % 2 == 0) return n == 2;
  // 3から n の平方根までの奇数で、割り切れる数があれば、n は素数ではない。
  final limit = sqrt(n).toInt();
  for (var i = 3; i <= limit; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}
