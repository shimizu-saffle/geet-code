function longestSubstringLengthOfUniqueCharacters({
  input,
}: {
  input: string;
}): number {
  const charSet = new Set<string>();
  let longest = 0;
  let start = 0;

  for (let i = 0; i < input.length; i++) {
    let char = input[i];
    while (charSet.has(char)) {
      charSet.delete(input[start]);
      start++;
    }
    charSet.add(char);
    longest = Math.max(longest, i - start + 1);
  }

  return longest;
}

console.log(longestSubstringLengthOfUniqueCharacters({ input: 'pwwkew' }));
