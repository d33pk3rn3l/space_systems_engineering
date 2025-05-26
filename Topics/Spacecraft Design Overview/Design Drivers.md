# Design Drivers

**Related:** [[Spacecraft Design Overview]]

| Spacecraft Design Drivers                              | Mission Source      | Impact                                                    | Thresholds                             |
| ------------------------------------------------------ | ------------------- | --------------------------------------------------------- | -------------------------------------- |
| Mass                                                   | Payload mass        | Launch vehicle                                            | <250 kg, <1,000 kg, <7,000 kg          |
| Power Consumption                                      | Payload design      | Power sys, solar array config                             | Beyond Mars or <2 weeks                |
| Cost                                                   | Funders             | Ripples throughout system                                 | <$5M, <$100M, <$500M                   |
| Schedule                                               | Funders             | Development process                                       | <3 yrs, <5 yrs, >5 yrs                 |
| Lifetime                                               | Mission design      | Redundancy, quality of parts                              | <1 yr, <3 yrs, <5 yrs, >5 yrs          |
| Reliability                                            | Mission design      | Redundancy, quality of parts, margin                      | Experimental, operational, human rated |
| Delta V                                                | Mission design      | Propellant load                                           | 0, 100, 1,000, 2,000                   |
| Orbit                                                  | Mission design      | Solar array, thermal, radiation reg, launch vehicle       | <1,000 km, high-Earth, planetary       |
| **Payload Accommodation**<br>— Data Rate, Vol, Latency | Mission purpose     | Comm, data storage, ground                                | Thresholds changing fast               |
| — Pointing Requirements                                | Res or antenna beam | Attitude control system                                   | <5 deg, <0.5 deg, <20 arcsec           |
| — Mass, Volume, FOVs                                   | Payload constraints | Mechanical design                                         | Diameter: <1 m, <5 m                   |
| — Other                                                |                     | Data system, master oscillator, cost of ground processing | Mission specific                       |

## 1. Mass
> [!IMPORTANT] **Primary Cost Driver**
> Launch costs scale roughly with mass.
>
> **Limits or Thresholds:** 
> - Exceeding certain mass thresholds can force switching to a larger launch vehicle (huge cost jump) → cost for launch can be a step-function.
>
> **Cascading Effect:** 
> - Larger mass → more propellant → bigger rocket → higher cost.

## 2. Power
> [!INFO] **Power Considerations**
> Determines size of solar arrays (or need for [RTGs](https://en.wikipedia.org/wiki/Radioisotope_thermoelectric_generator)).
>
> - Larger arrays → higher mass, structural complexity, thermal load.
>
> **Power Demands Mainly Come From:**
> - Payload operations (e.g., high-power instruments).
> - Communication system (high data rates over large distances).

## 3. Cost
> [!NOTE] **Cost Influencers**
> - **Mass & Power** strongly influence cost.
> - Constrained schedules can increase cost due to overtime, parallel testing, or more robust hardware.
>
> **Trade-offs:** 
> - Saving mass may cost more in advanced materials or tighter manufacturing tolerances.

## 4. Schedule
> [!WARNING] **Schedule Impacts**
> - **Short Schedule:** Fewer design iterations, higher risk of failures, potential for cost overruns.
> - **Long Schedule:** Potentially better optimization, but higher overhead and risk of technology becoming obsolete.

## 5. Reliability & Lifetime
> [!TIP] **Reliability Requirements**
> - Desired mission duration dictates how robust subsystems must be.
> - [[Redundancy Strategies]] (single-string, block-redundant, cross-strapped) increase both [[Reliability Considerations|reliability]] and mass.
>
> **Human-Rated Missions:**
> - Demand highest reliability → significantly higher complexity and cost.

## 6. Total ΔV
> [!INFO] **ΔV Considerations**
> Defines how much propellant and what propulsion system is needed.
> - Orbit changes, station-keeping, or planetary transfers can greatly increase ΔV demands.

## 7. Orbit Selection
> [!WARNING] **Orbit Impact Factors**
> - **Thermal Design:** Altitude, inclination, and orbit shape affect sun exposure.
> - **Communication Systems:** Altitude and orbit shape affect link budget.
> - **Attitude Control:** Altitude and orbit shape affect *atmospheric drag*, which affects station-keeping.
>
> **Orbit Types:**
> - LEO, GEO, or interplanetary → each has unique design implications (radiation environment, link budget, etc.).

## 8. Payload Accommodation
> [!INFO] **Data Rate & Storage**
> - High data rate payloads (e.g., imaging instruments) need larger data storage and higher bandwidth for downlink.
> - Latency requirements may dictate how frequently data must be transmitted to Earth.
>
> > [!TIP] **Pointing & Stability**
> > - Precision payloads (e.g., telescopes, cameras) require tight attitude control for accurate targeting.
> > - Stability is crucial to maintain the field of view (FOV) and prevent image distortion.
>
> > [!TIP] **Physical Constraints**
> > - Payload size (volume) and mass must fit within the spacecraft’s structural and launch constraints.
> > - FOV considerations ensure no obstructions block the payload’s sensors or instruments.
>
> > [!TIP] **Contamination & Temperature**
> > - Optical and UV payloads are highly sensitive to contamination, requiring special handling and clean environments.
> > - Temperature control is critical to protect delicate instruments.

