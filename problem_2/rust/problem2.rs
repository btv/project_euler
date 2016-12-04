
fn main() {
   let iter = (1..).scan((0,1), |state, _| {
     *state = (state.1, state.0 + state.1);
     Some(*state)
   });

   let total = iter
               .take_while(|x| x.1 < 4000000)
               .filter(|x| x.1 % 2 == 0)
               .fold(0, |sum, i| sum + i.1);

   println!("{}", total);
}
