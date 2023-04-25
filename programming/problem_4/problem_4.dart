void main() {
  bool isAllUnique(String input) =>
      input.split('').toSet().length == input.length;

  print(isAllUnique('abc'));
}
