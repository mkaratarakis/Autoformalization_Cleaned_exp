import Init.WF
import Init.WFTactics
import Init.Data.Nat.Basic
import Init.Data.Nat.Div

open Nat


example (x y : Nat) : x % y ≤ x := by
  cases h:x < y with
  | true =>
    simp
  | false =>
    cases h1:y = 0 with
    | true =>
      simp
    | false =>
      have h2 : x % y < y := Nat.mod_lt _ h1
      calc
        x % y < y := h2
        ... ≤ x := h

/- ACTUAL PROOF OF Nat.mod_le -/

example (x y : Nat) : x % y ≤ x := by
  match Nat.lt_or_ge x y with
  | Or.inl h₁ => rw [mod_eq_of_lt h₁]; apply Nat.le_refl
  | Or.inr h₁ => match eq_zero_or_pos y with
    | Or.inl h₂ => rw [h₂, Nat.mod_zero x]; apply Nat.le_refl
    | Or.inr h₂ => exact Nat.le_trans (Nat.le_of_lt (mod_lt _ h₂)) h₁