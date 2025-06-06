import Mathlib.Data.Ordering.Basic
import Mathlib.Order.Synonym
import Mathlib.Order.Compare


variable {α β : Type*}
open Ordering OrderDual

example [LT α] {a b : α} {o : Ordering} :
    Compares o (toDual a) (toDual b) ↔ Compares o b a := by
  cases o
  · simp [Compares, toDual_lt_toDual]
  · exact Iff.rfl
  · simp [Compares, toDual_gt_toDual]

/- ACTUAL PROOF OF toDual_compares_toDual -/

example [LT α] {a b : α} {o : Ordering} :
    Compares o (toDual a) (toDual b) ↔ Compares o b a := by
  cases o
  exacts [Iff.rfl, eq_comm, Iff.rfl]