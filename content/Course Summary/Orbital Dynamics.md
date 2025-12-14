Leon's summary of the *Orbital Dynamics* course can be downloaded [from Polybox](https://polybox.ethz.ch/index.php/s/iN4qeWnTR3oYiew).

The PDF of Yara’s summary can be found here [Yara Orbital](Yara%20Orbital%20171607ce73f880849c41f8f1c421868b.md) 

## **1. The n-Body Problem and the Two-Body Problem**

### The three body Problem

- Involves n gravitationally interacting bodies.
- Equation of motion for the i-th body:
    
    $\ddot r_i= \sum_{j \neq i}^n G\frac{m_j}{|\mathbf{r}_j - \mathbf{r}_i|^3} (\mathbf{r}_j - \mathbf{r}_i)$
    
- This system **lacks closed-form solutions** due to its complexity, necessitating numerical integration or simplifications like dividing the problem into several two-body problems.

### The Two-Body Problem:

- Simplified to two masses interacting gravitationally:
    
     $r= -\frac{\mu}{r^3} \mathbf{r}, \quad \mu = G (m_1 + m_2)$
    
- Leads to conic-section solutions (ellipse, parabola, hyperbola) based on energy and eccentricity (e):
    - e = 0: Circular orbit.
    - 0<e<1: Elliptical orbit.
    - e=1: Parabolic trajectory.
    - e>1: Hyperbolic escape.
- Defines constants of motion:
    - Angular momentum:
        
         $\mathbf{h}=\mathbf{r} \times \mathbf{v}$
        
    - Energy:
        
        $E =\frac{1}{2}v^2 - \frac{\mu}{r}$
        

### **The Restricted Three-Body Problem**

- Describes a small body's motion influenced by two larger bodies (e.g., Earth-Moon or Sun-Earth systems).
- Key features:
    - **Lagrange points**: Equilibrium points (5 total) where the gravitational forces and centrifugal forces balance.
    
    - L1, L2, L3: Unstable
    - L4, L5: Stable
    
    ![sun-earth-lagrange-1904468025.png](/Course%20Summary/_resources/OrbitalDynamics-sun-earth-lagrange-1904468025.png)
    
    - Orbits near Lagrange points, such as Halo orbits, are vital for missions like the James Webb Space Telescope​​.

---

## **2. Orbit Terminology**

- Orbits by altitude:
    - **Low Earth Orbit (LEO)**: Altitudes < 2,000 km; used for Earth observation and communication.
    - **Geostationary Orbit (GEO)**: Circular orbit at ~35,786 km, matching Earth’s rotation. Ideal for broadcasting.
    - **Lunar Orbit**
    - **Interstellar Orbit**
- Orbits by inclination:
    - **prograde** i<90°
    - **polar** i = 90°
    - **retrograde** i > 90°
- Orbits by function:
    - mission Orbit
    - transfer orbit
    - parking orbit
    - phasing orbit (also some kind of a transfer orbit)
- **Molniya Orbit**: Highly elliptical orbit with an inclination of ~63.4°, optimized for high-latitude coverage.
    
    +coverage of high lat, - high cost and radiation
    
- **SSO:** Sun Synchronous Orbit
    
    +constant sun angle, -high cost
    
- **repeating groundtrack:**
+coverage repeats, -orbit perturbations can resonate

- **Orbital Elements**: 📚 Memorize
    - a: Semi-major axis (size of the orbit).
    - e: Eccentricity (shape of the orbit).
    - i: Inclination (tilt relative to equatorial plane).
    - Ω: Right ascension of ascending node (RAAN).
    - ω: Argument of perigee.
    - ν: True anomaly (position in orbit).

![raan270-123729547.png](/Course%20Summary/_resources/OrbitalDynamics-raan270-123729547.png)

---

## **3. Orbit Perturbations**

