import YmLean.H2BoxTree

/-! Branch-and-bound run 04 of 16: roots 1944–2429 (H2Box). Evaluated by `native_decide`. -/

namespace YmLean.H2B

theorem run04 : checkRoots mkTab ((roots.drop 1944).take 486) = true := by native_decide

end YmLean.H2B
