def add_by_index(list_a, list_b):
    # 2つのリストを同時に処理するため、zip関数を使って要素をタプルにまとめる
    # タプルの要素を順に取り出し、a と b に代入し、それらの和を新しいリストに追加
    return [a + b for a, b in zip(list_a, list_b)]
    
list_a = [1, 2, 3]
list_b = [4, 5, 6]
print(add_by_index(list_a, list_b))
