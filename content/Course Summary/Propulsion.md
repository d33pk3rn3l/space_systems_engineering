# Propulsion

# Basics

Idea: Acceleration ($\Delta v$) by ejection of material

Need:

- Energy: needed to throw out propellant/mass to get push, some converted to $E_{kin}$
- Propellant

Statements about $\Delta v$:

- $\Delta v$ does *not only* result from space propulsion but change in mass 
→ also $F_g$, Drag etc.
- $\Delta v$ is not only velocity change but also orbit change 
→ change in velocity linked to Energy change: $E = \frac{1}{2}mv^2 -m\frac{\mu}{r}$
- $\Delta v \ne$ velocity change 
→ velocity and $\Delta v$ depend on orbit, if $\Delta v$ in direction of acceleration altitude $\uparrow$ & velocity $\downarrow$ BUT Energy will increase
- $\Delta v$ same for $\pm$ a 
→ same effort for acceleration and deceleration!

## Tsiolkovsky rocket equation:

$$
\Delta v = v_e \ln(\frac{m_0}{m_1})= v_e \ln(\frac{m_w}{m_d}) = v_e\ln(\frac{m_d +m_p}{m_d}) = v_e \ln(1 + \frac{m_p}{m_d})\\ \Leftrightarrow m_p =m_d \cdot (e^{\frac{\Delta v}{v_e}} -1)
$$

$$
MR = \frac{m_w}{m_d} = \frac{m_d + m_p}{m_d} \Rightarrow \Delta v = v_e \ln(MR)
$$

$\Delta v$: Maximal change of velocity of vehicle [m/s]

$v_e$: Exhaust velocity [m/s] 

*→ describes magnitude for performance of propulsion system in relation with complexity, risk, costs…*

$m_1$: Mass at $t_1$ [kg] → $m_1 = m_0-\Delta m$

$m_2$: Mass at $t_2$ [kg]

$\Delta m$: ejected mass [kg]

$m_w$: wet mass, initial total mass including propellant [kg] → $m_w = m_d + m_p$

$m_d$: dry mass, final total mass without propellant [kg]

$m_p$: Propellant mass [kg]

MR: mass ratio between initial mass and final mass

![image.png](/Course%20Summary/_resources/Propulsion-image.png)

## Specific impulse

Def: a measure of how efficiently an engine generates thrust. It is defined as the total impulse normalized by the weight of the propellant. The specific impulse can also be defined as the ratio of thrust to the propellant weight flow rate. → NOT used to compare different propellants

$$
I_{sp} = \frac{v_e}{g_0}= \frac{F}{\dot{m}g_0}
$$

$I_{sp}$: Specific impulse [s] → does not account for mass which is not fuel

$F$: thrust magnitude [N]

$\dot{m}$: Mass flow rate of propellant [kg/s]

$g_0$: earth gravitational acceleration [m/s^2] = 9.8065 m/s^2

→ for same $\Delta v$ needed the MR is smaller for higher $v_e$ = higher efficiency

![image.png](/Course%20Summary/_resources/Propulsion-image1.png)

→ the higher $v_e$ the higher MR! ⇒ need staging!

![image.png](/Course%20Summary/_resources/Propulsion-image2.png)

### Mission feasibility limit

Specific impulse must be above certain value for a system to work!

$$
I_{sp} \geq \frac{\Delta v}{\ln(\frac{1}{f_{inert}})g_0}
$$

$f_{inert}$: given by propulsion technology used

$\Delta v$: Mission requirement

## Staging

Idea: reducing mass of rocket by jettisoning stages when they run out of propellant

→ Performance increase as mass is gradually reduced

Advantage: each stage can be optimized for its specific operating conditions

### Optimizing Launcher staging

Initial to final mass ratio:

→ can be established for single stage launchers as well as multiple stage launchers

$$
\eta = \frac{m_d+m_p+m_{PL}}{m_d+m_{PL}} = \frac{1+\lambda}{\epsilon + \lambda}
$$

Structural ratio: 
→ ratio between empty masses of stage & combined empty mass and propellant mass

$$
\epsilon = \frac{m_d}{m_d +m_p}
$$

Payload ratio:

→ ratio between $m_{PL}$ & combined masses of empty rocket stage and propellant mass

$$
\lambda = \frac{m_{PL}}{m_d+m_p}
$$

