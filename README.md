# Suncor – ESP Diagnostics and Solids Analysis (Firebag SAGD Site)

> ⚠️ **Note:** This project involved confidential operational data from Suncor’s Firebag SAGD operations. All operational details and data have been redacted. The repository contains **code structure, figures, and synthetic/demo examples only** to illustrate the methodology.

---

## Overview
This project documents the development of a **data-driven diagnostic platform** for **Electric Submersible Pumps (ESPs)** operating in SAGD wells at **Suncor’s Firebag site**.  
The work began as an analysis of **solids-related performance losses** and evolved into a robust system for **classifying snapped ESP shafts on legacy PADs without torque sensors**, using only electrical and hydraulic signals.

The platform combines:
- 3-phase induction motor and VFD signal analysis  
- Fluid mechanics & energy balance modeling for ideal hydraulic power  
- Python-based analytics and visualization for real-time diagnostics  
- PI Vision dashboards for operations-facing decision support  

---

## Objectives
- Quantify and mitigate solids-related inefficiencies (sand, scale, or corrosion products)  
- Build a physics-based model using the energy equation to estimate ideal hydraulic power  
- Compare measured vs. modeled power to infer frictional and mechanical losses  
- Implement a diagnostic algorithm to flag and immediately classify snapped-shaft failures on legacy equipment lacking torque measurement  
- Deliver results in operator-friendly tools integrated with existing workflows and PI Vision  

---

## Key Work
- Performed a full energy balance (pressure head, velocity head, elevation) to compute ideal ESP power, incorporating flow rate, tubing ID, TVD, and head losses  
- Built a Python pipeline using Pandas, NumPy, and Plotly to process high-resolution time-series data  
  - 30-day intervals ≈ 45,000 datapoints per well  
  - Full ESP lifetime analyses exceeded 1,000,000 datapoints per well  
- Derived Hydraulic/Ideal Power ratios and percent-change features to detect instability patterns associated with shaft failure  
- Enabled immediate snapped-shaft classification, preventing diagnostic delays and unnecessary flush operations  
- Validated performance against historical shaft failures and chemical stimulation events  
- Delivered interactive Plotly dashboards for engineers and PI Vision displays mapping subsurface-to-plant flow paths using mass balance and P&ID data  

---

## Hardware & Control Understanding
- Analyzed the full electromechanical chain:  
  **VFD outputs → step-up transformers → downhole 3-phase induction motor → surface transformers and junction boxes**
- Connected power electronics and control systems concepts to measured signals (current, frequency, delivered hydraulic power)  
- Studied how voltage conversion and control loop dynamics affect ESP response, torque behavior, and signal stability  

---

## Results & Impact
- Immediate failure classification eliminated hours of troubleshooting per event  
- Reduced downtime and prevented unnecessary boiler feedwater flushes  
- Contributed to an estimated annual savings of \$2.5 million through early failure detection and streamlined maintenance  
- Operations visibility: PI Vision dashboards allowed engineers to quickly locate bottlenecks and recover up to \$18,000/hr in lost production during certain events  

---

## Author
**Mueez Mughal**  
Production Engineer Intern — Firebag Exploitation, Suncor Energy  
📧 mueezmmughal7@gmail.com
