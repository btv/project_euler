
fn is_palindrome(num: u64) -> bool {
    // this function borrowed & impoved on from:
    // http://www.jonathanturner.org/2015/10/lessons-from-first-12-euler-problems-in.html
    let s = num.to_string();
    s.chars().zip(s.chars().rev()).all(|i| i.0 == i.1)
}


fn main() {

    let mut highest = 0;

    for i in (100..999).rev() {
        for j in (100..999).rev() {
            let product = i * j;
            if highest < product && is_palindrome(product) {
              highest = product;
            }
        }
    }

    println!("{}", highest);
}
