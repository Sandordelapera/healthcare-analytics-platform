-- View: public.vw_healthcare_master

-- DROP VIEW public.vw_healthcare_master;

CREATE OR REPLACE VIEW public.vw_healthcare_master
AS
SELECT
    name AS patient_name,
    age,
    gender,
    "Blood Type" AS blood_type,
    "Medical Condition" AS medical_condition,
    "Date of Admission" AS date_of_admission,
    EXTRACT(month FROM "Date of Admission")::integer AS admission_month,
    to_char(
        "Date of Admission"::timestamp with time zone,
        'Month'::text
    ) AS admission_month_name,
    doctor,
    hospital,
    insurance_provider,
    billing_amount,
    room_number,
    admission_type,
    discharge_date,
    medication,
    test_results
FROM healthcare_dataset;

ALTER TABLE public.vw_healthcare_master
    OWNER TO postgres;
