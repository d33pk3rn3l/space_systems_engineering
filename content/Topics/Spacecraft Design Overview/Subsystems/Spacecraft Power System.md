# Power
The **Power subsystem** generates, stores, and distributes electrical power to all spacecraft subsystems and payloads.

> [!abstract] **Core Functions**
> - **Generate** power (e.g., solar array, RTG).  
> - **Store** energy in batteries for eclipse/night.  
> - **Regulate** and distribute power to loads.

---

## Key Design Drivers
| Driver                   | Driven By                | Impact                      |
|--------------------------|--------------------------|-----------------------------|
| **Peak & Average Power** | Payload, ACS, TT&C loads | Array sizing, battery capacity |
| **Bus Voltage**          | Spacecraft design        | Harness size, distribution losses |
| **Duty Cycle**           | Operational constraints  | Battery cycles, array design  |
| **Eclipse Duration**     | Orbit geometry           | Battery capacity, depth-of-discharge |

---

## Major Elements
1. **Solar Arrays**  
   - Photovoltaic cells (multi-junction).  
   - Often require a mechanical deployment mechanism.

2. **Batteries**  
   - Typically **Lithium-Ion**; must manage charge/discharge to avoid overheat or explosion.  
   - Provide power during eclipses or high-load surges.

3. **Power Electronics**  
   - Control battery charge.  
   - DC/DC converters & distribution.  
   - Protective circuits (over-current, under-voltage protections).

> [!info] **Bus Voltages**
> - ~28 V is standard for many satellites.  
> - Higher voltages (50-160 V) sometimes used for large power demand (reduces harness mass).

---

## Thermal & Safety
- Excess heat from power distribution requires **thermal design** (heatsinks, conduction paths).
- Batteries are high-energy devices requiring **fault protection** (fuses, circuit-breaker function) and careful **charging profiles**.

---

## Cross-Links
- See [[Spacecraft Thermal Control System]] on radiator sizing for power dissipation.
- See [[Spacecraft Structure and Mechanisms]] for solar array deployment structures.

