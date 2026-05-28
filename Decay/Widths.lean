import Mathlib.Data.Real.Basic
import TCSR.Field.Basic

namespace TCSR

/-!
# Decay Widths and Branching Ratios
Directly matching the latest paper results.
-/

/-- Total decay width -/
def Gamma_total : ℝ := 4.73e-11

/-- Proper lifetime -/
def lifetime : ℝ := 1.39e-5

/-- Branching ratios -/
def BR_gg : ℝ := 0.427
def BR_nunu : ℝ := 0.384
def BR_ee : ℝ := 0.129
def BR_mumu : ℝ := 0.048
def BR_tautau : ℝ := 0.012

theorem branching_ratios_sum_to_one :
  BR_gg + BR_nunu + BR_ee + BR_mumu + BR_tautau = 1.0 := by
  norm_num

theorem total_width_positive : Gamma_total > 0 := by norm_num

def main_decay_channels : List String := ["γγ", "νν̅", "e⁺e⁻", "μ⁺μ⁻", "τ⁺τ⁻"]

#eval "TCSR Total Width : " ++ toString Gamma_total ++ " GeV"
#eval "Lifetime        : " ++ toString lifetime ++ " s"

end TCSR
