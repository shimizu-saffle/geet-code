# リストの各要素を同じインデックス同士で足し合わせる関数
def add_by_index(list_a, list_b)
    # 2つのリストを同時に処理するため、zip関数を使って要素をタプルにまとめる
    # mapメソッドを用いて各タプルの要素を順に取り出し、a と b に代入し、それらの和を返す
    return list_a.zip(list_b).map { |a, b| a + b }
end

list_a = [1, 2, 3]
list_b = [4, 5, 6]
p add_by_index(list_a, list_b) 