![For epsilon = 0.15, N: number of stages ](/Course%20Summary/_resources/Propulsion-image3.png)

For epsilon = 0.15, N: number of stages 

![For epsilon = 0.10, N: number of stages](/Course%20Summary/_resources/Propulsion-image4.png)

For epsilon = 0.10, N: number of stages

## $\Delta v$ Relationships

- Thrust
    - General Thrust equation
    
    $$
    F_m = \frac{dm}{dt}v_e =\dot{m}v_e
    $$
    
    $F_m$: Momentum thrust magnitude [N]
    
    - Thrust linked to pressure
        
        $$
        F_p = \lambda(\dot{m}v_e +(p_e -p_a) A_e)
        $$
        
    
    $F_p$: Pressure thrust magnitude [N]
    
    $p_e$: Nozzle exit pressure [N/m^2]
    
    $p_a$: Ambient pressure [N/m^2]
    
    $A_e$: Nozzle exit cross-sectional area [m^2]
    
    $\lambda$: Nozzle efficiency [-] → typically btwn 0.85 and 0.98
    
    - Thrust level
    
    $$
    \frac{F}{W} = \frac{F}{mg_0}
    $$
    
    $F/W$: Thrust-to-weight ratio [-]
    
- Total impulse
    
    $$
    I = \int_{0}^{t_b}F dt \xrightarrow{\text{if const. Thrust magnitude}} I = Ft_b\\ \text{Relation to } I_{sp}:\: I_{sp} = \frac{I}{m_{prop}g_0}
    $$
    

---

# Propulsion System types

**Def**: Everything that accelerates a vehicle by ejection of material

Propulsion System = Energy Converter/Accelerator

![image.png](/Course%20Summary/_resources/Propulsion-image5.png)

Generic Block Diagram:

![image.png](/Course%20Summary/_resources/Propulsion-image6.png)

**Overview Table System & ISP**

| **Propulsion Type** | **Isp Range (s)** | **Thrust** | **Complexity** | **Applications** |
| --- | --- | --- | --- | --- |
| 🧊 Cold Gas | 50-75 | Very Low (µN-mN) | Simple | Small Satellites, Attitude Control |
| 🔥 Solid Propellants | 200-300+ | High (kN) | Moderate | Rocket Launches, Stage Separation |
| 💧 Liquid Monopropellant | 165-244 | Low-Moderate | Simple | Orbital Maneuvers, Small Satellites |
| ⚡ Ion Thrusters | 2,000-10,000+ | Very Low | Complex | Long-Duration Spacecraft |
| 🌞 Solar Sail | - | Low | Simple | Deep Space Exploration |
- details (chat)
    
    *Generated via chat based on notebookLM*
    
    | Propulsion System | Typical Isp (s) | Remarks |
    | --- | --- | --- |
    | Cold Gas Thrusters | 45 - 272 | Simple, low thrust, low Δv, often used for attitude control. |
    | Monopropellant Thrusters | 165 - 244 | Simple, reliable, moderate Isp, often for smaller Δv requirements. |
    | Solid Rocket Motors | 200 - 300+ | Simple, high thrust, not throttleable, not restartable, often used for rocket launches. |
    | Bipropellant Thrusters | 300+ | Higher Isp than monopropellants, more complex systems, often for larger Δv requirements. |
    | Electrothermal (Resistojet) Thrusters | 45 - 800+ | Heats propellant electrically, Isp depends on the propellant. |
    | Electrothermal (Arcjet) Thrusters | Up to 800 | Heats propellant using an arc discharge, higher Isp than resistojets, but more complex. |
    | Electrostatic (Ion) Thrusters | 2,000 - 10,000+ | Very high Isp, but lower thrust, for long missions. |
    | Electrostatic (Hall) Thrusters | 1,000 - 3,000 | Moderate Isp, good compromise between thrust and Isp. |
    | FEEP Thrusters | Up to 10,000 | Very fine thrust control. |
    | Electrospray Thrusters | 100 - 20,000+ | Very low thrust, for very precise attitude control. |
    | Magnetoplasmadynamic Thrusters | 1,000+ | High thrust and high Isp, but more complex. |
    | Pulsed Plasma Thrusters | 300 - 50,000+ | Very precise impulse delivery, often used for attitude control. |
    | VASIMR | 5,000 - 30,000 | Variable Isp, high power. |

