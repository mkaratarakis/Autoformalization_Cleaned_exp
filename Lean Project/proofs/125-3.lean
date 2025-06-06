import Init.Data.List.Pairwise
import Init.Data.List.Erase

open List
open Nat
variable [BEq α]

example [LawfulBEq α] {a b : α} (h : !b == a) :
    (replicate n a).erase b = replicate n a := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp [replicate, List.erase]
    rw [ih]
    apply List.erase_ne_of_ne_of_not_mem
    · exact h
    · apply not_mem_of_ne_of_not_mem
      · exact h
      · exact List.not_mem_replicate.2 ih

/- ACTUAL PROOF OF List.erase_replicate_ne -/

example [LawfulBEq α] {a b : α} (h : !b == a) :
    (replicate n a).erase b = replicate n a := by
  rw [erase_of_not_mem]
  simp_all