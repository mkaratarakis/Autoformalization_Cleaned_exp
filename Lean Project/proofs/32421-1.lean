import Init.Data.Nat.MinMax
import Init.Data.Nat.Log2
import Init.Data.Nat.Power2
import Init.Omega
import Init.Data.Nat.Lemmas

open Nat


example (h : i < n) : n - 1 - i < n := by
  rw [sub_sub, sub_lt_self_iff]
  exact Nat.sub_lt h (by simp)

/- ACTUAL PROOF OF Nat.sub_one_sub_lt -/

example (h : i < n) : n - 1 - i < n := by
  rw [Nat.sub_right_comm]; exact Nat.sub_one_lt_of_le (Nat.sub_pos_of_lt h) (Nat.sub_le ..)