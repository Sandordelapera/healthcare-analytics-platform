# Healthcare Analytics Platform

**End-to-end Healthcare Business Intelligence portfolio project using PostgreSQL, SQL, and Tableau Desktop.**

## Project Overview

The Healthcare Analytics Platform is an end-to-end Business Intelligence portfolio project designed to transform structured healthcare data into consistent, interactive, and decision-oriented analytical information.

The solution combines PostgreSQL and SQL for relational data management and centralized analytical preparation with Tableau Desktop for analytical calculations, KPI development, visualization, dashboard design, and interactive exploration.

The final analytical environment includes five executive dashboards covering Comparative Analytics, Revenue Distribution, Patient Demographics, Clinical & Medical Conditions, and Healthcare Operations.

## Architecture & Technologies

The platform follows a layered Business Intelligence architecture that separates data management, centralized analytical preparation, analytical logic, visualization, interaction, and presentation responsibilities.

The solution is centered on the PostgreSQL database `healthcare_db` and the centralized analytical View `vw_healthcare_master`. Tableau Desktop consumes this standardized structure through `DS_vw_healthcare_master (healthcare_db)`, providing a common analytical foundation for the five executive dashboards.

### Technology Stack

- **PostgreSQL** — relational database environment and centralized healthcare data management
- **SQL** — querying, analytical preparation, validation, and View development
- **Tableau Desktop** — analytical calculations, KPIs, visualization, dashboards, filters, and interactive analysis

### Analytical Flow

**Healthcare Data → PostgreSQL `healthcare_db` → `vw_healthcare_master` → Tableau Analytics → KPIs & Worksheets → Executive Dashboards**

## Key Analytical Capabilities

The Healthcare Analytics Platform demonstrates reusable analytical logic and interactive Business Intelligence capabilities across financial, demographic, clinical, comparative, and operational analysis.

Key capabilities include:

- **Calculated Fields and LOD Expressions** for reusable analytical measures and controlled calculation granularity
- **Table Calculations** for ranking, percentages, Running Totals, and Moving Averages
- **Sets and Parameters** for segmentation and dynamic analytical behavior
- **Selected versus Others Analysis** for controlled comparative analysis
- **Standardized KPI Framework** across multiple analytical domains
- **Interactive Filters and Dashboard Filter Actions** for focused investigation
- **Highlight Actions** for contextual relationship analysis
- **Trend, Ranking, and Contribution Analysis** across operational and financial perspectives

## Five Executive Dashboards

The final Healthcare Analytics Platform includes five executive dashboards, each focused on a distinct analytical perspective while sharing the same centralized PostgreSQL and Tableau analytical foundation.

### Comparative Analytics Dashboard
Supports Selected versus Others analysis to compare selected populations with the remaining dataset across revenue, patient counts, and related analytical measures.

### Revenue Distribution Dashboard
Examines revenue distribution across medical conditions using KPIs, ranking, percentage contribution, and comparative financial analysis.

### Patient Demographics Dashboard
Analyzes patient characteristics through age, gender, blood type, age-group composition, and insurance-provider perspectives.

### Clinical & Medical Conditions Dashboard
Provides condition-level and clinical analysis across patient populations, medical conditions, medications, test results, and related healthcare attributes.

### Healthcare Operations Dashboard
Evaluates admissions, discharges, billing activity, length of stay, admission types, insurance-provider revenue, test results, and monthly operational trends.

## Technical Skills Demonstrated

- **PostgreSQL & SQL** — relational data management, querying, centralized analytical preparation, and reusable View design
- **Tableau Desktop** — Calculated Fields, LOD Expressions, Table Calculations, Sets, Parameters, KPIs, worksheets, and dashboards
- **Analytical Methods** — comparative analysis, segmentation, ranking, percentage contribution, Running Totals, Moving Averages, and time-based analysis
- **Dashboard Development** — financial, demographic, clinical, comparative, and operational analytics
- **Interactive Analytics** — filters, Dashboard Filter Actions, and Highlight Actions
- **BI Architecture** — separation of data preparation, analytical logic, visualization, interaction, and presentation responsibilities
- **Validation & Documentation** — analytical validation, architectural documentation, and professional portfolio presentation

## Project Documentation & Repository Structure

The repository is organized to provide both a concise portfolio view and access to the supporting technical materials developed for the Healthcare Analytics Platform.

```text
healthcare-analytics-platform/
│
├── README.md
│
├── docs/
│   ├── Healthcare_Analytics_Technical_Documentation.pdf
│   └── Healthcare_Analytics_Executive_Portfolio_Summary.pdf
│
├── sql/
│   ├── README.md
│   ├── healthcare_db_setup.sql
│   ├── vw_healthcare_master.sql
│   └── development_views.sql
│
├── tableau/
│   ├── README.md
│   └── Healthcare_Analytics_Platform.twbx
│
├── dashboards/
│   ├── comparative_analytics.png
│   ├── revenue_distribution.png
│   ├── patient_demographics.png
│   ├── clinical_medical_conditions.png
│   └── healthcare_operations.png
│
├── architecture/
│   └── healthcare_analytics_architecture.png
│
└── data/
    └── README.md 
```
## Portfolio Focus

**Healthcare Data Analytics • Business Intelligence • Tableau Development • SQL Analytics**
