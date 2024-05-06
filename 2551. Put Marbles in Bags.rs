impl Solution {
  pub fn put_marbles(weights: Vec<i32>, k: i32) -> i64 {
      if k == 1 {
          return 0;
      }
      
      let mut w = vec![];
      
      for i in 0..weights.len() - 1 {
          w.push(weights[i] + weights[i+1]);
      }
      
      w.sort();
      
      let last_sum: i32 = w.iter().rev().take((k - 1) as usize).sum();
      let first_sum: i32 = w.iter().take((k - 1) as usize).sum();
      
      (last_sum - first_sum) as i64
  }
}

fn main() {
  let weights = vec![1, 3, 5, 1];
  let k = 2;
  let result = Solution::put_marbles(weights, k);
  println!("Result: {}", result);
}
