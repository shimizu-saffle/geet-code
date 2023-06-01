from typing import List

def expand_around_center(string: str, left_index: int, right_index: int) -> tuple: 
    # 左右のインデックスが有効な範囲内にあるか確認
    if left_index < 0 or len(string) <= right_index:
        return left_index, right_index
    # 左右のインデックスを境界内で展開し、回文である限り続ける
    while left_index >= 0 and right_index < len(string) and string[left_index] == string[right_index]:
        left_index -= 1
        right_index += 1
    # 最終的な左右のインデックスを返す
    return left_index + 1, right_index - 1

print(
    expand_around_center(
        'abacdcbeebdbefaafbefdbbeabcdeedcbaebdcacba',
        29,
        28,
    )
)
