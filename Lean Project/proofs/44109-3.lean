import Init.Data.Bool
import Init.Data.BitVec.Basic
import Init.Data.Fin.Lemmas
import Init.Data.Nat.Lemmas
import Init.Data.Nat.Mod
import Init.Data.Int.Bitwise.Lemmas
import Init.Data.BitVec.Lemmas

open BitVec


example (x : BitVec w) : x <<< 0 = x := by
  have h : (x <<< 0).toNat = x.toNat := by
    simp [shll, Nat.mod_eq_of_lt]
    exact Nat.mod_self _
  exact BitVec.ext h

/- ACTUAL PROOF OF BitVec.shiftLeft_zero_eq -/

example (x : BitVec w) : x <<< 0 = x := by
  apply eq_of_toNat_eq
  simp