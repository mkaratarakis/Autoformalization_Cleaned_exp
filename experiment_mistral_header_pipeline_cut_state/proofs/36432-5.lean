import Mathlib.Combinatorics.Quiver.Basic
import Mathlib.Combinatorics.Quiver.Push

open Quiver
open Push
variable {V : Type*} [Quiver V] {W : Type*} (σ : V → W)
variable {W' : Type*} [Quiver W'] (φ : V ⥤q W') (τ : W → W') (h : ∀ x, φ.obj x = τ (σ x))

example (Φ : Push σ ⥤q W') (Φ₀ : Φ.obj = τ) (Φcomp : (of σ ⋙q Φ) = φ) :
    Φ = lift σ φ τ h := by
  apply Prefunctor.ext
  · exact Φ₀
  · rintro X Y (f : PushQuiver σ X Y)
    simp only [Φcomp, Prefunctor.comp_map, lift_comp]
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr_arg
    apply congr

/- ACTUAL PROOF OF Quiver.Push.lift_unique -/

example (Φ : Push σ ⥤q W') (Φ₀ : Φ.obj = τ) (Φcomp : (of σ ⋙q Φ) = φ) :
    Φ = lift σ φ τ h := by
  dsimp only [of, lift]
  fapply Prefunctor.ext
  · intro X
    simp only
    rw [Φ₀]
  · rintro _ _ ⟨⟩
    subst_vars
    simp only [Prefunctor.comp_map, cast_eq]
    rfl