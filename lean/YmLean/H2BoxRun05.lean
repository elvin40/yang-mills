import YmLean.H2BoxTree

/-! Branch-and-bound run 05 of 16: roots 2430–2915 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run05 : checkRoots mkTab ((roots.drop 2430).take 486) = true := by native_decide

end YmLean.H2B
