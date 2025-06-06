import Init.Data.Nat.Dvd
import Init.NotationExtra
import Init.RCases
import Init.Data.Nat.Gcd

open Nat


example (m n k : Nat) : gcd (m * n) (k * n) = gcd m k * n := by
  rw [Nat.mul_comm m n, Nat.mul_comm k n]
  rw [Nat.mul_comm (gcd m k) n]
  rw [Nat.gcd_mul_left n m k]
  rfl

/- ACTUAL PROOF OF Nat.gcd_mul_right -/

example (m n k : Nat) : gcd (m * n) (k * n) = gcd m k * n := by
  rw [Nat.mul_comm m n, Nat.mul_comm k n, Nat.mul_comm (gcd m k) n, gcd_mul_left]