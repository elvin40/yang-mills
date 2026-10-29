import YmLean.H2BoxTree

/-! Branch-and-bound run 09 of 16: roots 3674–3702 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run09 : checkRoots mkTab ((roots.drop 3674).take 29) = true := by native_decide

end YmLean.H2B
