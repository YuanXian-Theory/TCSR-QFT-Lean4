import Mathlib
import TrueCircleSelfReferon.Field.Definition
import TrueCircleSelfReferon.Lagrangian.Kinetic
import TrueCircleSelfReferon.Lagrangian.SelfInteraction
import TrueCircleSelfReferon.Lagrangian.EnergyCoupling

namespace TrueCircleSelfReferon

/-!
# TCSR Main File

This is the main entry point for the True-Circle Self-Referon (TCSR) 
quantum field theory formalization in Lean 4.
-/

/-- The full Lagrangian for the TCSR field theory -/
def TCSR_full_action : Action :=
  TCSR_kinetic_term 
  + TCSR_self_interaction 
  + TCSR_energy_coupling 
  + TCSR_grav_minimal_coupling

/-- Minimal coupling to gravity (via the metric) -/
def TCSR_grav_minimal_coupling : LagrangianDensity := 
  -- In curved spacetime, the kinetic term is modified by √-g and vielbein, 
  -- but for now we keep it as a placeholder in flat space approximation.
  0

/-- Summary of all parameters used in the TCSR theory -/
structure TCSRParameters where
  m_TCSR : ℝ := 6.3e10
  g_SR : ℝ := 1.0
  λ_coupl : ℝ := 1.0e-10

def default_TCSR_params : TCSRParameters := {}

end TrueCircleSelfReferon
