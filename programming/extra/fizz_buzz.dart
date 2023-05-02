void main() {
  String fizz(int n) => n % 3 == 0 ? 'Fizz' : '';
  String buzz(int n) => n % 5 == 0 ? 'Buzz' : '';
  String numberOrEmpty(int n) => n % 3 != 0 && n % 5 != 0 ? n.toString() : '';

  void fizzBuzz(int i) {
    String output = fizz(i) + buzz(i) + numberOrEmpty(i);
    print(output);

    i < 100 ? fizzBuzz(i + 1) : null;
  }

  fizzBuzz(1);
}
