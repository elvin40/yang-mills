import YmLean.H2BoxTree

/-! Branch-and-bound run 03 of 16: roots 1458–1943 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run03 : checkRoots mkTab ((roots.drop 1458).take 486) = true := by native_decide

end YmLean.H2B