- **Sources of Perturbations**:
    - **Imperfect sphere (oblateness of Earth (J2))**: This leads to the following effects:
        - **nodal regression** (ascending node moves) due to a torque which rotates the satellite’s orbit in the equatorial plane)
        - **apsidal precession** (the argument of periapsis moves) at the critical inclination of 63.435° (Molniya Orbit) this effect cancles out and does not exist.
    - **Third-Body Effects**: Perturbations due to the Sun, Moon, or other celestial bodies.
    - **Atmospheric Drag**: Significant in low orbits, reducing altitude and orbital lifetime.
    - **Solar Radiation Pressure**: Affects large spacecraft in high-altitude orbits​.
- Lagrange Planetary Equations describe how orbital elements evolve under small perturbing forces​.

$$
\ddot r = -\frac{\mu}{r^3} + f_{pretubation }
$$

**Excursion**:
The perturbation forces are modelled either conservative or non-conservative
- **conservative:** A mathematical formulation for the forces exists (e.g. gravity)
- **non-conservative:** The forces are not fully calculable (e.g. atmospheric drag)

---

## **4. Orbital Maneuvers and Transfer Orbits**

### Types of Maneuvers:

- **Hohmann Transfer**:
    - Most efficient transfer between two circular coplanar orbits.
    - Delta-v (Δv) for each impulse:
        
        $\Delta v_1 =$ $\sqrt{\frac{\mu}{r_1}} \left(\sqrt{\frac{2r_2}{r_1 + r_2}} - 1\right), \quad
        \Delta v_2 = \sqrt{\frac{\mu}{r_2}} \left(1 - \sqrt{\frac{2r_1}{r_1 + r_2}}\right)$
        
    - If a rendez vous is required

$$
\beta = \pi - \pi(\frac{1 + \frac{r_1}{r_2}}{2})^\frac{3}{2}
$$

- **Bi-Elliptic Transfer**: Efficient for large ratio changes in orbit size.
- **Plane Changes**: Expensive maneuvers that alter inclination​​.

![image.png](/Course%20Summary/_resources/OrbitalDynamics-image.png)

### Types of orbital maneuvers:

- **Impulsive maneuvers:** fire for a short duration
fast but propellant-intensive
- **Extended maneuvers:** often used with ion engines
- **Gravity Assist**: Uses planetary gravity to alter a spacecraft's trajectory without propellant. $\Delta v$  is changed without spending propellant
**Grand tour** if multiple planets are used (Cassini used 2 Venus, 1 Earth and 1 Jupiter flybys to get to Saturn)
- **Aerobraking**: Utilizes atmospheric drag to reduce velocity without propellant.
- **Phasing maneuvers:** adjustment of the time-position of a spacecraft

![image.png](/Course%20Summary/_resources/OrbitalDynamics-image1.png)

![image.png](/Course%20Summary/_resources/OrbitalDynamics-image2.png)

---

## **5. Orbit Selection and Design**

- **Steps**:
    1. Establish Orbit Types
    2. Determine Orbit related **mission Requirements** (also constraints like cost)
    3. Evaluate **Orbit performance**
    4. Evaluate **Orbit Cost**
- Specialized orbits like GEO and Sun-synchronous are often selected for unique advantages but entail higher costs​.
- **Trade-offs** are common, balancing factors like altitude (coverage vs. resolution) and satellite lifetime (drag vs. radiation).

---

## **6. Orbit-Related Mission Requirements**

- **Earth-Referenced Missions**:
    - **How to get the Orbit Requirements?**
        - What **coverage** is required?
        - What **Sensitivity** (e.g. resolution) is requirded?
        - How is the **Environment** in this Orbit (Radiation, Sunlight for the solar panels)
        - Are the **Launch capabilities** existing?
        - Is **communication** possible?
        - How long does the Satellite **survive** in this orbit?
    - Coverage area, revisit time, and resolution depend on **altitude and inclination**.
    - Geosynchronous orbits provide continuous coverage, while polar orbits are ideal for global observations​​.
- **Space-Referenced Missions**:
    - Requirements
        - accessibility
        - reasonable environment
        - good communications
    - Stability and minimal perturbations are key, often requiring high-altitude or Lagrange point orbits.
