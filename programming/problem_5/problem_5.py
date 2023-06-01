from typing import List

def expand_around_center(string: str, left_index: int, right_index: int) -> tuple:    
    while left_index >= 0 and right_index < len(string) and string[left_index] == string[right_index]:
        left_index -= 1
        right_index += 1
    return left_index + 1, right_index + 1
