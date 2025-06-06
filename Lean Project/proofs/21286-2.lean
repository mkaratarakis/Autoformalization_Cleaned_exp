import Init.Data.Array.Lemmas
import Init.Data.List.Impl

open List


example : @range' = @range'TR := by
  funext start len step
  induction len with
  | zero =>
    simp [range', range'TR]
  | succ len ih =>
    simp [range', range'TR]
    rw [ih]
    rfl

/- ACTUAL PROOF OF List.range'_eq_range'TR -/

example : @range' = @range'TR := by
  funext s n step
  let rec go (s) : ∀ n m,
    range'TR.go step n (s + step * n) (range' (s + step * n) m step) = range' s (n + m) step
  | 0, m => by simp [range'TR.go]
  | n+1, m => by
    simp [range'TR.go]
    rw [Nat.mul_succ, ← Nat.add_assoc, Nat.add_sub_cancel, Nat.add_right_comm n]
    exact go s n (m + 1)
  exact (go s n 0).symm