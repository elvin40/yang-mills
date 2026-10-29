import YmLean.H2BoxTree

/-! Branch-and-bound run 11 of 16: roots 3732–3760 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run11 : checkRoots mkTab ((roots.drop 3732).take 29) = true := by native_decide

end YmLean.H2B
