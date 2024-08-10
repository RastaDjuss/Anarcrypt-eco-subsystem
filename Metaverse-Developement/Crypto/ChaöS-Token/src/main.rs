// main.rs

fn main() {
    println!("Hello, world!");
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_greeting() {
        let result = greet();
        assert_eq!(result, "Hello, world!");
    }

    fn greet() -> &'static str {
        "Hello, world!"
    }
}
