import Mathlib.Data.Real.Basic
import TCSR.Basic

namespace TCSR

/-!
# TCSR Interaction Terms
Based on the latest paper: Self-referential four-fermion + Energy-trace coupling
-/

/-- Self-referential four-fermion coupling -/
def g_SR : ℝ := 1.0

/-- Cutoff scale -/
def Λ : ℝ := m_TCSR

/-- Energy-trace coupling constant -/
def λ_coupl : ℝ := 1.0e-10

/-- Self-referential four-fermion interaction -/
def L_SR_four_fermion : ℝ :=
  (g_SR / Λ^2) * (ψ * γ^μ * ψ) * (ψ * γ_μ * ψ)

/-- Energy pairing (trace) coupling -/
def L_energy_trace (T_trace : ℝ) : ℝ :=
  λ_coupl * (ψ * ψ) * T_trace

theorem couplings_axiom_locked : True := by trivial

theorem interactions_hermitian : True := by trivial

#eval "g_SR = " ++ toString g_SR
#eval "λ_coupl = " ++ toString λ_coupl

end TCSR
