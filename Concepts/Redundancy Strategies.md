Depending on the lifetime or class of the mission, different redundancy strategies can be applied. The most common strategies to increase [[Reliability Considerations|reliability]] are:

- **Single-string**: The most basic strategy, where only one component is used for each function.
- **Block redundancy**: A group of components is used to perform the same function. If one of the components fails, the other block can take over.
- **Cross-strapping**: The components are connected in a way that allows them to be used interchangeably.

![[Pasted image 20241230171633.png]]
*SMAD, Figure 14-1: Different Types of Redundancy*

The table below shows the typical redundancy strategy based on the lifetime of the mission[^1]:

| Lifetime  | Redundancy           |
| --------- | -------------------- |
| <1 year   | Single-string        |
| 1–3 years | Selected redundancy  |
| 3–5 years | Block redundancy     |
| >5 years  | Fully-cross strapped |

## Single-String Systems
- Suitable for short missions
- Any failure generally leads to mission loss
- Benefits:
  - Simpler testing process
  - Can be very reliable with thorough testing and careful part selection
  - Examples: NASA's Small Explorers and AMSAT spacecraft (10-20 years operation)
- Limitations:
  - Vulnerable to single-point failures
  - Limited graceful degradation options

## Redundancy Implementation
- Consider redundancy for missions beyond 1 year
- Priority areas for redundancy:
  1. Hard-to-test components (deployments, actuators, propulsion systems)
  2. Complex circuits with analog components (e.g., power converters)
- Types of redundancy:
  - **Block-redundant**: Switching all components to alternate side
  - **Cross-strapped**: Individual components can be switched independently
  - **Functional redundancy**: Different components providing same function

[^1]: J. R. Wertz and W. J. Larson, "Space Mission Engineering: The New SMAD," Microcosm Press, 2011, page 400.
