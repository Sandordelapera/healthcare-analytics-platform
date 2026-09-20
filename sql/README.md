# SQL Components

This folder contains the PostgreSQL and SQL components developed and verified for the Healthcare Analytics Platform.

## SQL Files

- `vw_healthcare_master.sql` — Contains the centralized analytical View used as the foundation for the final Tableau environment.
- `development_views.sql` — Contains twelve additional Views created during the development and learning stages of the project.

## Final Analytical Architecture

The final analytical architecture is centered on the PostgreSQL database `healthcare_db` and the centralized analytical View `vw_healthcare_master`.

The View `vw_healthcare_master` standardizes the healthcare dataset and provides the consistent analytical structure used by the Tableau data source `DS_vw_healthcare_master (healthcare_db)`.

## Development Views

The project also includes twelve additional PostgreSQL Views developed during earlier analytical and learning stages:

- `vw_admissions_by_month`
- `vw_average_age`
- `vw_average_billing`
- `vw_gender_patients`
- `vw_medical_conditions`
- `vw_monthly_revenue`
- `vw_revenue_by_condition`
- `vw_revenue_by_gender`
- `vw_revenue_ranking`
- `vw_total_hospitals`
- `vw_total_patients`
- `vw_total_revenue`

These Views are retained as development artifacts and demonstrate SQL aggregation, grouping, ranking, time-based analysis, KPI calculations, and revenue analysis.

They are not data sources for the five final executive dashboards.

## Database Setup

A standalone database setup script is not included in this repository. The SQL files published here are based only on PostgreSQL objects verified directly from the completed project database.
