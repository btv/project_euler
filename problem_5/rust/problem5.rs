
fn div_11_to_20(divided:usize) -> bool {
  (11..21).all(|i| divided % i == 0)
}

fn main() {
    let mut count:usize = 2520;
    while div_11_to_20(count) == false {
        count += 2520;
    }

    println!("{}", count);
}
