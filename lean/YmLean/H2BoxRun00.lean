import YmLean.H2BoxTree

/-! Branch-and-bound run 00 of 16: roots 0–485 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run00 : checkRoots mkTab ((roots.drop 0).take 486) = true := by native_decide

end YmLean.H2B
