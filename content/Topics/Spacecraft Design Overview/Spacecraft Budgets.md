# Spacecraft Budgets

> [!info] **What Are Spacecraft Budgets?**  
Budgets allocate critical resources—mass, power, propellant, and data—across subsystems to ensure the spacecraft design remains feasible and aligned with mission objectives.

## Preliminary Budgets
- Early estimates of essential spacecraft resources.  
- Provide initial guidance to ensure the design remains within constraints.

**Purpose:**  
- Keeps the design within feasible limits for mass, power, propellant, and data.  
- Incorporates margins and contingencies to address uncertainties and potential changes.

---

### 1. Mass Budget

> [!reason] **Reason**  
> Launch costs are tightly linked to spacecraft mass, and mass tends to grow during the design process.

- **Key Components**:
  - **Dry Mass**: Includes the structure, subsystems, and payload.
  - **Wet Mass**: Combines dry mass with propellant required for maneuvers.
- **Design Considerations**:
  - Add margins of 10–20% to account for unexpected mass increases.
  - [[Design Drivers#Mass|Mass constraints]] directly influence launch vehicle selection and cost.

---

### 2. Propellant Budget

> [!reason] **Reason**  
> The total propellant budget is driven by the mission’s ΔV requirements for orbit adjustments, station-keeping, and end-of-life maneuvers.

- **Key Components**:
  - ΔV needs for all mission phases.
  - Propellant mass based on propulsion system type and specific impulse (Isp).
- **Design Considerations**:
  - Use the rocket equation to calculate required propellant.
  - Propulsion types:
    - Chemical propulsion: High thrust but requires more propellant for rapid maneuvers.
    - Electric propulsion: Efficient, lower thrust but suitable for long-duration maneuvers.
  - Include reserves for uncertainties or additional maneuvers.

---

### 3. Power Budget

> [!reason] **Reason**  
> Ensures all subsystems have sufficient power to function throughout the mission lifecycle, especially during critical phases.

- **Key Components**:
  - Peak and average power demands for payloads and subsystems.
  - Solar arrays or RTGs as the primary power sources.
- **Design Considerations**:
  - Include 20–30% margin for inefficiencies and potential growth in power usage.
  - Design must account for eclipse periods and other mission-specific conditions.
  - See [[Spacecraft Subsystems#Power Subsystem|Power Subsystem]] for details.

---

### 4. Pointing and Alignment Budget

> [!reason] **Reason**  
> Allocates resources for maintaining the spacecraft's attitude and meeting mission-specific pointing accuracy requirements.

- **Key Components**:
  - External disturbances like gravity gradients, solar pressure, and magnetic torques.
  - System capabilities for attitude determination and control.
- **Design Considerations**:
  - Include margins for real-world misalignments and unpredictable environmental forces.
  - Allocate resources to counteract external disturbances affecting alignment.

---

### 5. Data System Budget

> [!reason] **Reason**  
> Manages onboard data storage and downlink capabilities to ensure mission data is transmitted and preserved efficiently.

- **Key Components**:
  - Data generation rates during mission phases.
  - Onboard storage capacity for data between downlink windows.
  - Downlink bandwidth and ground station availability.
- **Design Considerations**:
  - Estimate total data volume for all mission phases.
  - Design for compression and processing to mitigate bandwidth constraints.
  - Align data storage capabilities with the [[Telemetry Subsystem]].

---

## Types of Margins in Spacecraft Budgeting

> [!warning] **Margins Are Critical**  
> Margins address uncertainties, subsystem-level growth, and unforeseen challenges.

![[Fig_14-8_Graphical Presentation of Margin.png]]
*Figure: Graphical Presentation of Margin (SMAD)*

| Component | Description |
|-----------|-------------|
| **Allocation** | - Initial resource budget per subsystem<br>- Includes Current Best Estimate (CBE) and contingency<br>- Based on preliminary design requirements |
| **Current Best Estimate (CBE)** | - Most accurate resource prediction per subsystem<br>- Based on current design maturity<br>- Updates throughout development |
| **Contingency** | - Extra resources within subsystem allocation<br>- Handles minor uncertainties<br>- Provides flexibility during design |
| **System Margin** | - Additional overall system reserves<br>- Addresses unforeseen problems<br>- Enables design changes when needed |
| **Lien** | - Reserved portion of system margin<br>- Addresses specific high-risk issues<br>- Released if risk is retired |
| **Total Resource Margin** | - Combines all contingencies and system margins<br>- Provides overall performance buffer<br>- Ensures mission requirements are met |

## Scaling of Spacecraft Budgets

> [!note] **Scaling Considerations**
> As spacecraft size increases, various budgets scale differently, impacting design choices and mission feasibility.

| Feature           | Scaling                                                                                                                                                    |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Surface Area**  | Increases slower than volume (r² vs. r³)                                                                                                                   |
| **Mass**          | Increases with volume                                                                                                                                      |
| **Power**         | Increases with volume (more components)                                                                                                                    |
| **Thermal Control** | Surface area for radiators becomes more scarce on larger spacecraft, since power goes with volume                                                       |
| **Solar Arrays**  | Small spacecraft, with lower power, are more likely to have enough surface area for body-mounted arrays                                                    |
| **Stability**     | Torque required to rotate a spacecraft goes up with moment of inertia. MOI ∝ (mass × r²) ⇒ torque ∝ r⁵. Larger spacecraft are much more stable.            |
| **Lateral Frequency** | Larger structures tend to have lower frequencies, with an interplay among MOI of base, height, and mass—goes as 1/r for proportional growth, 1/(c.m. height)¹·⁵ for constant base and mass, as center of mass (c.m.) moves. |

---

**Related Notes**:  
- [[Spacecraft Design Overview]]  
- [[Design Drivers]]  
- [[Spacecraft Subsystems]]
