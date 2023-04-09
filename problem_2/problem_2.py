from typing import List

def get_even_numbers(numbers: List[int]) -> List[int]:
    return list(filter(lambda x: x % 2 == 0, numbers))

numbers = [1, 2, 3, 4, 5]
print(get_even_numbers(numbers))
