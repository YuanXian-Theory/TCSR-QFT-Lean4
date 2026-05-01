import Mathlib

namespace TrueCircleSelfReferon

structure TCSRField where
  field : DiracFermion
  is_singlet : transforms_under SU(3) = trivial
             ∧ transforms_under SU(2) = trivial
             ∧ hypercharge = 0
             ∧ electric_charge = 0
  bare_mass : ℝ := 6.3e10
  spin : ℝ := 1/2

def m_TCSR : ℝ := 6.3e10
def g_SR : ℝ := 1.0
def λ_coupl : ℝ := 1.0e-10

def TCSR_full_action : Action :=
  kinetic_term + self_interaction + energy_coupling + minimal_grav_coupling

end TrueCircleSelfReferon
