void main() {
  print(
    average([1, 2, 3, 4, 5]),
  );
}

double average(List<int> numbers) {
  var min = numbers.first;
  var max = numbers.last;
  for (var n in numbers) {
    if (n < min) {
      min = n;
    } else if (n > max) max = n;
  }
  // 最大値と最小値を除く
  print('min: $min');
  numbers.remove(min);
  numbers.remove(max);
  // 平均値を求める
  // 要素数で合計値を割る
  print('numbers: $numbers');
  return numbers.reduce((a, b) => a + b) / numbers.length;
}
