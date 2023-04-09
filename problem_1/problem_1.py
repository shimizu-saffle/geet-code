#!/kentashimizu/bin/env python

from typing import List

def diffMaxMin(numbers: List[int]) -> int:
    if not numbers:
        return 0
    return max(numbers) - min(numbers)

numbers = [100, 1, 50]
print(diffMaxMin(numbers))

