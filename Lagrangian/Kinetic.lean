import TrueCircleSelfReferon.TCSR
import TrueCircleSelfReferon.Field.Definition

namespace TrueCircleSelfReferon

/-!
# Kinetic Term

Standard Dirac kinetic term and mass term for the True-Circle Self-Referon (TCSR).
-/

/-- 
Dirac kinetic term + mass term for TCSR.

L_kinetic = i ψ̄ γ^μ ∂_μ ψ - m ψ̄ ψ
-/
def TCSR_kinetic_term : LagrangianDensity :=
  i * ψ̄_TCSR * γ^μ * ∂_μ ψ_TCSR - m_TCSR * ψ̄_TCSR * ψ_TCSR

/-- 
The mass term for TCSR, using the bare mass derived from YuanXian axioms.
-/
def TCSR_mass_term : LagrangianDensity :=
  - m_TCSR * ψ̄_TCSR * ψ_TCSR

theorem kinetic_term_hermitian :
    TCSR_kinetic_term† = TCSR_kinetic_term := by
  simp [TCSR_kinetic_term]
  -- Hermitian conjugation for Dirac kinetic term is standard
  sorry  -- TODO: complete with gamma matrix properties

end TrueCircleSelfReferon
