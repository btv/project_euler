
fn is_prime(divided: usize) -> bool {

    if divided == 1 {
        return true;
    }

    let mut divisor:usize = 3;
    let sqrt_divided = (divided as f64).sqrt() as usize;

    while divisor <= sqrt_divided {
      if divided == divisor {
        return true;
      } else if divided % divisor == 0 {
        return false;
      } else {
        divisor += 2;
      }
    }

    true
}

fn main() {
    let top_number: usize = 600851475143;
    let mut go_to = top_number.clone();
    let mut count:usize = 3;
    let mut first_list = Vec::new();

    while count <= go_to {
        if top_number % count == 0 {
            first_list.push(count);
            go_to = top_number / count;
            first_list.push(go_to);
        }

        count += 2;
    }

    println!("{}", first_list
                   .iter()
                   .filter(|x| is_prime(**x))
                   .max()
                   .unwrap());
}
