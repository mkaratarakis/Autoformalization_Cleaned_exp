import Init.Data.Bool
import Init.Data.Nat.Basic
import Init.Data.Nat.Lemmas
import Init.Data.Nat.Simproc

open Nat
open Simproc


example {a b c d : Nat} (p : (a = b) = (c = d)) : (a != b) = (c != d) := by
  by_cases h : a = b
  · simp [h, p]
    exact p
  · simp [h, p]
    exact p

/- ACTUAL PROOF OF Nat.Simproc.bneEqOfEqEq -/

example {a b c d : Nat} (p : (a = b) = (c = d)) : (a != b) = (c != d) := by
  simp only [bne, beqEqOfEqEq p]