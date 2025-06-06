import Init.Data.List.Sublist
import Init.Data.List.Count

open List
open Nat
variable (p q : α → Bool)
variable {p q}
variable [BEq α]
variable [LawfulBEq α]

example [DecidableEq β] (l : List α) (f : α → β) (x : α) :
    count x l ≤ count (f x) (map f l) := by
  rw [count]
  rw [count]
  simp only [countP_map]
  apply countP_mono_left
  intro y
  apply imp_intro
  intro h
  have : y = x := by simpa using h
  rw [this]
  simp

/- ACTUAL PROOF OF List.count_le_count_map -/

example [DecidableEq β] (l : List α) (f : α → β) (x : α) :
    count x l ≤ count (f x) (map f l) := by
  rw [count, count, countP_map]
  apply countP_mono_left; simp (config := { contextual := true })