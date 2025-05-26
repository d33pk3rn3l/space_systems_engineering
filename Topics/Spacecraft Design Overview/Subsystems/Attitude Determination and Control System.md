# Attitude Determination and Control (ADC)
The **Attitude Determination and Control (ADC)** subsystem—or **Attitude Control System (ACS)**—determines the spacecraft’s orientation and reorients it as needed. It ensures accurate pointing for payloads (e.g., cameras, antennas) while maintaining stability.

> [!abstract] **Core Functions**
> - **Determine** orientation via sensors (star trackers, sun sensors, IMUs).
> - **Control** orientation using actuators (reaction wheels, thrusters, magnetotorquers).
> - **Compute** necessary maneuvers in on-board software.
> - **Maintain** safe orientation under fault or safing conditions (e.g., sun-point for power).

---

## Key Design Drivers
| Driver                      | Driven By                          | Impact                          |
|----------------------------|------------------------------------|---------------------------------|
| **Pointing Accuracy**      | Payload requirements               | Sensor & actuator selection     |
| **Pointing Knowledge**     | Payload requirements               | Accuracy of star trackers, etc. |
| **Stability**              | Payload jitter requirements         | Structural stiffness, wheel balance |
| **Max Slew Rate**          | Operational needs                   | Actuator torque sizing          |
| **Time Between Momentum Unloads** | External torques & ops constraints | Reaction wheel capacity vs. thruster usage |

---

## Sensors
Common ADC **sensors** include:
- **Star Trackers**: High-accuracy attitude info; heavier and more complex.  
- **Coarse Sun Sensors**: Provide rough sun direction, critical for safing.  
- **Earth/Horizon Sensors**: Often used for Earth-pointing missions.  
- **Rate Gyros**: Detect rotational rates; can drift over time.

> [!tip] **On-board vs. Ground Knowledge**
> - On-board attitude knowledge is often less accurate than post-processed ground solutions.
> - Mission design might use ground-based orbit determination for certain payload tasks.

---

## Actuators
- **Reaction Wheels**: Precise, continuous control; can saturate under external torques.
- **Magnetotorquers**: Use planetary magnetic field; can unload wheel momentum in LEO.
- **Thrusters**: Provide high torque for maneuvers; consume propellant.

---

## Autonomy & Safing
- Coarse sensors (e.g., sun sensors) allow the spacecraft to “safe” itself by **finding the Sun** autonomously.
- Fault-tolerant software keeps spacecraft power-positive, pointing arrays at Sun if higher-level control fails.

---

## Practical Considerations
1. **Mass and Power**: Reaction wheels and star trackers can dominate mass & power budgets for ADC.
2. **Thermal**: Sensors and actuators may need stable temperatures; be mindful of heater placements.
3. **Mechanical**: Mounting sensor/actuator aligns with structural nodes that meet stiffness requirements.

---

## Cross-Links
- See [[Spacecraft Thermal Control System]] for sensor temperature requirements.
- See [[Propulsion]] for thruster-based unloading or momentum maneuvers.

