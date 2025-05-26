# Telemetry, Tracking, and Command (TT&C)
The **TT&C subsystem** provides the RF link for spacecraft telemetry downlink, command uplink, and tracking (ranging/Doppler).

> [!abstract] **Core Functions**
> - **Transmit** spacecraft telemetry to ground.  
> - **Receive** ground commands.  
> - **Provide** ranging and Doppler data for orbit determination.  

---

## Key Design Drivers
| Driver                     | Driven By                   | Impact                        |
|----------------------------|-----------------------------|-------------------------------|
| **Data Rate & Distance**   | Payload & Ops concept       | Tx power, antenna gain        |
| **Frequency**              | Regulatory & data rate      | Hardware design, antenna size |
| **Ground Station EIRP**    | Ground architecture         | Spacecraft Rx sensitivity     |
| **Duty Cycle**             | Orbit & ops concept         | Power budget, heat dissipation|

---

## RF Link Considerations
- **Inverse-Square Law**: Doubling distance = x4 the required Tx power (if antenna gain is fixed).
- **Antenna Gain** \(\propto\) Aperture Area / Beamwidth:
  - High-gain antennas reduce Tx power but need precise pointing.
  - Omnis are simpler but limit data rate, especially at large distances.
- **Coding & Standards**: CCSDS frames, robust forward error correction.

> [!info] **Common Frequencies**
> - **S-band** (~2 GHz): Lower data rates, smaller antennas for LEO or near-Earth.  
> - **X-band** (~8 GHz): Higher data rates for deep-space.  
> - **Ka-band** (~26 GHz): Even higher rates but more susceptible to rain fade.

---

## Ground Tracking
- **Ranging**: Measure round-trip delay of signals.  
- **Doppler**: Two-way coherent transponder is typical; velocity is deduced from frequency shift.

---

## Power & Thermal
- Tx can consume 6-7x its RF power in electrical input (e.g., 5 W out may need ~30-35 W in).
- The receiver must typically remain powered for safe commanding.

---

## Cross-Links
- See [[Command and Data Handling]] for how commands are processed after reception.
- See [[Spacecraft Power System]] for transmitter power budgets.
