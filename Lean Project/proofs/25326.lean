import Init.BinderPredicates
import Init.Data.Bool

open Bool


example : ∀ (x : Bool), (x   != !x) = true := by
  intro x
  by_cases h : x = true
  . rw [h]
    simp
  . rw [eq_false_of_ne_true h]
    simp

/- ACTUAL PROOF OF Bool.bne_not_self -/

example : ∀ (x : Bool), (x   != !x) = true := by
  decide