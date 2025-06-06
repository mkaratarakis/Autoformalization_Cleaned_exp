import Init.Data.List.TakeDrop
import Init.Data.List.Zip

open List
open Nat


example {l : List α} {l' : List β} {lp : List (α × β)} (hl : lp.map Prod.fst = l)
    (hr : lp.map Prod.snd = l') : lp = l.zip l' := by
  rw [← hl, ← hr, ← zip_unzip lp, ← unzip_fst, ← unzip_snd, zip_unzip, zip_unzip]