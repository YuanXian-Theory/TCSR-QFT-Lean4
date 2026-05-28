# TCSR-QFT-Lean4

**Lean 4 Formalization of the True-Circle Self-Referon (TCSR) Complete Quantum Field Theory**

This repository contains the machine-verified Lean 4 formalization corresponding to the paper:

> **True-Circle Self-Referon Complete Quantum Field Theory: First-Principles Construction, Formal Derivation and Experimental Predictions Based on YuanXian Theory**  
> *(Version 2.0, May 2026)*

### Version Information

- **Current Repository Version**: 2.0
- **Paper Version 1.0** (PDF, May 1, 2026):  
  [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.19942986.svg)](https://doi.org/10.5281/zenodo.19942986)

### Core Features

- Parameter-free formulation based on YuanXian Theory axioms (TCSC + FSC)
- Two characteristic non-gauge interactions: self-referential four-fermion interaction and energy-trace coupling
- Constrained canonical quantization and Feynman rules
- One-loop decay width calculations and branching ratios
- Quantum corrections to Higgs physics and cosmological implications
- Full formal verification in Lean 4

### Quick Start

```bash
# Clone the repository
git clone https://github.com/YuanXian-Theory/TCSR-QFT-Lean4.git
cd TCSR-QFT-Lean4/lean

# Build the project
lake exe cache get
lake build

### Repository Structure
lean/
├── TCSR.lean                    # Main definitions and parameters
├── Field/
│   └── Basic.lean               # Field definitions and properties
├── Lagrangian/
│   └── Interactions.lean        # Self-referential and energy-trace interactions
├── Quantization/
│   └── Canonical.lean           # Canonical quantization and propagators
├── Decay/
│   └── Widths.lean              # Decay widths and branching ratios
├── Renormalization/
│   └── Dimensional.lean         # Dimensional regularization and counterterms
├── Experimental/
│   └── HiggsCorrection.lean     # Higgs corrections and cosmological effects
└── Theorems/
    └── Main.lean                # Core physical theorems

### Citation
@software{acharya2026tcsr_v2,
  author       = {Zhenyuan Acharya (真圆阿奢黎)},
  title        = {TCSR-QFT-Lean4: Formalization of the True-Circle Self-Referon Quantum Field Theory},
  year         = 2026,
  version      = {2.0},
  publisher    = {GitHub},
  url          = {https://github.com/YuanXian-Theory/TCSR-QFT-Lean4}
}

For Version 1.0 of the paper, please refer to:
https://doi.org/10.5281/zenodo.19942986
Related Projects
•  YXT-Formalization
•  YXTT 2.0

All core theorems compile successfully in Lean 4.




