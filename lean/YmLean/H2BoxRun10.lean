import YmLean.H2BoxTree

/-! Branch-and-bound run 10 of 16: roots 3703–3731 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run10 : checkRoots mkTab ((roots.drop 3703).take 29) = true := by native_decide

end YmLean.H2B
