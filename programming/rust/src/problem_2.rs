fn get_even_numbers(numbers: &[i32]) -> Vec<i32> {
    numbers.iter().filter(|&n| n % 2 == 0).cloned().collect()
}

fn main() {
    let numbers = vec![1, 2, 3, 4, 5];
    println!("{:?}", get_even_numbers(&numbers));
}
