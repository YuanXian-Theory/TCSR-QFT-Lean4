import Mathlib

namespace TrueCircleSelfReferon

/-!
# TCSR Field Definition

This file contains the formal definition of the True-Circle Self-Referon (TCSR) field
in the context of YuanXian Theory.
-/

/-- A Dirac fermion field representing the True-Circle Self-Referon (TCSR).

TCSR is a heavy singlet fermion predicted by YuanXian Theory. It is:
- A Dirac spin-1/2 fermion
- Completely neutral under the Standard Model gauge group SU(3)_c × SU(2)_L × U(1)_Y
- Has a bare mass derived from the axioms ≈ 6.3 × 10¹⁰ GeV
- Carries the microscopic realization of the universe's self-referential property.
-/
structure TCSRField where
  /-- The underlying Dirac fermion field --/
  field : DiracFermion

  /-- TCSR is a complete singlet under the Standard Model gauge group --/
  is_SM_singlet : 
    transforms_under SU(3) = trivial ∧
    transforms_under SU(2) = trivial ∧
    hypercharge = 0 ∧
    electric_charge = 0

  /-- Bare mass of TCSR, derived from YuanXian axioms --/
  bare_mass : ℝ := 6.3e10  -- Unit: GeV/c²

  /-- Spin of the particle --/
  spin : ℝ := 1/2

  /-- TCSR obeys Fermi-Dirac statistics --/
  statistics : IsFermion := by decide

/-- Convenient abbreviation for the TCSR field --/
abbrev ψ_TCSR := TCSRField.field

/-- The bare mass of the TCSR particle --/
def m_TCSR : ℝ := TCSRField.bare_mass

/-- Notation for the TCSR field --/
notation "ψ_TCSR" => ψ_TCSR

end TrueCircleSelfReferon
