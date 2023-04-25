def is_all_unique(input_string: str) -> bool:
    return len(input_string) == len(set(input_string))

print(is_all_unique('abc'))
