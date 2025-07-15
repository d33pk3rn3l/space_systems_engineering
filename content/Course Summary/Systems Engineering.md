# Systems Engineering

### **General Concepts**

---

<aside>
💡

### The 14 Steps of Systems engineering

1. **Define broad objectives & constraints**
    - What is the Problem were solving?
    - What is the basic solution?
    - What are the top level constraints?
2. **Define principal players/stakeholders**
    - Who will influence the project?
3. **Define program timeline**
    - How much time is available?
4. **Estimate quantitative needs, requirements, constraints**
    - Wat do we really want/need?
    - Are there things which one can already define upfront?
    - Are there massive constraints that will affect all solutions possible?
5. **Define alternative mission architectures**
    - What different combinations of mission elements can be used to achieve the same goal?
6. **Define alternative mission concepts**
    - How does the mission work together?
7. **Define likely system drivers and key requirements**
    - Identify Key drivers (Subsystems that change everything)
    - Identify the absolutely critical systems
8. **Conduct performance assessment and system trades**
    - Are there other Ways to do this?
    - How does it work at a top level?
9. **Evaluate mission utility**
    - Does the system meet our requirements?
10. **Define the baseline mission concept and architecture**
    - Define a mission concept/architecture that meets most of the Requirements
11. **Revise the qualitative requirements and constraints**
    - Change and adjust requirements to take out pressure of the system
12. **Iterate and explore other alternatives**
    - Don’t fall in love with your solution
13. **Define system requirements**
    - Relate the system requirements well to objectives and key requirements.
14. **Allocate the requirements to system elements**
    - Flow down system requirements to subsystems
    

**Recent changes:**

Computer modeling, Fast Prototyping, More software (liveblood), Reusable spacecraft (→ Mass production)

**Elon Musk:**

Simplify and question the requirements, Simplify processes to necessary parts, Automate

</aside>

### **Mission Design Phases**:

- NASA and ESA categorize mission development into distinct phases. The NASA phases are:

📚 Memorise

| **Phase** | **Main Milestones** | **Speciality about phase** |
| --- | --- | --- |
| **Phase A (Preliminary Analysis)**: Define mission objectives, constraints, and broad concepts.
 | Key Decision Point (KDP) A, Mission Concept Review (MCR), Supporting Reviews
KDP B, System Requirements Review (SRR), Supporting Reviews |  |
| **Phase B (Definition)**: Develop detailed requirements, conduct feasibility studies, and refine concepts.
 | KDP C, System Definition Review (SDR), **Preliminary Design Review (PDR)**, Supporting Reviews |  |
| **Phase C (Design)**: Definition of all system components incl. development and validation of the SW | KDP D, **Critical Design Review (CDR)**, Production Readiness Review (PRR), Supporting Reviews | [Costs often experience major growth.](Clarifications%20172607ce73f88072b162e776f199d1cf.md) |
| **Phase D (Development):** System Assembly, Integration & Test | KDP E, System Integration Review (SIR), Test Readiness Review (TRR), **Flight Readiness Review (FRR),** **System Acceptance Review (SAR),** Launch, Supporting Reviews | Costs often experience major growth. |
| **Phase E (Operations)**: Execute the mission and analyse collected data. | Post-Flight Assessment Review (PFAR), Program Implementation Review (PIR), Supporting Reviews |  |
| **Phase F (Closeout):**  | KDP F, Decommissioning Review (DR), Supporting Reviews |  |
- **Important Milestones:**
    - **Preliminary Design Review (PDR):** It evaluates the preliminary system design to ensure it meets requirements and is ready for detailed design.
    - **Critical Design Review (CDR):**  The CDR assesses the final detailed design of the mission components, ensuring they are ready for fabrication and integration.
    - **System Acceptance Review (SAR):** It evaluates the completed system to ensure it meets all specifications and is ready for integration, testing, and deployment.
    - **Flight readiness review (FRR): T**he FRR evaluates whether the mission hardware, software, and teams are ready for launch.

### **Space mission architecture:**

