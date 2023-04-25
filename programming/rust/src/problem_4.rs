fn is_all_unique(input: &str) -> bool{
    input.chars().collect::<std::collections::HashSet<_>>().len() == input.len()
}

fn main() {
    println!("{}", is_all_unique("abc"));
}
