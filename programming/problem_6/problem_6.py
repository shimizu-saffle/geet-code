from typing import List


def average_excluding_min_max(input_numbers: List[int]) -> float:
    min_val = min(input_numbers)
    max_val = max(input_numbers)
    filtered_numbers = [e for e in input_numbers if e != min_val and e != max_val]
    sum_val = sum(filtered_numbers)
    return sum_val / len(filtered_numbers)


print("average_excluding_min_max:", average_excluding_min_max([1, 2, 3, 4, 5]))
