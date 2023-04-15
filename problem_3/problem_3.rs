fn add_by_index(list_a: &[i32], list_b: &[i32]) -> Vec<i32> {
    // 2つのスライスを同時に処理するため、イテレータをzipして要素をタプルにまとめる
    // mapメソッドを用いて各タプルの要素を順に取り出し、a と b に代入し、それらの和を返す
    list_a.iter().zip(list_b).map(|(a, b)| a + b).collect()
}

fn main() {
    let list_a = [1, 2, 3];
    let list_b = [4, 5, 6];
    let result = add_by_index(&list_a, &list_b);
    println!("{:?}", result);
}
