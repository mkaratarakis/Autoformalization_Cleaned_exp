import Mathlib.Analysis.Calculus.Conformal.NormedSpace
import Mathlib.Analysis.InnerProductSpace.ConformalLinearMap
import Mathlib.Analysis.Calculus.Conformal.InnerProduct


variable {E F : Type*}
variable [NormedAddCommGroup E] [NormedAddCommGroup F]
variable [InnerProductSpace ℝ E] [InnerProductSpace ℝ F]
variable [NormedAddCommGroup E] [NormedAddCommGroup F]
variable [InnerProductSpace ℝ E] [InnerProductSpace ℝ F]
variable [InnerProductSpace ℝ E] [InnerProductSpace ℝ F]
open RealInnerProductSpace

example {f : E → F} {x : E} : ConformalAt f x ↔
    ∃ c : ℝ, 0 < c ∧ ∀ u v : E, ⟪fderiv ℝ f x u, fderiv ℝ f x v⟫ = c * ⟪u, v⟫ := by
  rw [conformalAt_iff_isConformalMap_fderiv]
  rw [isConformalMap_iff]

/- ACTUAL PROOF OF conformalAt_iff' -/

example {f : E → F} {x : E} : ConformalAt f x ↔
    ∃ c : ℝ, 0 < c ∧ ∀ u v : E, ⟪fderiv ℝ f x u, fderiv ℝ f x v⟫ = c * ⟪u, v⟫ := by
  rw [conformalAt_iff_isConformalMap_fderiv, isConformalMap_iff]