---

## Thermal Propulsion Systems

### Cold-Gas Propulsion

Compressed gas stored in pressurized tank with regulated pressure $P_{gas}$, thrust through pressurized gas ejection.

Generated Thrust: 1µN - 100 mN

Efficiency: $I_{sp}$ = ~50s-75s (very low!)

Good for: Nano & Microsats

| **Advantages** | **Disadvantages** |
| --- | --- |
| Low cost, simple | Leakage |
| Good reliability | Low performance |
| No contamination from exhaust gases | high pressure on ground |
|  | high mass/volume |

### Steam Rocket

Thermal rocket using water held in a pressure vessel at high temperature $T_{P,w,sat} \gg T_{ambient}$.

Hot water flows trough nozzle → pressure $\downarrow$, H2O converts to steam, leaving at high speed.

---

## Chemical Propulsion Systems

System:

![image.png](/Course%20Summary/_resources/Propulsion-image7.png)

Overview: 

*chatgpt generated*

| **Propulsion Type** | **Description** | **Advantages** | **Disadvantages** | **Applications** |
| --- | --- | --- | --- | --- |
| Solid Propellants | Solid mixture of oxidizer and fuel. | Simple, high thrust. | Non-stoppable, toxic, burn surface shape affects thrust. | Rocket launches, stage separation. |
| Liquid Monopropellant | Single propellant decomposed by a catalyst. | Simple, restartable, cleaner exhaust. | Lower Isp, toxic, high freezing point. | Orbital maneuvers, small satellites. |
| Liquid Bipropellant | Fuel and oxidizer combust upon contact or ignition. | Highest achievable specific impulse for chemical propulsion, controllable (on/off, restartable, throttleable). | Lower density than solids, complex, risk of leaks, combustion instability, challenging ignition design for microgravity. | Long-distance space missions, larger spacecraft. |
| Liquid Tripropellant | Uses three propellants for high performance. | High specific impulse. | Complex and specialized. | High-performance rockets. |
| Hybrid Propellants | Solid fuel with liquid or gaseous oxidizer. | Mechanically simpler than liquid systems, fewer pipelines and valves. | Limited throttleability, lower performance compared to bipropellant systems. | Suborbital rockets, research rockets. |
| Gaseous Propellants | Propellant in gaseous form (e.g., water split into hydrogen and oxygen via electrolysis). | High performance (high Isp), can also be used in fuel cells for electrical power. | Requires high-temperature resistant materials for combustion chamber. | Advanced propulsion experiments. |
| Gel Propellants | Special rheological properties, distinct from conventional liquid propellants. | Combines safety of solids with some performance of liquids. | Limited testing and availability. | Experimental systems. |

![image.png](/Course%20Summary/_resources/Propulsion-image8.png)

### Solid

Concept: 

![image.png](/Course%20Summary/_resources/Propulsion-image9.png)

Key parameter: 

- Burn rate (cm/s)
- burning area
- solid propellant density

Burning area:

![image.png](/Course%20Summary/_resources/Propulsion-image10.png)

![image.png](/Course%20Summary/_resources/Propulsion-image11.png)

### Hybrid

Concept: 

![image.png](/Course%20Summary/_resources/Propulsion-image12.png)

### Liquid

Mono-propellant:

![image.png](/Course%20Summary/_resources/Propulsion-image13.png)

Bi-propellant: 

![image.png](/Course%20Summary/_resources/Propulsion-image14.png)

Toxicity:

![image.png](/Course%20Summary/_resources/Propulsion-image15.png)

### Gaseous

![image.png](/Course%20Summary/_resources/Propulsion-image16.png)

---

## Electrical Propulsion Systems

Concept: 

![image.png](/Course%20Summary/_resources/Propulsion-image17.png)

Overview:

![image.png](/Course%20Summary/_resources/Propulsion-image18.png)

Here’s what chat did:

![DALL·E 2025-01-04 11.42.05 - A visually appealing infographic poster summarizing types of propulsion systems for space exploration. The design includes four main sections_ 1. Ther.webp](/Course%20Summary/_resources/Propulsion-DALLE_2025-01-04_11.42.05_-_A_visually_appealing_infographic_poster_summarizing_types_of_propulsion_systems_for_space_exploration._The_design_includes_four_main_sections__1._Ther.webp)