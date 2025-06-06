import Init.Data.List.Basic
import Init.Data.Char.Basic
import Init.Data.Option.Basic
import Init.Data.String.Basic

open String
open Pos


example (c : Char) : (0 : Pos) + c = ⟨c.utf8Size⟩ := by
  rw [← Pos.ext_iff]
  rw [Pos.add_eq_mk]
  rfl

/- ACTUAL PROOF OF String.Pos.zero_addChar_eq -/

example (c : Char) : (0 : Pos) + c = ⟨c.utf8Size⟩ := by
  rw [← zero_addChar_byteIdx]