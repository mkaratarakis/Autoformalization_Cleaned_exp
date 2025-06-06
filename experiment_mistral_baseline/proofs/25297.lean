import Init.BinderPredicates
import Init.Data.Bool

open Bool


example : ∀ (x y : Bool), (x && y) = (y && x) := by
  intros x y
  cases x <;> cases y <;> rfl

/- ACTUAL PROOF OF Bool.and_comm -/

example : ∀ (x y : Bool), (x && y) = (y && x) := by
  decide