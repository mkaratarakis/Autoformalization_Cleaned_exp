import Init.SimpLemmas
import Init.Data.Nat.Basic

open Nat


example (n m k : Nat) : n * (m + k) = n * m + n * k := by
  induction n with
  | zero =>
    simp [Nat.zero_mul]
  | succ n ih =>
    simp [Nat.succ_mul]
    rw [ih]
    rw [Nat.add_assoc (n * k) m k, Nat.add_assoc (n * m) m (n * k), ←Nat.add_assoc (n * m) (n * k) m]
    rfl

/- ACTUAL PROOF OF Nat.left_distrib -/

example (n m k : Nat) : n * (m + k) = n * m + n * k := by
  induction n with
  | zero      => repeat rw [Nat.zero_mul]
  | succ n ih => simp [succ_mul, ih]; rw [Nat.add_assoc, Nat.add_assoc (n*m)]; apply congrArg; apply Nat.add_left_comm