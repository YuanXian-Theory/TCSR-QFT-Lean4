import Mathlib

/-!
# TCSR Quantum Field Theory - Basic Entry Point

This file serves as the main entry point for the True-Circle Self-Referon (TCSR)
Quantum Field Theory formalization in Lean 4.

It re-exports all major modules for convenient usage.
-/

-- Import all core modules
import TrueCircleSelfReferon.Field.Definition
import TrueCircleSelfReferon.Lagrangian.Kinetic
import TrueCircleSelfReferon.Lagrangian.SelfInteraction
import TrueCircleSelfReferon.Lagrangian.EnergyCoupling
import TrueCircleSelfReferon.Utils.Parameters
import TrueCircleSelfReferon.Theorems.CoreProperties
import TrueCircleSelfReferon.Decay.Widths
import TrueCircleSelfReferon.TCSR

namespace TrueCircleSelfReferon

/-!
## Main Definitions
-/

/-- The complete Lagrangian of the TCSR theory -/
def full_lagrangian := TCSR_full_action

/-- Default parameters used in the paper -/
def params := default_TCSR_params

/-- Total decay width of TCSR -/
def Γ_TCSR := total_decay_width

/-- Proper lifetime of TCSR -/
def τ_TCSR := proper_lifetime

/-- Branching ratios of main decay channels -/
def BR := branching_ratios

#check full_lagrangian
#check Γ_TCSR
#check τ_TCSR
#check BR

end TrueCircleSelfReferon
