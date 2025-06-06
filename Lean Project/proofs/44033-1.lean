import Init.Data.Bool
import Init.Data.BitVec.Basic
import Init.Data.Fin.Lemmas
import Init.Data.Nat.Lemmas
import Init.Data.Nat.Mod
import Init.Data.Int.Bitwise.Lemmas
import Init.Data.BitVec.Lemmas

open BitVec


example (x : BitVec 0) : x.msb = false := by
simp [msb]

/- ACTUAL PROOF OF BitVec.msb_zero_length -/

example (x : BitVec 0) : x.msb = false := by
  simp [BitVec.msb, of_length_zero]