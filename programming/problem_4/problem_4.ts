const isAllUnique = (input: string): boolean =>
  new Set(input).size === input.length;

console.log(isAllUnique('abc'));
