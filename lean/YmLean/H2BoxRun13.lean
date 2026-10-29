import YmLean.H2BoxTree

/-! Branch-and-bound run 13 of 16: roots 3790–3818 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run13 : checkRoots mkTab ((roots.drop 3790).take 29) = true := by native_decide

end YmLean.H2B
