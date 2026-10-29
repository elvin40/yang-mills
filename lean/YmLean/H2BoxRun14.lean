import YmLean.H2BoxTree

/-! Branch-and-bound run 14 of 16: roots 3819–3847 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run14 : checkRoots mkTab ((roots.drop 3819).take 29) = true := by native_decide

end YmLean.H2B
