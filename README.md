# Healthcare-Revenue-Operations-Analysis

## Background and Overview
This project analyzes Horizon Care’s operational and billing data to evaluate revenue cycle performance, appointment efficiency, and financial impact of no-shows.

The dataset contains mock historical data from January 2023 to December 2025, representing patient appointments, billing activity, and provider information across multiple departments. 

The primary objective is to identify operational inefficiencies, such as no-show patterns and billing delays, and assess their financial impact to optimize operations and increase revenue.


**Tools Used:**
DBeaver · PostgreSQL · Tableau · Python


**Techniques:** 
Relational Database Design & Data Modeling  · SQL DDL & Constraint Enforcement · Exploratory Data Analysis (EDA) · Time-Series Analysis · SQL Querying & Data Integration · Data Visualization

---

## Data Structure and ERD(Entity Relationship Diagram)

The dataset as seen below consists of six tables: billing, appointment, patient, diagnoses, doctor, department, and one associative table: appointment_diagnosis.

![ERD](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/ERD.png?raw=true)


## Executive Sumamary

**Key Findings**


![KPIs Appts. Performance](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/KPIs%20Appt.%20Performance.png?raw=true)


### No-Shows by Day of the Week


![ No-Shows by Day of the Week](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/No-Shows%20by%20day%20of%20the%20week.png?raw=true)


Midweek appointments experience significantly higher no-show volumes compared to the weekly average.
Tuesday (23), Wednesday (22), and Thursday (20) exceed the weekly average of 16.7 no-shows by approximately 20–40%, making midweek the most operationally vulnerable period.

In contrast, Monday (10) and Friday (11) show the lowest no-show counts, while weekends remain closer to or below the weekly baseline.
This pattern suggests that no-shows are not evenly distributed across the week and are likely influenced by patient scheduling behavior and competing midweek commitments.


Operational Recommendation

Prioritize enhanced appointment reminders (SMS/email) for Tuesday–Thursday visits

Consider controlled overbooking or waitlist activation during midweek

Align staffing and provider schedules to account for predictable midweek attrition


### No-Shows Peak in the Early Morning (8–10 AM)


![No-Shows Peak in the Early Morning](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/No-Shows%20by%20time%20of%20the%20day.png?raw=true)

No-shows are highest during early morning appointment hours (8–10 AM), peaking at 8 AM, and then decline steadily throughout the day. After 11 AM, no-show volumes drop sharply and remain relatively low through the afternoon.

This pattern indicates a clear time-of-day effect on appointment attendance.

Why This Matters (Operational Impact)

Possible Contributing Factors

Patients struggle with morning readiness (transportation, childcare, work conflicts); Limited reminder effectiveness overnight; Higher likelihood of last-minute cancellations or no-shows due to rushed mornings

Data-Driven Recommendations

Targeted Reminder Strategy:
Send enhanced reminders (SMS + email) for 8–10 AM appointments, including same-morning confirmations.

Overbooking Optimization:
Slightly overbook early morning slots using historical no-show rates to offset expected losses.

Appointment Slot Rebalancing:
Reserve early morning appointments for lower-risk patient groups or follow-ups with historically higher attendance.

Operational Scheduling Adjustments:
Schedule administrative tasks, team huddles, or buffer time during early hours to mitigate idle capacity risk.

### Monthly Appointments Fluctuate Around a 70-Visit Average


![Monthly Appointments Fluctuate Around a 70-Visit Average](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/Appts%20by%20month.png?raw=true)


Monthly appointment volume fluctuates significantly around an average of approximately 70 visits per month, with pronounced peaks and troughs throughout the year.

Peak volume occurs in March (103 visits) and November (~97 visits)

Lowest volume is observed in October (43 visits)

Several months (February, June, September, October) fall well below the average, indicating uneven demand distribution

This variability suggests strong seasonal and operational influences on appointment volume.


Recommendations

Demand Smoothing:
Introduce targeted outreach and reminder campaigns during historically low-volume months to stabilize appointment volume.

Staffing Optimization:
Align provider schedules and staffing levels with seasonal demand patterns to reduce burnout during peaks and idle time during dips.

Preventive Scheduling Strategy:
Encourage advance booking and follow-ups in low-demand months to improve utilization and continuity of care.

Revenue Planning:
Use monthly volume trends to forecast revenue more accurately and mitigate financial volatility.

### Appointments by Department and Provider


![Appointments by Department and Provider](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/Appts.%20by%20department%20and%20doctor.png?raw=true)


