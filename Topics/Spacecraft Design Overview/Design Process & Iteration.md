# Design Process & Iteration

**Related:** [[Spacecraft Design Overview]]

## Overview 
The spacecraft design process is **highly iterative**. Each phase refines earlier assumptions and updates subsystem requirements.

## Phases of a Typical Mission

![Space systems life cycle phases diagram](Pasted%20image%2020241230154516.png)
*Figure: Space systems life cycle phases and their interactions. Source: Wilson & Vasile (2023)[^1]*

[^1]: Wilson, A. R., & Vasile, M. (2023). Life cycle engineering of space systems: Preliminary findings. Advances in Space Research. https://doi.org/10.1016/j.asr.2023.01.023 (Licensed under CC BY 4.0)

> [!warning] These phases are based from Florian Kehls's lecture and use ESA as a reference. NASA uses a different [set of phases](https://www.nasa.gov/reference/3-0-nasa-program-project-life-cycle/).

1. **Phase 0 (Mission Analysis / Needs Identification)**  
   - Define broad objectives.
   - Early feasibility checks.

2. **Phase A (Feasibility Study)**  
   - Rapid calculations and simulations (mass, power).
   - Down-selection of concepts.

3. **Phase B (Preliminary Definition)**  
   - More detailed system designs.
   - Subsystem-level trades and prototypes.

4. **Phase C (Detailed Definition & Production)**  
   - Hardware manufacturing starts.
   - Subsystem qualification testing.

5. **Phase D (Assembly, Integration & Test)**  
   - Final assembly of spacecraft.
   - Comprehensive environmental and functional testing.

6. **Phase E (Operations)**  
   - Launch and commissioning.
   - Main science or operational phase.

7. **Phase F (Disposal/Decommissioning)**  
   - De-orbit or safe disposal.
   - Final data analysis for mission close-out.

## Iteration in Practice
- Requirements are revisited as **trade studies** expose conflicts (e.g., heavier payload forcing bigger propulsion).
- **Design changes** can cascade: a small adjustment in power margins can alter thermal management, mass, etc.
- **Documentation** of all decisions is crucial for technical and contractual clarity.

## Concurrency & Collaboration
- Concurrent Design Facilities (CDF) gather experts from each subsystem to **simulate and iterate** rapidly.
- Active stakeholder communication can relax or tighten requirements based on feasibility.
