import Init.Data.Bool
import Init.Data.BitVec.Basic
import Init.Data.Fin.Lemmas
import Init.Data.Nat.Lemmas
import Init.Data.Nat.Mod
import Init.Data.Int.Bitwise.Lemmas
import Init.Data.BitVec.Lemmas

open BitVec


example {w : Nat} (x : BitVec w) (n m : Nat) :
    x >>> (n + m) = (x >>> n) >>> m := by
  funext i
  simp [getLsb, ushr]
  rw [Nat.add_assoc]
  rw [Nat.add_comm (n + m) i]
  simp [Nat.add_assoc, Nat.add_comm]
  rfl

/- ACTUAL PROOF OF BitVec.shiftRight_add -/

example {w : Nat} (x : BitVec w) (n m : Nat) :
    x >>> (n + m) = (x >>> n) >>> m := by
  ext i
  simp [Nat.add_assoc n m i]