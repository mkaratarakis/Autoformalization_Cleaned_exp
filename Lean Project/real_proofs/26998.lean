import Init.Data.List.TakeDrop
import Init.Data.List.Zip

open List
open Nat


example {l : List α} (f : α → β) :
    (l.map fun x => (f x, x)) = (l.map f).zip l := by
  rw [← zip_map']
  congr
  exact map_id _