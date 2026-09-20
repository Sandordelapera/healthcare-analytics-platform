# Tableau Components

This folder contains the Tableau components developed for the Healthcare Analytics Platform.

Tableau workbook:

- `Healthcare_Analytics_Platform.twbx`

The Tableau workbook is based on the centralized data source `DS_vw_healthcare_master (healthcare_db)` and includes reusable analytical logic, KPIs, worksheets, five executive dashboards, interactive filters, Dashboard Filter Actions, and Highlight Actions.

The five executive dashboards are:

- Comparative Analytics Dashboard
- Revenue Distribution Dashboard
- Patient Demographics Dashboard
- Clinical & Medical Conditions Dashboard
- Healthcare Operations Dashboard

## Portable Workbook

`Healthcare_Analytics_Platform.twbx` is distributed as a Tableau Packaged Workbook and includes a Tableau extract of the centralized analytical dataset.

The packaged extract allows the five executive dashboards to be opened and explored without requiring access to the original local PostgreSQL environment.

The workbook retains the original PostgreSQL connection metadata for data refresh purposes, but the included extract supports standalone portfolio review.

The final portfolio workbook contains:

- 5 executive dashboards
- 44 supporting worksheets
- 1 centralized analytical data source
- 1 Tableau Set for comparative segmentation
- Reusable Calculated Fields and Table Calculations
- Interactive filters
- Dashboard Filter Actions
- Highlight Actions
