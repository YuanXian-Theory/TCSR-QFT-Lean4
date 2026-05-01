import TrueCircleSelfReferon.TCSR

namespace TrueCircleSelfReferon

def TCSR_self_interaction : LagrangianDensity :=
  let Λ := m_TCSR
  (g_SR / Λ^2) * (ψ̄ γ^μ ψ) * (ψ̄ γ_μ ψ)

end TrueCircleSelfReferon
