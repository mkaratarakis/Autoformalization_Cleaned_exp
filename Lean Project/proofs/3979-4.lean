import Init.Data.Nat.Div
import Init.Meta
import Init.Data.Nat.Dvd

open Nat


example (kpos : 0 < k) (H : m * k ∣ n * k) : m ∣ n := by
  have : k * m ∣ k * n := by rwa [mul_comm]
  exact dvd_of_mul_right_iff.mp this kpos

/- ACTUAL PROOF OF Nat.dvd_of_mul_dvd_mul_right -/

example (kpos : 0 < k) (H : m * k ∣ n * k) : m ∣ n := by
  rw [Nat.mul_comm m k, Nat.mul_comm n k] at H; exact Nat.dvd_of_mul_dvd_mul_left kpos H