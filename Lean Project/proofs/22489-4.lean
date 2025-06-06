import Init.Data.BitVec.Folds
import Init.Data.Nat.Mod
import Init.Data.BitVec.Bitblast

open BitVec
open Nat Bool

example (x y : BitVec w) : x.ule y = carry w y (~~~x) true := by
  have h : y < x ↔ carry w y (~~~x) true = false := carry_lt
  rw [←not_iff_not] at h
  rw [h]
  rw [not_false_eq_true]

/- ACTUAL PROOF OF BitVec.ule_eq_carry -/

example (x y : BitVec w) : x.ule y = carry w y (~~~x) true := by
  simp [ule_eq_not_ult, ult_eq_not_carry]