- **Payload**
- **Spacecraft Bus**
- **Launch System**
- **Orbit**
- Mission Operations
- Ground segment
- Command, Control and Communications Architecture
- Subject

![image.png](/Course%20Summary/_resources/SystemsEngineering-image.png)

### Mission architecture vs mission concept

Mission architecture (WHAT) identifies the building blocks of the mission , while the mission concept (HOW) describes how these building blocks work together to achieve the mission's objectives.

- Example:  Water rescue
    
    **Mission architecture** includes all the equipment and personnel needed to carry out the rescue (boat, truck, radios, etc.). **Mission concept** refers to how these resources are utilized to conduct the rescue (e.g., driving the truck as close as possible to the people in need, launching the boat, and staying in contact via radio). **Mission operations** would then be the detailed process of maneuvering the boat through the whitewater, reaching the people in need, and rescuing them.
    

Short overview:

|  | Mission Architecture | Mission Concept |
| --- | --- | --- |
| **Definition** | Selection of elements required for the mission. | Framework describing how these elements interact to meet objectives. |
| **Components** | Subjects, payload, spacecraft bus, launch system, orbit, command structure, ground system, end-user. | Data transmission, task allocation, communication architecture, mission timeline. |
| **Focus** | What is included in the mission. | How the mission will work in practice. |
| **Impact** | Cost, performance, sustainability. | Stakeholder needs, functional collaboration. |
| **Example** | Equipment for wild-water rescue. | Strategy for using resources in the rescue. |

- More detailed List (open)
    
    
    | **Category** | **Mission Architecture** | **Mission Concept** |
    | --- | --- | --- |
    | **Definition** | Refers to the various combinations of mission elements used to achieve a goal. Includes all equipment and personnel needed to conduct a mission. | A comprehensive statement of how the mission will function in practice and how all parts work together to meet stakeholders’ needs. It’s a broad description, distinct from mission operations. |
    | **Focus** | Selection of mission elements. Identification of the various building blocks of a mission, including actionable mission elements. | Interaction of the elements and how the mission will achieve its objectives. Description of how the various elements of the mission architecture interact. |
    | **Elements** | Includes the definition of the eight main components of the mission: | Typically includes: |
    |  | - **The Subject** (the observed object) | - **The Type of Data Transmission** (e.g., direct to user or via ground stations) |
    |  | - **The Payload** (instruments and software) | - **Task Allocation, Mission Planning, and Control** |
    |  | - **The Spacecraft Bus** (structure, control, power supply) | - **The Communication Architecture** (data transfer, commands, control) |
    |  | - **The Launch System** (rocket, launch pad) | - **The Mission Timeline** (launch, operations, mission end) |
    |  | - **The Orbit** (spacecraft trajectory) |  |
    |  | - **The Command Structure** (communication, commands, control) |  |
    |  | - **The Ground System** (ground stations, data processing) |  |
    |  | - **The End-User** (recipient and user of the data) |  |
    | **Examples** | - For **FireSat II**: Different types of sensors (e.g., infrared vs. visible light), various satellite configurations (e.g., one large satellite vs. multiple small satellites). | - For **FireSat II**: How are wildfire data collected, processed, and transmitted to firefighters? Is data processing done onboard or on the ground? |
    |  | - For a communication system (**SCS**): Different frequency bands, various ground station deployment options. | - For **SCS**: How is communication between emergency responders and the command center established and maintained? |
    | **Impact** | Influences mission costs, performance, flexibility, and long-term usability. | Influences the core functionality of the mission, including how data is generated and transmitted. |
    | **Purpose in Design Process** | Serves as the foundation for identifying alternatives, setting parameters, and making trade-offs. | Serves as the mission framework and basis for decisions regarding trade-offs and optimization during the design process. |

### Alternative Architecture vs. Alternative Mission Concept

**Relationship:**

- **Not Always a New Architecture**: An alternative mission concept does not necessarily require a completely new architecture. An alternative concept can also be based on the same architecture but operate in a different way.
    - For example, an existing satellite architecture could be used with a new concept that processes data onboard the satellite instead of on Earth.
