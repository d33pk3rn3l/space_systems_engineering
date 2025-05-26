# Structures and Mechanisms
The **Structures and Mechanisms** subsystem provides the mechanical framework supporting all spacecraft components and handles any moving parts (deployments).

> [!abstract] **Core Functions**
> - **Support** and protect subsystems against launch loads.  
> - **Provide** stable foundation for precise alignments.  
> - **Enable** deployable elements (solar arrays, antennas, booms).

---

## Key Design Drivers
| Driver                   | Driven By                | Impact                         |
|--------------------------|--------------------------|--------------------------------|
| **Launch Vehicle Loads** | G-forces, vibration      | Structural strength/stiffness  |
| **Stability**            | Precise pointing reqs    | Material selection (low CTE)   |
| **Deployable Mechanisms**| Solar arrays, antennas   | Latching, release actuation    |
| **Shock/Acoustic**       | Stage separation, pyro firings | Design for peak stress |

---

## Structural Loads
- **Axial & Lateral G’s** near stage burnout.  
- **Acoustic & Vibration** from launch environment.  
- **Shock** from stage separations or deployable releases.

> [!tip] **Load Isolation**
> - Some missions use isolation systems (springs/dampers) to filter high-frequency loads from the LV.

---

## Materials & Design
- **Honeycomb panels** with composite face-sheets for stiff, lightweight primary structures.
- **Carbon-fiber** or **graphite-epoxy** for low thermal expansion and high strength.
- **Aluminum alloys** remain common for secondary structures.

---

## Mechanisms
- **Deployments**: Hinged solar arrays, antenna booms.
  - Released by EEDs (explosive bolts) or non-explosive actuators.
  - Often includes springs to ensure positive deployment.
- **Motors & Gears**: Occasionally used for re-pointing arrays/antennas in flight.

> [!warning] **Gravity Offload Testing**
> - Ground testing a zero-g deployment can be challenging. Use jigs, offload rigs, or partial gravity simulations.

---

## Cross-Links
- See [[Spacecraft Thermal Control System]] regarding structural conduction paths for heat.
- See [[Spacecraft Propulsion System]] for thruster mounting and load alignment.