- **Interplanetary Missions**:
    - Requirements:
        - launch windows
        - For human spaceflight: “Forgiving” transfer obrits
    - Efficient transfer orbits (e.g., Hohmann or gravity-assist) and robust thermal/radiation shielding​​.

---

## **7. Orbit Cost**

- **Components**:
    - Launch costs: Scaled by payload mass and target orbit.
    - Delta v costs for orbital maneuvers
        - Station keeping and transfer maneuvers
        - Disposal costs: Compliance with debris mitigation guidelines.
- Cost optimization strategies:
    - Use of smaller satellites and reusable launch vehicles.
    - In-orbit refueling​​.
- Delta v Budget:
    - cummulative velocity change for all orbital maneuvers
    - to calculate the propellant mass required
    
    $$
    \mathbf{Rocket \space equation}: \frac{m_0 + m_p}{m_0} = exp(\frac{\Delta v}{v_0})\\
    with \space v_0: effective \space exhaust \space velocity 
    $$
    
    - $\Delta v$  significantly higher than $v_0$ is impossible without staging
    - The **Orbital Cost Function (OCF)** describes the ratio of mass available in a 185km circular orbit to that available at the mission orbit
        - $OCF = (1+K)exp(\frac{\Delta v}{v_0}) -K$
        - with $K \approx 10\%$  which describes the fraction of hardware for the propultion to the propellant mass.
        

---

## **8. Constellation Design**

This part is more of an additional Information because it has been **hardly covered in the lecture.**

- **Design Process:**
    - Establish requirements: Coverage, limits on number of satellites, requirements for sensors…
    - Do single satellite orbit trades (except coverage)
    - Do coverage vs Satellite Number trades
    - Look for coverage holes or methods to reduce satellite number
    - Adjust inclination or phasing for maximal intersatellite distances to avoid collision risk
    - Review Rules and document reasons for choices
- **Design Principles**:
    - Number of satellites, number of orbital planes, and phasing optimized for coverage and reliability.
    - Example: GPS requires 24 satellites in six orbital planes​.
- **Principal issues:**
    - Coverage, number of satellites, launch options, Environment
- **Rules**
    - All Satellites at the same Inclination
    - Avoid perigee rotation: If excentric at 63.4 deg
    - Collision avoidance is critical
    - …

## **Facts to Memorize**

1. **Keplerian Elements**:
    
    
    - **Orbital Elements**:
        - a: Semi-major axis (size of the orbit).
        - e: Eccentricity (shape of the orbit).
        - i: Inclination (tilt relative to equatorial plane).
        - Ω: Right ascension of ascending node (RAAN).
        - ω: Argument of perigee.
        - ν: True anomaly (position in orbit).
    
    ![raan270-123729547.png](/Course%20Summary/_resources/OrbitalDynamics-raan270-123729547.png)
    
2. **$\Delta v$ Requirements**:
    - Key for estimating mission costs. Δv budgets include launch, orbital insertion, station-keeping, and transfer maneuvers​​.
    - Rocket Equation: $\frac{m_0 + m_p}{m_0} = exp(\frac{\Delta v}{v_0})\\$
3. **Specialized Orbits**:
    - Geostationary (constant ground position), Sun-synchronous (consistent illumination), and Molniya (high latitude coverage)​​.
4. **Hohmann Transfer**:
    - Most efficient transfer orbit between two circular orbits in the same plane​.
5. **Gravity-Assist Maneuver**:
    - Uses a planet's gravity to alter a spacecraft's trajectory, conserving propellant​.

## Formulas

In this part there are too many formulas please check the formula collection from Anna Kubik

## Additional Information

![Solar_system_delta_v_map.svg.png](/Course%20Summary/_resources/OrbitalDynamics-Solar_system_delta_v_map.svg.png)

[Yara Orbital](Yara%20Orbital%20171607ce73f880849c41f8f1c421868b.md)