- **Architecture Influences Concept**: The chosen architecture affects how the mission concept can be designed, as certain architectural elements suggest specific operational methods and approaches.
- **Concept Can Influence Architecture**: Conversely, a new mission concept can reveal the need for a new architecture. For instance, the idea of direct communication with end-users via simple devices like mobile phones might require a different satellite architecture than one that relies on large ground stations.

| **Aspect** | **Alternative Architecture** | **Alternative Mission Concept** |
| --- | --- | --- |
| **Definition** | Selection and combination of the fundamental mission elements (building blocks of the mission). | Description of how these elements work together to achieve mission objectives (workflow of the mission). |
| **Focus** | What is used for the mission? (e.g., sensors, spacecraft, orbit). | How does the mission work? (e.g., data transmission, task allocation, communication). |
| **Elements** | Payload, spacecraft bus, launch system, orbit, communication structure, ground system, end-user. | Data transmission, task allocation and control, communication architecture, mission timeline. |
| **Change** | At least one of the fundamental elements is chosen differently than in the original architecture. | Can explore new ways of executing the mission within an existing architecture or propose new architectural elements. |
| **Relationship** | The chosen architecture influences how the mission concept can be designed. A new mission concept can reveal the need for a new architecture. | The way components interact can reveal the need for a different combination of fundamental mission elements. The mission concept can utilize an existing architecture or propose new elements. |
| **Iterative Process** | The development of architecture and concept is often iterative. You can start with an existing architecture and explore various concepts, or begin with a concept and design multiple architectures to support it. | The development of architecture and concept is often iterative. You can start with an existing architecture and explore various concepts, or begin with a concept and design multiple architectures to support it. |
| **Examples (FireSat II)** | - Alternative Architecture: A smaller satellite in a lower Earth orbit with a different sensor instead of a larger satellite in geostationary orbit. | - Alternative Mission Concept: Automating fire detection onboard the spacecraft instead of manual analysis on the ground. |
| **Examples (SCS)** | - Alternative Architecture: Minimize user devices and shift more data processing power onboard the spacecraft. | - Alternative Mission Concept: Direct communication with users via simple devices, like mobile phones, instead of relying on complex ground stations. |

### Requirements:

**Requirements before analysis, requirements before design!**

**Requirements must be changed to always be up to date!**

System requirements fall in **three main areas**

- Functional (E.g., what should it do?)
- Operational (E.g., how do I run it, get the data down?)
- Constraints (E.g., how much can it cost?)

**Requirement Evolution**

- **Phase A: Define** the mission requirements
- **Phase B: Identify** critical driving requirements and risks
- **Phase C: Detail**: Specify system and segment definition and add interface requirements
- **Phase D:** Flow down, **formal design documentation**

### **Iterative Design Process:**

- **Iteration and Refinement**: **Iteration** remains a **critical part of mission design**, focusing on refining system trades and performance assessments. Methods like Monte Carlo simulations are instrumental in evaluating possible scenarios, identifying unusual parameter combinations, and preparing robust system solutions.
- **Mission Requirements Evolution**: **Requirements are dynamic** and must adjust to project constraints and system design realities. The need to **revise and optimise requirements** based on trade-offs between cost, risk, and performance is emphasised.
- **Flow-Down Process**: The **iterative allocation of requirements to subsystems** is critical for ensuring mission alignment while maintaining cost-effectiveness.
- The process **involves evaluating alternative architectures** and conducting **trade studies** to balance cost, risk, and performance.

### Mission Analysis **and Mission Utility**:

The Mission Analysis help to figure out if the problem is feasible, whether we’re on the right path and so on. Therefore different Analyses can be performed.

