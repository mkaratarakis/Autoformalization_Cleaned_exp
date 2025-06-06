import Init.Data.Bool
import Init.Data.BitVec.Basic
import Init.Data.Fin.Lemmas
import Init.Data.Nat.Lemmas
import Init.Data.Nat.Mod
import Init.Data.Int.Bitwise.Lemmas
import Init.Data.BitVec.Lemmas

open BitVec


example : -1#w = allOnes w := by
  apply BitVec.ext
  funext i
  simp
  rw [BitVec.ofInt_neg, BitVec.ofInt_one, BitVec.one_toNat, Nat.sub_zero]
  rw [BitVec.allOnes_toNat]
  simp
  rw [Nat.mod_eq_of_lt]
  apply Nat.lt_pow_succ_of_pos
  rw [Nat.one_pos]

/- ACTUAL PROOF OF BitVec.negOne_eq_allOnes -/

example : -1#w = allOnes w := by
  apply eq_of_toNat_eq
  if g : w = 0 then
    simp [g]
  else
    have q : 1 < 2^w := by simp [g]
    have r : (2^w - 1) < 2^w := by omega
    simp [Nat.mod_eq_of_lt q, Nat.mod_eq_of_lt r]