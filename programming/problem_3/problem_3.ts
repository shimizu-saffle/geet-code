const addByIndex = (listA: number[], listB: number[]): number[] =>
  listA.map((value, index) => value + listB[index]);

const listA = [1, 2, 3];
const listB = [4, 5, 6];
console.log(addByIndex(listA, listB));
