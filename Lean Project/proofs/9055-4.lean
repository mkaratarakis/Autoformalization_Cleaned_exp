import Init.Data.Fin.Lemmas
import Init.Data.List.Nat.TakeDrop
import Init.Data.List.Pairwise
import Init.Data.List.Nat.Pairwise

open List


example {l : List α} {is : List (Fin l.length)} (h : is.Pairwise (·.val < ·.val)) :
    is.map (get l) <+ l := by
  apply Sublist.map_sublist_of_pairwise
  · exact fun i => getElem l.length l i
  · intro x y _ _ hxy
    exact Fin.val_lt_val.2 hxy

/- ACTUAL PROOF OF List.map_get_sublist -/

example {l : List α} {is : List (Fin l.length)} (h : is.Pairwise (·.val < ·.val)) :
    is.map (get l) <+ l := by
  simpa using map_getElem_sublist h