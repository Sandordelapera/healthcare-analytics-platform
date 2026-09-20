-- View: public.vw_admissions_by_month

CREATE OR REPLACE VIEW public.vw_admissions_by_month
AS
SELECT
    EXTRACT(month FROM "Date of Admission") AS admission_month,
    to_char(
        "Date of Admission"::timestamp with time zone,
        'Month'::text
    ) AS month_name,
    count(*) AS total_admissions
FROM healthcare_dataset
GROUP BY
    EXTRACT(month FROM "Date of Admission"),
    to_char(
        "Date of Admission"::timestamp with time zone,
        'Month'::text
    )
ORDER BY EXTRACT(month FROM "Date of Admission");


-- View: public.vw_average_age

CREATE OR REPLACE VIEW public.vw_average_age
AS
SELECT
    round(avg(age), 2) AS average_age
FROM healthcare_dataset;


-- View: public.vw_average_billing

CREATE OR REPLACE VIEW public.vw_average_billing
AS
SELECT
    round(avg(billing_amount), 2) AS average_billing
FROM healthcare_dataset;


-- View: public.vw_gender_patients

CREATE OR REPLACE VIEW public.vw_gender_patients
AS
SELECT
    gender,
    count(*) AS total_patients
FROM healthcare_dataset
GROUP BY gender;


-- View: public.vw_medical_conditions

CREATE OR REPLACE VIEW public.vw_medical_conditions
AS
SELECT
    "Medical Condition",
    count(*) AS total_patients
FROM healthcare_dataset
GROUP BY "Medical Condition"
ORDER BY count(*) DESC;


-- View: public.vw_monthly_revenue

CREATE OR REPLACE VIEW public.vw_monthly_revenue
AS
SELECT
    EXTRACT(month FROM "Date of Admission") AS admission_month,
    to_char(
        "Date of Admission"::timestamp with time zone,
        'Month'::text
    ) AS month_name,
    sum(billing_amount) AS monthly_revenue
FROM healthcare_dataset
GROUP BY
    EXTRACT(month FROM "Date of Admission"),
    to_char(
        "Date of Admission"::timestamp with time zone,
        'Month'::text
    )
ORDER BY EXTRACT(month FROM "Date of Admission");


-- View: public.vw_revenue_by_condition

CREATE OR REPLACE VIEW public.vw_revenue_by_condition
AS
SELECT
    "Medical Condition" AS medical_condition,
    round(sum(billing_amount), 2) AS total_revenue
FROM healthcare_dataset
GROUP BY "Medical Condition"
ORDER BY round(sum(billing_amount), 2) DESC;


-- View: public.vw_revenue_by_gender

CREATE OR REPLACE VIEW public.vw_revenue_by_gender
AS
SELECT
    gender,
    round(sum(billing_amount), 2) AS total_revenue
FROM healthcare_dataset
GROUP BY gender;


-- View: public.vw_revenue_ranking

CREATE OR REPLACE VIEW public.vw_revenue_ranking
AS
SELECT
    "Medical Condition" AS medical_condition,
    sum(billing_amount) AS total_revenue,
    rank() OVER (
        ORDER BY sum(billing_amount) DESC
    ) AS revenue_rank
FROM healthcare_dataset
GROUP BY "Medical Condition";


-- View: public.vw_total_hospitals

CREATE OR REPLACE VIEW public.vw_total_hospitals
AS
SELECT
    count(DISTINCT hospital) AS total_hospitals
FROM healthcare_dataset;


-- View: public.vw_total_patients

CREATE OR REPLACE VIEW public.vw_total_patients
AS
SELECT
    count(*) AS total_patients
FROM healthcare_dataset;


-- View: public.vw_total_revenue

CREATE OR REPLACE VIEW public.vw_total_revenue
AS
SELECT
    round(sum(billing_amount), 2) AS total_revenue
FROM healthcare_dataset;
