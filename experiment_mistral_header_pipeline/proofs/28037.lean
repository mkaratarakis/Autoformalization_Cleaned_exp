import Mathlib.Tactic.Lemma
import Mathlib.Tactic.TypeStar
import Mathlib.Data.Option.Defs

open Option
variable {α : Type*} {β : Type*}

example {α β : Type*} (b : β) (f : α → β) (a : Option α) :
    Option.elim' b f a = Option.elim a b f := by
  cases a
  · rw [Option.elim'_none, Option.elim_none]
  · rw [Option.elim'_some, Option.elim_some]

/- ACTUAL PROOF OF Option.elim'_eq_elim -/

example {α β : Type*} (b : β) (f : α → β) (a : Option α) :
    Option.elim' b f a = Option.elim a b f := by
  cases a <;> rfl