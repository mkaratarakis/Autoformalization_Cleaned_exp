import Init.Data.List.TakeDrop
import Init.Data.List.Sublist

open List
open Sublist
open Nat
variable [BEq α]
variable [BEq α]

example (p : α → Bool) {l₁ l₂} (s : l₁ <+ l₂) : filter p l₁ <+ filter p l₂ := by
  rw [← filterMap_eq_filter p l₁, ← filterMap_eq_filter p l₂]
  exact filterMap_subset _ s

/- ACTUAL PROOF OF List.Sublist.filter -/

example (p : α → Bool) {l₁ l₂} (s : l₁ <+ l₂) : filter p l₁ <+ filter p l₂ := by
  rw [← filterMap_eq_filter]; apply s.filterMap