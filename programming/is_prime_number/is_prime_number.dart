import 'dart:math';

void main() {
  print(isPrimeNumber(5));
}

/// 与えられた正の整数が素数かどうかを判断する関数。
bool isPrimeNumber(int number) {
  // 1より小さい数は素数ではない。
  if (number < 2) {
    return false;
  }
  // 2から与えられた数の平方根までの数で割り切れるかどうかをチェック。
  for (var i = 2; i <= sqrt(number).toInt(); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
