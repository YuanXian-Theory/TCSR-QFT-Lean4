import Lake
open Lake DSL

package TCSR_QFT {
  leanOptions := #[
    ⟨`pp.funBinderTypes, true⟩,
    ⟨`autoImplicit, false⟩,
    ⟨`pp.structureInstances, false⟩
  ]
}

require mathlib from git "https://github.com/leanprover-community/mathlib4" @ "master"
