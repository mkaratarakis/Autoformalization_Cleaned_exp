import Init.Data.Nat.Linear
import Init.Data.List.BasicAux
import Init.Data.Nat.SOM

open Nat
open SOM
open Poly
open Linear (Var hugeFuel Context Var.denote)

example (ctx : Context) (k : Nat) (m : Mon) (p : Poly) : (p.insertSorted k m).denote ctx = p.denote ctx + k * m.denote ctx := by
  induction p with
  | nil =>
    simp [insertSorted, denote]
  | cons pHead pTail ih =>
    by_cases h : m < pHead.snd
    · simp [insertSorted, denote, h]
      rw [ih]
      ring
    · simp [insertSorted, denote, h]
      rw [ih]
      ring

/- ACTUAL PROOF OF Nat.SOM.Poly.denote_insertSorted -/

example (ctx : Context) (k : Nat) (m : Mon) (p : Poly) : (p.insertSorted k m).denote ctx = p.denote ctx + k * m.denote ctx := by
  match p with
  | [] => simp!
  | (k', m') :: p =>
    by_cases h : m < m' <;> simp! [h, denote_insertSorted ctx k m p, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]