- **Feasibility Assessment:** To determine if **the problem is achievable**
- **Sizing estimates:** Estimate the fundamental parameters such as **size, weight, power and cost**
- **Point Design:** Design a b**aseline for the entire system** without any optimisation to **demonstrate the feasibility** of the mission and have a baseline for alternatives.
- **Utility Analysis**: Mission utility analysis ensures a **quantitative understanding of how design choices align with mission objectives.** This is achieved using **performance parameters** (how good the system works) and **measures of effectiveness (MoEs)**(how good the system meets the objectives).
- **Trade Studies**: Effective **trade studies analyse the impact of key parameters on cost, risk, and performance.** They involve critical evaluations of altitude, instrument resolution, and communication systems, balancing mission feasibility with performance goals.

Further the performance can be assessed through [system algorithms](Clarifications%20172607ce73f88072b162e776f199d1cf.md), analogy with existing systems or simulations.

### **Integration and Testing**:

- Emphasis on **ensuring subsystems work seamlessly** in the operational environment.
- Simulations replicate conditions like pressure, temperature, and composition, although **gravity-related effects require innovative workarounds** (e.g., pulley systems).
- **Simulations and Risk Management**: Simulations, such as Monte Carlo methods, **replicate operational environments** and assess failure probabilities, providing **key insights into system robustness** before launch.

### **Trends and Challenges in Space Systems**:

- **Lower Costs**: Advances in reusable rockets (e.g., SpaceX’s Falcon 9) and mass production have made **access to space more affordable.**
- **Sustainability**: Managing space debris and minimising resource waste is increasingly vital.
- **Autonomy and AI**: Autonomous systems, like the SMART Nav system used in DART, are becoming critical for precision operations in space.
- **Commercialisation**: Private sector involvement, exemplified by lunar infrastructure contracts (e.g., Intuitive Machines), is reshaping the space industry.
- **Sustainability**: Incorporating sustainability, such as minimising resource use and mitigating orbital debris, has gained prominence.
- **Error Budgets:** Error budgeting for critical metrics like positioning accuracy and power allocation is becoming a cornerstone of system design.

### **System Drivers and Critical Requirements:**

- System drivers, such as payload weight, power consumption, and thermal management, heavily influence design decisions.
- **Common system drivers:**
    
    Size, Power Propellant, Data Rate, Pointing Altitude, Coverage
    
- Critical requirements include mission duration, reliability, and data transmission rates.

### **Science Traceability Matrix**

The Science Traceability Matrix (STM) links high-level mission objectives to measurable science goals, mission requirements, and subsystem capabilities. It provides a structured approach for ensuring alignment between science goals and technical implementation. Key components include:

- **Science Goals**: Broad objectives the mission seeks to achieve.
- **Measurement Requirements**: Specific data or observations needed to meet science goals.
- **Instrument Capabilities**: Technical specifications of instruments that fulfil the measurement requirements.

By maintaining this hierarchy, the STM ensures scientific objectives are met through well-defined engineering and operational plans.

### **Flow Down**

The flow-down process systematically translates high-level mission objectives into detailed requirements for subsystems and components. It ensures consistency and alignment across all mission levels. Key steps include:

- Defining **mission objectives** at a strategic level.
- Breaking these objectives into **payload and system-level requirements** (e.g., data collection accuracy, environmental tolerances).
- Further refining into **subsystem requirements**, such as power, thermal, and structural specifications.

This approach guarantees that each subsystem contributes directly to achieving the overall mission objectives while maintaining traceability and coherence throughout the design and development process.

### TRL Scale

📚 Memorise

| **TRL Level** | **Meaning** |
| --- | --- |
| 1 | **Basic principles observed and reported**
Scientific papers on basic principles, no experimental studies, No flight experience. |
| 2 | **Technology concept formulated
Some Phase A studies**, Important trades have been studied and documented, No flight experience |
| 3 | **Experimental proof of concept demonstrated.
Integrated phase A study** was completed for the instrument in a flight application, Analytical and experimental studies conducted that **demonstrate viability,** No flight experience. |
| 4 | **Component or system validated in a laboratory environment.
Instrument definition study (Phase B) has been completed**, detailed weight and power requirements are known, **First cut on design and weight margins**  |
| 5 | **Component or system validated in a relevant environment.
validated by orbital flight,** key trade studies conducted |
| 6 | **System/subsystem model or prototype demonstrated in a relevant environment (ground or space).** Prototypes or models successfully tested under space conditions in orbital flight, Proposed instrument will be **modified for the mission.** |
| 7 | **System prototype demonstrated in an operational (space) environment.**
Prototype of the instrument successfully tested in orbital flight conducting mission like tasks. Only **minor modifications for the mission** |
| 8 | **Actual system completed and flight-qualified through test demonstration.**
Mission like data obtained, only **very minor modifications** for the mission,  |
| 9 | **Actual system flight-proven in operational environment. Flight proven through mission operation.
No changes** for the mission, if predecessor has been operational the instrument has essentially the same design.
**** |

