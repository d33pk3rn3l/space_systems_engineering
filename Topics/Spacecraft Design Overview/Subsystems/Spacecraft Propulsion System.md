# Propulsion
The **Propulsion subsystem** supplies thrust for orbital changes, station-keeping, momentum dumps, and de-orbit or extended maneuvers.

> [!abstract] **Core Functions**
> - **Generate** required ΔV for mission orbit changes.
> - **Support** attitude control / momentum management if needed.
> - **Ensure** safe storage and reliable flow of propellant.

---

## Key Design Drivers
| Driver          | Driven By                | Impact                      |
|-----------------|--------------------------|-----------------------------|
| **ΔV**          | Mission trajectory       | Propellant mass, tank size  |
| **Dry Mass**    | Overall s/c mass        | Tank & structure design     |
| **Thrust Level**| Maneuver timeline, ACS  | Thruster sizing             |
| **Propellant Type** | Performance & handling | Tank pressurization, thermal control |

---

## Propulsion Elements
1. **Propellant Tanks**  
   - Must be structurally integrated.  
   - Thermal constraints: e.g., hydrazine near 0°C freezing point.  

2. **Thrusters**  
   - For main maneuvers or reaction control.  
   - Arranged to provide torque about spacecraft axes.

3. **Valves & Feed Lines**  
   - Multiple valves for two-fault tolerance to hazards.  
   - Heat trace or insulation to keep propellant within temp limits.

> [!info] **Common Propellants**
> - **Hydrazine (N2H4)**: Widely used for monoprop.  
> - **Biprop (NTO/MMH)**: Higher performance, more complex.  
> - **Electric (Ion, Hall)**: High Isp, lower thrust, extended burn times.

---

## Interfaces
- **Attitude Control**: Thruster-based momentum unloading.  
- **Thermal Control**: Propellant freeze-point management.  
- **Structures**: Tank placement & thrust alignment loads.

---

## Operations & Safety
- Handling and integration with toxic or cryogenic propellants require specialized procedures.
- Must maintain pressure & temperature, avoid leaks/explosions.

---

## Cross-Links
- See [[Attitude Determination and Control System]] on thruster usage for attitude maneuvers.
- See [[Spacecraft Structure and Mechanisms]] for mounting of tanks and thrust-load paths.

