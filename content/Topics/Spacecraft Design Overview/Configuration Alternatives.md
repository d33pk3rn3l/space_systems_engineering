# Configuration Alternatives

**Related:** [[Spacecraft Design Overview]]

Spacecraft can be arranged in countless ways depending on mission goals, payloads, and constraints.

> [!info] These are examples of configuration alternatives, not an exhaustive list.

## Attitude Control Configurations
- **Spin Stabilized**: Entire spacecraft rotates; simpler but limits instrument pointing.
- **Three-Axis Stabilized**: Uses reaction wheels or CMGs; allows precise control but is more complex.

## Solar Array Setups
1. **Fixed Panels**  
   - No moving parts → Reliability.
   - Less efficient if attitude changes reduce sun exposure.

2. **Sun-Tracking Arrays**  
   - Mechanisms (gimbals) orient arrays → Higher power output.
   - Increased mass, complexity, and potential failure points.

3. **Deployable Arrays**  
   - Fold during launch, unfold in orbit.
   - Saves volume in the fairing but adds mechanical complexity.

## Antenna Placements
- **High Gain vs. Low Gain**: High gain allows longer-distance comms but must be pointed accurately.
- Placement can affect center-of-gravity, aerodynamic fairing constraints (for large antennas).

## Payload Accommodation
- Instrument orientation, field of view, data/power demands.
- Clearance needed to avoid internal structures or solar panel blockage.
- Contamination control for sensitive optics or sensors.

---

**Trade-Offs**:
- Mass vs. reliability (redundancy adds mass).
- Complexity vs. cost (moving parts → cost).
- Flexibility vs. schedule (faster development might limit sophisticated features).
---