import 'dart:math';

void main(List<String> args) {
  print(longestSubstringLengthOfUniqueCharacters('pwwkew'));
}

int longestSubstringLengthOfUniqueCharacters(String input) {
  var charSet = Set<String>();
  var longest = 0;
  var start = 0;

  for (var i = 0; i < input.length; i++) {
    var char = input[i];
    while (charSet.contains(char)) {
      charSet.remove(input[start]);
      start++;
    }
    charSet.add(char);
    longest = max(longest, i - start + 1);
  }

  return longest;
}
