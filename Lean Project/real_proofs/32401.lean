import Init.Data.Nat.MinMax
import Init.Data.Nat.Log2
import Init.Data.Nat.Power2
import Init.Omega
import Init.Data.Nat.Lemmas

open Nat



example {a b c : Nat} : b < c - a → a + b < c := by
  rw [Nat.add_comm]; exact Nat.add_lt_of_lt_sub