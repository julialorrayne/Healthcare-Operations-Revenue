# Healthcare-Revenue-Operations-Analysis

## Background and Overview
This project analyzes Horizon Care’s operational and billing data to evaluate revenue cycle performance, appointment efficiency, and financial impact of no-shows.

The dataset contains mock historical data from January 2023 to December 2025, representing patient appointments, billing activity, and provider-level scheduling, visit duration, and departmental assignment data across multiple departments. 

The primary objective is to identify operational inefficiencies, such as no-show patterns and billing delays, and assess their financial impact to optimize operations and increase revenue.


**Tools Used:**
DBeaver · PostgreSQL · Tableau · Python


**Techniques:** 
Relational Database Design & Data Modeling  · SQL DDL & Constraint Enforcement · Exploratory Data Analysis (EDA) · Time-Series Analysis · SQL Querying & Data Integration · Data Visualization

DDL can be found here: 
Python can be found gere:
---

## Data Structure and ERD (Entity Relationship Diagram)

The dataset as seen below consists of six tables: billing, appointment, patient, diagnoses, doctor, department, and one associative table: appointment_diagnosis.

<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/ERD.png?raw=true"
       width="650" height="380">
</p>

---

## Executive Sumamary

This project analyzes Horizon Care’s operational and billing data (2023–2025) to evaluate appointment efficiency, provider utilization, and revenue cycle performance, with a focus on identifying preventable revenue loss driven by no-shows and scheduling inefficiencies.

## Key Findings

+ No-Show Concentration by Day of Week:
Midweek appointments (Tuesday–Thursday) experience 20–40% higher no-show volumes than the weekly average (16.7 no-shows), with Tuesday peaking at 23 no-shows. Mondays (10) and Fridays (11) consistently show the lowest missed appointments, indicating predictable weekly risk patterns rather than random behavior.

+ Early Morning Appointments Are Highest Risk:
No-shows peak during 8–10 AM appointments, with the highest volume at 8 AM, then decline steadily throughout the day. After 11 AM, missed appointments drop sharply and remain low, highlighting time-of-day as a major attendance driver.

+ Overall No-Show Rate Is Operationally Significant:
Approximately 15% of all scheduled appointments result in no-shows, representing a recurring source of lost capacity and unrealized revenue. Even a modest reduction of 3–5 percentage points would materially increase completed visits without additional staffing.

+ Seasonal Volatility in Appointment Demand:
Monthly appointment volume fluctuates around a 70-visit average, with peaks in March (103 visits) and November (~97), and a sharp decline in October (43). This uneven demand introduces avoidable inefficiencies in staffing and revenue planning.

+ Provider-Level Imbalances Drive Inefficiency:
Appointment volume varies widely across providers within the same department. In Oncology, one provider records 37 visits, far exceeding peers, while others remain underutilized. Similar imbalances appear across Cardiology and Orthopedics, increasing burnout risk and access delays.

+ No-Shows Are Provider-Specific, Not Random:
A small group of providers accounts for a disproportionate share of missed appointments—e.g., Rafael Lee (7 no-shows), Henrique Lee (7), Pedro King (6)—while several providers report 0–1 no-shows, demonstrating that lower no-show exposure is achievable under the same organizational conditions.

+ Visit Duration Varies Substantially by Provider:
Average visit times range from ~22 minutes to over 37 minutes, with the longest visits in Cardiology and Radiology. Uniform scheduling blocks fail to reflect this variability, contributing to idle time, delays, and throughput inefficiencies.

+ Revenue Is Stable but Operationally Constrained:
Monthly revenue fluctuates around a $13.8K average with short-term peaks and dips rather than sustained growth. Revenue variability closely mirrors appointment volume and no-show patterns, indicating that operational optimization—not volume expansion—is the primary growth lever.

## Strategic Recommendations

_Target No-Show Reduction Where Risk Is Highest:_
Deploy enhanced reminder workflows and confirmation requirements for midweek and early-morning appointments, and pilot controlled overbooking during high-risk periods to recapture lost capacity.

_Align Scheduling With Seasonal Demand Patterns:_
Adjust staffing levels and appointment availability during peak months (March, November), while introducing proactive outreach and follow-up scheduling during low-demand periods (July, October).

_Rebalance Provider Workloads Within Departments:_
Use provider-level appointment data to redirect routine visits toward underutilized providers, reducing burnout and improving patient access without increasing headcount.

