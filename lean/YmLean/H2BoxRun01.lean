import YmLean.H2BoxTree

/-! Branch-and-bound run 01 of 16: roots 486–971 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run01 : checkRoots mkTab ((roots.drop 486).take 486) = true := by native_decide

end YmLean.H2B
