import Init.Data.List.Lemmas
import Init.Data.List.TakeDrop

open List
open Nat

example (f : α → Option β) (p : β → Bool) (l : List α) :
    (l.filterMap f).takeWhile p = (l.takeWhile fun a => (f a).all p).filterMap f := by
  induction l with
  | nil =>
    rfl
  | cons x xs ih =>
    match f x with
    | none =>
      simp [filterMap, takeWhile]
      rw [ih]
    | some b =>
      simp [filterMap, takeWhile]
      by_cases hp : p b
      · rw [ih]
        simp [hp]
      · rw [ih]
        simp [hp]

/- ACTUAL PROOF OF List.takeWhile_filterMap -/

example (f : α → Option β) (p : β → Bool) (l : List α) :
    (l.filterMap f).takeWhile p = (l.takeWhile fun a => (f a).all p).filterMap f := by
  induction l with
  | nil => rfl
  | cons x xs ih =>
    simp only [filterMap_cons]
    split <;> rename_i h
    · simp only [takeWhile_cons, h]
      split <;> simp_all
    · simp [takeWhile_cons, h, ih]
      split <;> simp_all [filterMap_cons]