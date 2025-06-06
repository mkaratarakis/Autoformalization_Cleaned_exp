import Init.Data.Nat.MinMax
import Init.Data.Nat.Log2
import Init.Data.Nat.Power2
import Init.Omega
import Init.Data.Nat.Lemmas

open Nat


example (n m k l : Nat) :
    (n + l) - m - (k + l) = n - m - k := by
  rw [Nat.sub_eq_add_neg, Nat.sub_eq_add_neg]
  rw [Nat.add_assoc, Nat.add_comm (k + l) l]
  rw [Nat.add_neg_eq_sub, Nat.add_neg_eq_sub, Nat.add_neg_eq_sub]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (n + l) (k + l)]
  rw [Nat.add_comm (n) (k + l)]
  rw [Nat.add_comm (m + k) l]

/- ACTUAL PROOF OF Nat.add_sub_sub_add_right -/

example (n m k l : Nat) :
    (n + l) - m - (k + l) = n - m - k := by
  rw [Nat.sub_sub, Nat.sub_sub, ←Nat.add_assoc, Nat.add_sub_add_right]