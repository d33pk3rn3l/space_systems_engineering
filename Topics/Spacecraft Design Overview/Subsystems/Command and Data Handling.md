# Command and Data Handling (C&DH)
The **C&DH subsystem** executes spacecraft commands, collects and stores telemetry, and interfaces with payload data.

> [!abstract] **Core Functions**
> - **Receive** ground commands via TT&C.
> - **Store** and **forward** telemetry, mission data.
> - **Host** flight software (FSW) and critical control loops.

---

## Key Design Drivers
| Driver                | Driven By               | Impact                     |
|-----------------------|-------------------------|----------------------------|
| **Processing Speed**  | Autonomy & data rates  | CPU selection, memory bus  |
| **Memory Size**       | Data storage needs     | Non-volatile + RAM capacity|
| **Bus Architecture**  | Payload I/O requirements | Interfaces (1553, SpaceWire, custom) |
| **Reliability**       | Mission critical ops    | Rad-hard CPU, redundancy   |

---

## Processor & Software
1. **Flight Processor**  
   - Often rad-hard: e.g., Rad750, GR712.  
   - Runs real-time OS for deterministic scheduling.

2. **Flight Software**  
   - Attitude control algorithms, autonomy scripts.  
   - Stored in PROM/EEPROM with boot code in case of resets.

> [!tip] **Modular Approach**
> - Partition data buses by subsystem to simplify integration (e.g., separate ADC and payload buses).
> - Use standard interfaces (SpaceWire, 1553) for flexible payload integration.

---

## Data Interfaces
- **Low-rate**: MIL-STD-1553 for robust control.  
- **High-rate**: SpaceWire or custom if >100 kbps.  
- **Handshaking** crucial to prevent data loss at high speeds.

---

## Timekeeping
- Onboard **mission-elapsed timer** (MET) plus an epoch offset (e.g., seconds since Jan 1, 2001).
- Oscillator stability & calibrations are critical for accurate time-tagging.

---

## Cross-Links
- See [[Telemetry Tracking and Command]] on command reception and telemetry downlink.
- See [[Spacecraft Power System]] for C&DH board power needs and bus voltage considerations.

