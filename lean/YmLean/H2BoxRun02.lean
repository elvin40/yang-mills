import YmLean.H2BoxTree

/-! Branch-and-bound run 02 of 16: roots 972–1457 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run02 : checkRoots mkTab ((roots.drop 972).take 486) = true := by native_decide

end YmLean.H2B
