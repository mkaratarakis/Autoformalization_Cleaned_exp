import Init.Data.Bool
import Init.Data.Nat.Basic
import Init.Data.Nat.Lemmas
import Init.Data.Nat.Simproc

open Nat
open Simproc


example (a c : Nat) {b d : Nat} (h : b ≤ d) : a + b - (c + d) = a - (c + (d-b)) := by
  induction b with
  | zero =>
    simp
  | succ b' ih =>
    cases d with
    | zero =>
      exfalso
      apply Nat.not_succ_le_zero
      assumption
    | succ d' =>
      simp
      rw [Nat.succ_sub_succ, ih (Nat.le_of_succ_le_succ h)]
      rfl

/- ACTUAL PROOF OF Nat.Simproc.add_sub_add_le -/

example (a c : Nat) {b d : Nat} (h : b ≤ d) : a + b - (c + d) = a - (c + (d-b)) := by
  induction b generalizing a c d with
  | zero =>
    simp
  | succ b ind =>
    match d with
    | 0 =>
      contradiction
    | d + 1 =>
      have g := Nat.le_of_succ_le_succ h
      rw [Nat.add_succ a, Nat.add_succ c, Nat.succ_sub_succ, Nat.succ_sub_succ,
          ind _ _ g]