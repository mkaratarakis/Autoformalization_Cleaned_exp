import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs
import Mathlib.Algebra.Polynomial.Expand
import Mathlib.RingTheory.Polynomial.Tower
import Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic

open IsIntegral
open Polynomial Submodule
variable {R S A : Type*}
variable [CommRing R] [Ring A] [Ring S] (f : R →+* S)
variable [Algebra R A]
variable [CommRing R] [Ring A] [Ring S] (f : R →+* S)
variable [Algebra R A]
variable [Algebra R A]
variable {R A B S : Type*}
variable [CommRing R] [CommRing A] [Ring B] [CommRing S]
variable [Algebra R A] (f : R →+* S)
variable [CommRing R] [CommRing A] [Ring B] [CommRing S]
variable [Algebra R A] (f : R →+* S)
variable [Algebra R A] (f : R →+* S)

example {B C F : Type*} [Ring B] [Ring C] [Algebra R B] [Algebra A B] [Algebra R C]
    [IsScalarTower R A B] [Algebra A C] [IsScalarTower R A C] {b : B}
    [FunLike F B C] [AlgHomClass F A B C] (f : F)
    (hb : IsIntegral R b) : IsIntegral R (f b) := by
  obtain ⟨p, hp_monic, hp_root⟩ := hb
  use p
  constructor
  · exact hp_monic
  · calc
      aeval (f b) p = aeval (f b) (map (algebraMap R A) p) :=
        (aeval_map_algebraMap _ _ _).symm
      _ = f (aeval b p) := by rw [aeval_algebraMap_apply, AlgHomClass.coe_toFun_eq_coe, map_aeval]
      _ = f 0 := by rw [hp_root]
      _ = 0 := map_zero _

/- ACTUAL PROOF OF IsIntegral.map -/

example {B C F : Type*} [Ring B] [Ring C] [Algebra R B] [Algebra A B] [Algebra R C]
    [IsScalarTower R A B] [Algebra A C] [IsScalarTower R A C] {b : B}
    [FunLike F B C] [AlgHomClass F A B C] (f : F)
    (hb : IsIntegral R b) : IsIntegral R (f b) := by
  obtain ⟨P, hP⟩ := hb
  refine ⟨P, hP.1, ?_⟩
  rw [← aeval_def, ← aeval_map_algebraMap A,
    aeval_algHom_apply, aeval_map_algebraMap, aeval_def, hP.2, _root_.map_zero]