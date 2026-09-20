# Data

This project uses the **Healthcare Dataset** created by **Prasad Patil (prasad22)** and published on Kaggle.

## Dataset Source

- **Dataset:** Healthcare Dataset
- **Author:** Prasad Patil
- **Platform:** Kaggle
- **Source file:** `healthcare_dataset.csv`
- **Original file size:** approximately 8.4 MB
- **Dataset type:** Synthetic healthcare data
- **License:** CC0: Public Domain
- **Source:** https://www.kaggle.com/datasets/prasad22/healthcare-dataset

## Dataset Description

The dataset contains synthetic healthcare records designed for data analysis, machine learning, and educational use.

It includes healthcare-related attributes such as:

- Patient demographics
- Medical conditions
- Admission information
- Discharge information
- Doctors
- Hospitals
- Insurance providers
- Billing amounts
- Medications
- Test results
- Admission types
- Room information

The dataset does not contain real patient information.

## Use in This Project

The original CSV dataset was imported into PostgreSQL and used to build the `healthcare_db` analytical environment.

The final portfolio architecture uses the centralized PostgreSQL View:

`vw_healthcare_master`

Tableau connects to this analytical structure through:

`DS_vw_healthcare_master (healthcare_db)`

The final Tableau packaged workbook contains an extract of the centralized analytical dataset, allowing the portfolio dashboards to be reviewed without requiring access to the original PostgreSQL environment.

## Data Distribution

The original `healthcare_dataset.csv` file is not included separately in this repository.

The dataset is available from the original Kaggle source under the **CC0: Public Domain** license. The packaged Tableau workbook contains the analytical extract required to review the completed dashboards.

## Privacy

The source dataset is entirely synthetic and does not contain personally identifiable information or real patient healthcare records.
