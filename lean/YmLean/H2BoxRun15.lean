import YmLean.H2BoxTree

/-! Branch-and-bound run 15 of 16: roots 3848–end (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run15 : checkRoots mkTab (roots.drop 3848) = true := by native_decide

end YmLean.H2B