_Address Provider-Specific No-Show Exposure:
Apply targeted scheduling and reminder strategies to providers with consistently higher no-show volumes, focusing on appointment timing and visit types rather than individual performance.

_Optimize Appointment Lengths:_
Replace uniform scheduling blocks with provider- and specialty-adjusted appointment templates to reduce idle time and downstream delays.

_Protect High-Value Appointments to Maximize Revenue:_
Prioritize no-show prevention for high-revenue visits through stronger confirmations and optimal time-slot allocation to maximize revenue per completed appointment.

---
## Operations Analysis

<p align="center">
<img src="https://raw.githubusercontent.com/julialorrayne/Projects-images/refs/heads/main/Healthcare/Healthcare%20Appointment%20Performance%20Dashboard.png" 
  width="900" height="1000">
</p>


---

**Key Findings**

<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/No-Shows%20by%20day%20of%20the%20week.png?raw=true"
       width="650" height="380">
</p>


Midweek appointments experience significantly higher no-show volumes compared to the weekly average.
Tuesday (23), Wednesday (22), and Thursday (20) exceed the weekly average of 16.7 no-shows by approximately 20–40%, making midweek the most operationally vulnerable period.

In contrast, Monday (10) and Friday (11) show the lowest no-show counts, while weekends remain closer to or below the weekly baseline.
This pattern suggests that no-shows are not evenly distributed across the week and are likely influenced by patient scheduling behavior and competing midweek commitments.

This concentration creates predictable idle capacity during peak staffing periods, amplifying both labor inefficiency and downstream revenue loss.


---


<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/No-Shows%20by%20time%20of%20the%20day.png?raw=true"
       width="650" height="380">
</p>


No-shows are highest during early morning appointment hours (8–10 AM), peaking at 8 AM, and then decline steadily throughout the day. After 11 AM, no-show volumes drop sharply and remain relatively low through the afternoon.

This pattern indicates a clear time-of-day effect on appointment attendance.

Why This Matters (Operational Impact)

Likely Operational Drivers

Patients struggle with morning readiness (transportation, childcare, work conflicts); Limited reminder effectiveness overnight; Higher likelihood of last-minute cancellations or no-shows due to rushed mornings


---


<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/Appts%20by%20month.png?raw=true"
       width="650" height="380">
</p>


Monthly appointment volume fluctuates significantly around an average of approximately 70 visits per month, with pronounced peaks and troughs throughout the year.

Peak volume occurs in March (103 visits) and November (~97 visits)

Lowest volume is observed in October (43 visits)

Several months (February, June, September, October) fall well below the average, indicating uneven demand distribution

This variability suggests strong seasonal and operational influences on appointment volume.

Because appointment volume directly drives revenue, these fluctuations introduce avoidable financial volatility when not proactively managed.


---


<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/Appts.%20by%20department%20and%20doctor.png?raw=true"
       width="750" height="420">
</p>


Appointment volume varies significantly both across departments and among individual providers, indicating uneven workload distribution and potential capacity imbalances within Horizon Care.

Oncology shows the highest overall appointment volumes, with Alice Clark (37 visits) significantly exceeding peers

Radiology and Neurology display more evenly distributed workloads, though individual provider variation remains

Orthopedics and Cardiology show moderate volumes but clear disparities between top- and low-performing providers

This variation suggests that provider scheduling, specialty demand, and patient assignment practices play a major role in appointment throughput.

Sustained provider imbalance increases patient wait times for high-demand providers while underutilizing available capacity elsewhere, raising both access and burnout risks.


---


<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/No-Shows.png?raw=true"
       width="650" height="380">
</p>


Approximately 15% of scheduled appointments result in no-shows, representing a significant and recurring source of lost capacity and revenue for Horizon Care.

Even a modest reduction of 3–5 percentage points would translate into a meaningful increase in completed visits without additional staffing costs.

---


<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/No-Shows%20by%20doctors.png?raw=true"
       width="650" height="380">
</p>


No-shows are not evenly distributed across providers. A small group of doctors account for a disproportionately high share of missed appointments, indicating that no-shows are influenced by provider-specific scheduling patterns rather than random patient behavior.

Top contributors include:

Rafael Lee – 7 no-shows

Henrique Lee – 7 no-shows

Pedro King – 6 no-shows

Meanwhile, several providers report 0–1 no-shows, demonstrating that lower no-show rates are achievable under the same organizational conditions.