Appointment volume varies significantly both across departments and among individual providers, indicating uneven workload distribution and potential capacity imbalances within Horizon Care.

Oncology shows the highest overall appointment volumes, with Alice Clark (37 visits) significantly exceeding peers

Radiology and Neurology display more evenly distributed workloads, though individual provider variation remains

Orthopedics and Cardiology show moderate volumes but clear disparities between top- and low-performing providers

This variation suggests that provider scheduling, specialty demand, and patient assignment practices play a major role in appointment throughput.

Department-Level Observations

Recommendations

Workload Balancing:
Reallocate appointments more evenly within departments where possible, especially in Oncology and Cardiology.

Capacity Optimization:
Identify underutilized providers and expand availability or referral pathways to improve throughput.

Provider Performance Monitoring:
Use appointment volume as an operational KPI to detect sustained overload or underuse.

Patient Access Improvement:
Redirect overflow demand to available providers to reduce wait times and no-show risk.

### No-Shows


![No-Shows](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/No-Shows.png?raw=true)


Approximately 15% of scheduled appointments result in no-shows, representing a significant and recurring source of lost capacity and revenue for Horizon Care.


### No-Shows by Provider


![No-Shows by Doctor](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/No-Shows%20by%20doctors.png?raw=true)


No-shows are not evenly distributed across providers. A small group of doctors account for a disproportionately high share of missed appointments, indicating that no-shows are influenced by provider-specific scheduling patterns rather than random patient behavior.

Top contributors include:

Rafael Lee – 7 no-shows

Henrique Lee – 7 no-shows

Pedro King – 6 no-shows

Meanwhile, several providers report 0–1 no-shows, demonstrating that lower no-show rates are achievable under the same organizational conditions.


### Average Visit Time by Department and Provider


![Average Visit Time by Department and Provider](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/Visit%20Time%20by%20department%20and%20doctor.png?raw=true)


Average visit duration varies significantly across departments and individual providers, ranging from approximately 22 minutes to over 37 minutes. This variation highlights meaningful differences in care complexity, workflow efficiency, and provider practice patterns.

The longest average visits are observed in:

Cardiology – up to 37.5 minutes

Radiology – up to 35.0 minutes

Oncology & Neurology – clustering around 30–32 minutes

Shorter visits (≈22–25 minutes) are concentrated among select providers within Oncology and Neurology.

Data-Driven Recommendations

Adjust appointment slot lengths by provider and department rather than using uniform scheduling blocks.

Benchmark Best Practices
Analyze workflows of providers with consistently shorter visit times without elevated no-show or cancellation rates.


![Financial Performance Dashboard](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/Healthcare%20Financial%20Performance%20Dashboard.png?raw=true)




![KPIs finance](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/KPIs%20finance.png?raw=true)


### Monthly Revenue Fluctuates Around a $13.8K Average


![Monthly Revenue Fluctuates Around a $13.8K Average](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/revenue%20by%20month.png?raw=true)


Monthly revenue remains relatively stable across the year, fluctuating around an average of approximately $13.8K, with noticeable short-term peaks and dips rather than a sustained upward or downward trend.

Revenue Pattern Observations

Above-average months:
March, April, June, August, October, and November consistently exceed the average revenue line, suggesting stronger operational performance during these periods.

Below-average months:
January, May, July, and September show revenue dips, with July representing the lowest point, indicating a potential seasonal or operational disruption.


Recommendations

Target Revenue Dips Proactively
Focus no-show reduction strategies and reminder interventions ahead of historically weaker months (e.g., July, September).

Improve Revenue per Visit


### Total Revenue by Payer


![Total Revenue by Payer](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/revenue%20by%20payer.png?raw=true)


Revenue is unevenly distributed across payers, with a small subset of patients contributing disproportionately higher total charges. The top payers generate nearly $1.9K–$1.7K each, while the majority cluster in a narrower mid-range around $1.1K–$1.3K.

This indicates moderate revenue concentration, not extreme dependence on a single payer, but still enough variation to warrant payer-level monitoring.

### Total Revenue by Department and Doctor


![Total Revenue by Department and Doctor](https://github.com/julialorrayne/Projects-images/blob/main/Healthcare/revenue%20by%20department%20and%20doctor.png?raw=true)


Revenue generation varies significantly both across departments and among providers within the same department, indicating that total revenue is driven by a combination of departmental service mix and individual provider performance.

While certain departments consistently generate higher revenue, there is also noticeable intra-department variability, suggesting differences in case complexity, visit volume, and procedure mix among doctors.

**Strategic Recommendations**


## Key Insights  

## Recommendations