The TRL Level helps to **add an appropriate margin**. This is the following:

📚 Memorise

| **TRL** | **Margin [%]** |
| --- | --- |
| 9 (off the shelve - build to print) | 0-5 |
| 8 (very minor changes) | 10-15 |
| 7 (new instrument, estimated from prototype) | 20-25 |
| 5-6 (new instrument, without prototype) | 25-30 |

---

### **DART Mission (Double Asteroid Redirection Test)**

<aside>
💡

**DART summary**

The Double Asteroid Redirection Test (DART) mission was launched in November 2021 to **test planetary defence capabilities** by altering the orbit of an asteroid through **kinetic impact**. Using **autonomous navigation,** the spacecraft targeted Dimorphos, achieving impact in September 2022. This innovative, low-cost mission demonstrated precise trajectory control and asteroid deflection, **paving the way** for future planetary defence strategies.

</aside>

- **Objective**: Demonstrate asteroid deflection via kinetic impact.
- **Key Milestones**:
    - Launch: November 2021.
    - Impact: September 2022.
- **System Design Highlights**:
    - **Autonomous Navigation**: Utilised the SMART Nav system for precise asteroid targeting without ground intervention.
    - **Mission Concept**: Aimed to alter the orbit of Dimorphos (a moonlet of asteroid Didymos).
    - **Key System Drivers**: Focused on trajectory accuracy, robust communication links, and real-time image processing.
    - **Innovative Features**: Low-cost mission leveraging commercial launch systems and existing technologies.
    

### **Europa Clipper Mission**

<aside>
💡

**Europa Clipper summary:**
The Europa Clipper mission, led by NASA, is set to explore **Jupiter's moon Europa** to investigate its potential habitability. Launching in **October 2024**, the spacecraft will conduct **multiple flybys of Europa**, gathering data on its ice-covered surface, subsurface ocean, and geologic activity. Key objectives include studying the moon's composition, searching for signs of life, and assessing the thickness of its ice shell. The mission aims to provide critical insights into whether Europa could support microbial life, advancing our understanding of habitable environments beyond Earth.

</aside>

- **Objective**: Investigate the habitability of Jupiter's moon Europa.
- **Key Milestones**:
    - Launch: October 2024.
    - Arrival at Jupiter: 2030.
    - Duration: Approx. 4 years with ~50 Europa flybys.
- **System Design Highlights**:
    - **Radiation Shielding**: Advanced protective systems for high-radiation environments around Jupiter.
    - **Payload**: Includes remote sensing (UV to radar) and in situ instruments to study the ice shell, subsurface ocean, and surface composition.
    - **Key System Drivers**: High-priority on data transmission, radiation durability, and power efficiency.
    - **Orbit Design**: Utilises gravity assists to minimise time spent in Jupiter’s radiation belts, enhancing longevity and data collection.

## Facts to memorise

**performance parameters** (how good the system works) 

**measures of effectiveness (MoEs)**(how good the system meets the objectives)

---

## Clarifications

System Algorithms:

- Describe how good a subsystem or system works. This is often done for instruments. An Example is an algorithm to classify the relation of aperture size and resolution and the wavelength dependence of optical devices.
- The downside is that all real systems are imperfect which is not regarded in the formulas.

Costs often experience major growth between Phases C-D

- Certain Subsystems were forgotten
- Certain requirements over-constrain subsystems
- Requirements change late → redesign and wasted efforts
