import Init.Data.List.Lemmas
import Init.Data.List.TakeDrop

open List
open Nat

example {p : α → Bool} {a : α} {l : List α} (h : p a) :
    (a :: l).takeWhile p = a :: l.takeWhile p := by
  unfold takeWhile
  simp [h]
  rfl

/- ACTUAL PROOF OF List.takeWhile_cons_of_pos -/

example {p : α → Bool} {a : α} {l : List α} (h : p a) :
    (a :: l).takeWhile p = a :: l.takeWhile p := by
  simp [takeWhile_cons, h]