import Mathlib.Logic.Function.Defs
import Batteries.Tactic.Init
import Mathlib.Data.Option.NAry

open Option
open Function
variable {α β γ δ : Type*} {f : α → β → γ} {a : Option α} {b : Option β} {c : Option γ}

example {c : γ} : c ∈ map₂ f a b ↔ ∃ a' b', a' ∈ a ∧ b' ∈ b ∧ f a' b' = c := by
  constructor
  · intro h
    rcases a with (⟨a'⟩ | none)
    · rcases b with (⟨b'⟩ | none)
      · exact ⟨a', b', rfl, rfl, rfl⟩
      · exfalso
        exact h
    · exfalso
      exact h
  · rintro ⟨a', b', ha', hb', rfl⟩
    rcases ha' with (rfl | h)
    · rcases hb' with (rfl | h)
      · exact mem_some.mpr rfl
      · contradiction
    · contradiction

/- ACTUAL PROOF OF Option.mem_map₂_iff -/

example {c : γ} : c ∈ map₂ f a b ↔ ∃ a' b', a' ∈ a ∧ b' ∈ b ∧ f a' b' = c := by
  simp [map₂, bind_eq_some]