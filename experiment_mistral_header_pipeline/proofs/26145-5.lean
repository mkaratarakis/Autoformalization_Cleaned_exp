import Mathlib.Topology.PartialHomeomorph
import Mathlib.Topology.SeparatedMap
import Mathlib.Topology.IsLocalHomeomorph

open IsLocalHomeomorphOn
open Topology
variable {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y] [TopologicalSpace Z] (g : Y → Z)
  (f : X → Y) (s : Set X) (t : Set Y)

example (h : ∀ x ∈ s, ∃ e : PartialHomeomorph X Y, x ∈ e.source ∧ Set.EqOn f e e.source) :
    IsLocalHomeomorphOn f s := by
  intro x hx
  obtain ⟨e, hxe, he⟩ := h x hx
  let e' := PartialHomeomorph.ofSet (e.source ∩ he.source) (IsOpen.inter e.open_source (IsOpen.preimage f e.open_target))
  use e'
  constructor
  · exact hxe
  · ext x'
    by_cases hx' : x' ∈ e'.source
    · simp [hx', e'.mapsTo, he]
    · simp [hx']

/- ACTUAL PROOF OF IsLocalHomeomorphOn.mk -/

example (h : ∀ x ∈ s, ∃ e : PartialHomeomorph X Y, x ∈ e.source ∧ Set.EqOn f e e.source) :
    IsLocalHomeomorphOn f s := by
  intro x hx
  obtain ⟨e, hx, he⟩ := h x hx
  exact
    ⟨{ e with
        toFun := f
        map_source' := fun _x hx ↦ by rw [he hx]; exact e.map_source' hx
        left_inv' := fun _x hx ↦ by rw [he hx]; exact e.left_inv' hx
        right_inv' := fun _y hy ↦ by rw [he (e.map_target' hy)]; exact e.right_inv' hy
        continuousOn_toFun := (continuousOn_congr he).mpr e.continuousOn_toFun },
      hx, rfl⟩