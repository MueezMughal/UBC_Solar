# Suncor – ESP Diagnostics and Solids Analysis (Firebag SAGD Site)

> ⚠️ **Note:** This project involved confidential operational data from Suncor’s Firebag SAGD operations. All operational details have been redacted for privacy.

## Overview
This project documents the development of a **data-driven diagnostic tool** for **Electric Submersible Pumps (ESPs)** operating in SAGD wells at **Suncor’s Firebag site**.  
Initially focused on investigating **solids-related performance losses**, the work evolved into a method for **detecting snapped ESP shafts** on legacy PADs **without torque sensors**—using purely electrical and hydraulic data.  

By combining **fluid mechanics modeling**, **PI data aggregation**, and **Python-based analytics**, the tool provides real-time insight into ESP health and operational efficiency.

## Objectives
- Identify and mitigate **solids-related inefficiencies** in ESP wells (sand, scale, or corrosion products)  
- Develop a **physics-based model** using the **energy equation** to estimate ideal hydraulic power  
- Compare modeled vs. measured power to infer frictional and mechanical losses  
- Create a **diagnostic algorithm** capable of flagging **shaft failures** before catastrophic breakdowns  
- Integrate results into existing **PI Vision workflows** for field engineer accessibility  

## Key Work
- Conducted a full **energy balance** from reservoir to wellhead, incorporating head losses, flow rate, and elevation to calculate **ideal ESP power**  
- Built a **Python pipeline** (Pandas, NumPy, Plotly) to process **~45,000 datapoints per well** at 1-minute resolution  
- Derived **hydraulic/ideal power ratios** and monitored instability patterns to detect snapped shafts **4–12 hours prior** to failure  
- Validated the model against historical ESP failures and **chemical stimulation** events, confirming predictive accuracy for solids buildup  
- Automated data cleaning, aggregation, and visualization via a **modular script** and interactive Plotly dashboard  
- Proposed integration into the **standard operating procedure (SOP)** for PADs with **legacy variable frequency drives (VFDs)**  
- Achieved an estimated **annual cost savings of \$2.5 million** through early fault detection and reduced unnecessary flush operations  

## Technologies Used
`Python` • `Pandas` • `NumPy` • `Plotly` • `Excel` • `PI Vision` • `Fluid Mechanics Modeling` • `Root Cause Failure Analysis (RCFA)` • `SAGD ESP Systems`

## Author
**Mueez Mughal**  
Production Engineer Intern | Firebag Exploitation, Suncor Energy  
📧 mmugha01@student.ubc.ca
