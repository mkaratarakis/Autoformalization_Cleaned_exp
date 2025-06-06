import Init.Data.Nat.MinMax
import Init.Data.Nat.Log2
import Init.Data.Nat.Power2
import Init.Omega
import Init.Data.Nat.Lemmas

open Nat


example : n * m ≠ 0 ↔ n ≠ 0 ∧ m ≠ 0 := by
  constructor
  · intro h
    apply And.intro
    · intro hn
      apply h
      rw [hn, zero_mul]
    · intro hm
      apply h
      rw [mul_zero hm]
  · rintro ⟨hn, hm⟩
    intro hnm
    cases hnm
    exact hn hnm
    exact hm hnm

/- ACTUAL PROOF OF Nat.mul_ne_zero_iff -/

example : n * m ≠ 0 ↔ n ≠ 0 ∧ m ≠ 0 := by
  rw [ne_eq, mul_eq_zero, not_or]