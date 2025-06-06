import Init.BinderPredicates
import Init.Data.Bool

open Bool


example : ∀(a b : Bool), (a = false ↔ b = false) ↔ (!a) = (!b) := by
  intros a b
  cases a <;> cases b
  · constructor
    · intro h
      rfl
    · intro h
      rfl
  · constructor
    · intro h
      exact (not_false_eq_true !false).symm
    · intro h
      exact (not_false_eq_true !false)
  · constructor
    · intro h
      exact (not_false_eq_true !true)
    · intro h
      exact (not_false_eq_true !true).symm
  · constructor
    · intro h
      rfl
    · intro h
      rfl

/- ACTUAL PROOF OF Bool.coe_false_iff_false -/

example : ∀(a b : Bool), (a = false ↔ b = false) ↔ (!a) = (!b) := by
  decide