import YmLean.H2BoxTree

/-! Branch-and-bound run 08 of 16: roots 3645–3673 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run08 : checkRoots mkTab ((roots.drop 3645).take 29) = true := by native_decide

end YmLean.H2B
