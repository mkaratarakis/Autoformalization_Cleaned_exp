import Init.WF
import Init.WFTactics
import Init.Data.Nat.Basic
import Init.Data.Nat.Div

open Nat


example (m : Nat) {n : Nat} (H : 0 < n) : m * n / n = m := by
  rw [← zero_add (m * n)]
  rw [add_mul_div_right H]
  rw [zero_div H]
  rw [zero_add]

/- ACTUAL PROOF OF Nat.mul_div_cancel -/

example (m : Nat) {n : Nat} (H : 0 < n) : m * n / n = m := by
  let t := add_mul_div_right 0 m H
  rwa [Nat.zero_add, Nat.zero_div, Nat.zero_add] at t