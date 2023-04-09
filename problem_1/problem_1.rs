fn diff_max_min(numbers: &[i32]) -> i32 {
    if numbers.is_empty() {
        0
    } else {
        numbers.iter().max().unwrap() - numbers.iter().min().unwrap()
    }
}

fn main() {
    let numbers = vec![100, 1, 50];
    println!("{}", diff_max_min(&numbers));
}
