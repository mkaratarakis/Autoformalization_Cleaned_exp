import Init.Data.List.TakeDrop
import Init.Data.List.Zip

open List
open Nat

example : (zipWith f l l').drop n = zipWith f (l.drop n) (l'.drop n) := by
  induction l generalizing n l'
  · simp
  · cases l'
    · simp
    · cases n
      · simp
      · simp [drop, zipWith, Nat.succ_eq_add_one]
        exact drop_zipWith_succ _ _ _ _ _ _ _ _ (tail_ih (drop n (zipWith f tail✝¹ tail✝)) (zipWith f (drop n tail✝¹) (drop n tail✝)))

/- ACTUAL PROOF OF List.drop_zipWith -/

example : (zipWith f l l').drop n = zipWith f (l.drop n) (l'.drop n) := by
  induction l generalizing l' n with
  | nil => simp
  | cons hd tl hl =>
    · cases l'
      · simp
      · cases n
        · simp
        · simp [hl]