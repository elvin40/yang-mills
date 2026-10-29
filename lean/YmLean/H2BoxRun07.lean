import YmLean.H2BoxTree

/-! Branch-and-bound run 07 of 16: roots 3402–3644 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run07 : checkRoots mkTab ((roots.drop 3402).take 243) = true := by native_decide

end YmLean.H2B