This pattern does not imply provider performance issues, but rather highlights scheduling and patient mix differences that can be addressed operationally.


---


<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/Visit%20Time%20by%20department%20and%20doctor.png?raw=true"
       width="750" height="420">
</p>


Average visit duration varies significantly across departments and individual providers, ranging from approximately 22 minutes to over 37 minutes. This variation highlights meaningful differences in care complexity, workflow efficiency, and provider practice patterns.

The longest average visits are observed in:

Cardiology – up to 37.5 minutes

Radiology – up to 35.0 minutes

Oncology & Neurology – clustering around 30–32 minutes

Shorter visits (≈22–25 minutes) are concentrated among select providers within Oncology and Neurology.

Uniform scheduling blocks fail to reflect observed visit complexity, increasing both idle time and downstream delays.


---

## Financial Analysis
<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/Healthcare%20Financial%20Performance%20Dashboard.png?raw=true"
       width="900" height="900">
</p>

---

**Key Findings**

<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/revenue%20by%20month.png?raw=true"
       width="800" height="900">
</p>


Monthly revenue remains relatively stable across the year, fluctuating around an average of approximately $13.8K, with noticeable short-term peaks and dips rather than a sustained upward or downward trend.

The absence of a long-term upward trend suggests that operational improvements—not volume growth alone—are the primary lever for revenue optimization.

Revenue Pattern Observations

Above-average months:
March, April, June, August, October, and November consistently exceed the average revenue line, suggesting stronger operational performance during these periods.

Below-average months:
January, May, July, and September show revenue dips, with July representing the lowest point, indicating a potential seasonal or operational disruption.


---


<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/revenue%20by%20payer.png?raw=true"
       width="650" height="380">
</p>


Revenue is unevenly distributed across payers, with a small subset of patients contributing disproportionately higher total charges. The top payers generate nearly $1.9K–$1.7K each, while the majority cluster in a narrower mid-range around $1.1K–$1.3K.

This indicates moderate revenue concentration, not extreme dependence on a single payer, but still enough variation to warrant payer-level monitoring.

While payer concentration risk is moderate, protecting higher-revenue appointments from no-shows yields outsized financial returns.

---

<p align="center">
  <img src="https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/revenue%20by%20department%20and%20doctor.png?raw=true"
       width="750" height="420">
</p>


Revenue generation varies significantly both across departments and among providers within the same department, indicating that total revenue is driven by a combination of departmental service mix and individual provider performance.

While certain departments consistently generate higher revenue, there is also noticeable intra-department variability, suggesting differences in case complexity, visit volume, and procedure mix among doctors.

High revenue variability within departments indicates that provider-level optimization can materially impact total departmental performance without expanding capacity.

---

## Recommendations

### 1. Implement Targeted No-Show Reduction Strategies (Highest Impact)
Midweek and early-morning appointments represent the highest no-show risk and revenue leakage.

- Deploy enhanced reminder workflows (SMS + email) for Tuesday–Thursday and 8–10 AM appointments
- Require same-day confirmations for high-risk slots
- Pilot controlled overbooking using historical no-show rates

---

### 2. Align Scheduling Capacity With Seasonal Demand
Appointment volume and revenue fluctuate significantly throughout the year.

- Adjust staffing and appointment availability during peak months (March, November)
- Expand proactive outreach during historically low-demand months (July, October)

---

### 3. Balance Provider Workloads Within Departments
Appointment volume varies widely among providers within the same department.

- Redirect routine visits to underutilized providers
- Protect high-volume providers from sustained overload
- Use provider appointment volume as an operational KPI

---

### 4. Address Provider-Specific No-Show Exposure
A small group of providers account for a disproportionate share of no-shows.

- Review scheduling patterns and visit types associated with higher no-shows
- Apply targeted reminder and confirmation workflows where risk is elevated

---

### 5. Optimize Appointment Lengths Using Visit Duration Data
Observed visit durations vary significantly by provider and specialty.

- Adjust appointment templates to better reflect real visit times
- Standardize best-performing workflows to reduce delays and idle time

---

### 6. Protect High-Value Appointments to Maximize Revenue
Revenue concentration indicates certain visits have outsized financial impact.

- Apply stronger confirmation requirements to high-value appointments
- Reserve optimal time slots for revenue-critical visit types
- Minimize rescheduling of high-impact visits

