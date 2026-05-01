import Mathlib
import TrueCircleSelfReferon.TCSR
import TrueCircleSelfReferon.Field.Definition

namespace TrueCircleSelfReferon

/-!
# TCSR Parameters

Centralized parameter management for the True-Circle Self-Referon (TCSR)
quantum field theory. All physical parameters are derived from 
YuanXian Theory axioms.
-/

/--
Central parameter structure for TCSR theory.
All values are fixed by the YuanXian axioms (TCSC and FSC).
-/
structure TCSRParameters where
  /-- Bare mass of TCSR (derived from axioms) -/
  m_TCSR : ℝ := 6.3e10        -- Unit: GeV/c²

  /-- Self-referential four-fermion coupling constant -/
  g_SR : ℝ := 1.0

  /-- Energy-trace coupling constant (very small, from FSC axiom) -/
  λ_coupl : ℝ := 1.0e-10

  /-- Fine structure constant (for loop calculations) -/
  alpha : ℝ := 1 / 137.035999084

  /-- Cutoff scale for the effective theory -/
  cutoff_Lambda : ℝ := 6.3e10   -- Usually set to m_TCSR

/-- 
Default parameter set used in calculations.
This is the standard point used in the paper.
-/
def default_TCSR_params : TCSRParameters := {}

/-- 
Convenient accessors
-/
def m_TCSR   := default_TCSR_params.m_TCSR
def g_SR     := default_TCSR_params.g_SR
def λ_coupl  := default_TCSR_params.λ_coupl
def alpha    := default_TCSR_params.alpha
def Λ_SR     := default_TCSR_params.cutoff_Lambda

/-- 
Summary of physical scales
-/
def physical_scales_summary : String :=
  s!"TCSR Mass: {m_TCSR} GeV\n" ++
  s!"Self-referential coupling g_SR: {g_SR}\n" ++
  s!"Energy-trace coupling λ: {λ_coupl}\n" ++
  s!"Cutoff scale Λ: {Λ_SR} GeV"

end TrueCircleSelfReferon
