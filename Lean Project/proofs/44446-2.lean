import Init.Data.Int.Lemmas
import Init.ByCases
import Init.Data.Int.Order

open Int
open Nat

example (z : Int) : Int.sign (-z) = -Int.sign z := by
  by_cases hz : z = 0
  · simp only [hz, sign_zero, neg_zero]
  by_cases hp : 0 < z
  · have : -z < 0 := neg_pos.2 hp
    simp only [sign_neg, sign_of_pos hp, this]
  · have : z < 0 := lt_of_not_ge hp
    have : 0 < -z := neg_neg_of_neg_pos this
    simp only [sign_neg, sign_of_neg this, this]

/- ACTUAL PROOF OF Int.sign_neg -/

example (z : Int) : Int.sign (-z) = -Int.sign z := by
  match z with | 0 | succ _ | -[_+1] => rfl