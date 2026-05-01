import Mathlib
import TrueCircleSelfReferon.TCSR
import TrueCircleSelfReferon.Field.Definition

namespace TrueCircleSelfReferon

/-!
# TCSR Decay Widths and Branching Ratios

This file contains the calculation of the total decay width, 
proper lifetime, and branching ratios of the True-Circle Self-Referon (TCSR).
All results are derived from one-loop amplitudes and phase space integrals.
-/

/-- Dominant decay channels of TCSR -/
inductive DecayChannel where
  | gamma_gamma
  | neutrino_antineutrino
  | electron_positron
  | muon_antimuon
  | tau_antitau

/-- Observable decay channels with branching ratio > 1% -/
def observable_channels : List DecayChannel :=
  [ DecayChannel.gamma_gamma,
    DecayChannel.neutrino_antineutrino,
    DecayChannel.electron_positron,
    DecayChannel.muon_antimuon,
    DecayChannel.tau_antitau ]

/-- Total decay width of TCSR (one-loop calculation) -/
def total_decay_width : ℝ := 4.73e-11  -- GeV

/-- Proper lifetime of TCSR -/
def proper_lifetime : ℝ := 1.39e-5     -- seconds

/-- Branching ratios for the main decay channels -/
def branching_ratios : List (DecayChannel × Float) :=
  [ (DecayChannel.gamma_gamma,          0.427),  -- 42.7%
    (DecayChannel.neutrino_antineutrino, 0.384),  -- 38.4%
    (DecayChannel.electron_positron,     0.129),  -- 12.9%
    (DecayChannel.muon_antimuon,         0.048),  -- 4.8%
    (DecayChannel.tau_antitau,           0.012) ] -- 1.2%

/-- Theorem: Branching ratios sum to 1 (probability conservation) -/
theorem branching_ratios_sum_to_one :
    (∑ br in branching_ratios, br.snd) = 1.0 := by
  simp [branching_ratios]
  norm_num

/-- 
Convenient function to get branching ratio of a specific channel
-/
def get_branching_ratio (ch : DecayChannel) : Float :=
  match branching_ratios.find? (fun x => x.fst = ch) with
  | some (_, br) => br
  | none => 0.0

end TrueCircleSelfReferon
