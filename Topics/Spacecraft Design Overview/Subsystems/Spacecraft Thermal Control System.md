# Thermal Control
The **Thermal Control** subsystem keeps spacecraft components within allowable temperature limits across all mission phases.

> [!abstract] **Core Functions**
> - **Reject** internally generated heat to space.  
> - **Maintain** components above minimum survival temps.  
> - **Protect** instruments and propulsion lines from freezing or overheating.

---

## Key Design Drivers
| Driver                   | Driven By                      | Impact                       |
|--------------------------|--------------------------------|------------------------------|
| **Power Dissipation**    | Electronics, payload loads     | Radiator sizing              |
| **External Environment** | Orbit geometry, solar flux     | Insulation, radiator location |
| **Thermal Stability**    | Sensitive payloads             | Material selection, design margins |
| **Heater Power**         | Eclipse & cold survival        | Battery capacity, bus voltage |

---

## Methods
1. **Passive**  
   - **Radiators**: Surfaces with high IR emissivity, potentially low solar absorption.  
   - **Multi-Layer Insulation (MLI)**: Minimizes heat loss or gain.  
   - **Surface Coatings**: Tailor solar absorptivity/emissivity.

2. **Active**  
   - **Heaters**: Maintain minimum temps, especially for propulsion lines or sensitive instruments.  
   - **Thermostatic or software control** to prevent overheating.  
   - **Heat Pipes or Loops**: Transport heat from source to radiator using phase change fluid.

> [!info] **Decontamination Heaters**
> - Warm optics or surfaces to drive off molecular contamination early in mission or after thruster firings.

---

## Balancing the System
- Adding radiator area helps cool hot conditions but increases heater demands in cold scenarios.
- High-stability structures (e.g., for instruments) may need precise thermal conditioning to avoid alignment drift.

---

## Testing & Verification
- **Thermal Vacuum (TVAC) tests** replicate on-orbit conditions.
- **Cycle tests** check survival extremes for components.

---

## Cross-Links
- See [[Spacecraft Power System]] for heater power budget.  
- See [[Spacecraft Structure and Mechanisms]] for conduction paths via structural members.

