USE telecom_churn;

DROP TABLE IF EXISTS customer_churn_clean;

CREATE TABLE customer_churn_clean AS

SELECT

customerID,
gender,
SeniorCitizen,
Partner,
Dependents,
tenure,

PhoneService,
MultipleLines,
InternetService,
OnlineSecurity,
OnlineBackup,
DeviceProtection,
TechSupport,
StreamingTV,
StreamingMovies,

Contract,
PaperlessBilling,
PaymentMethod,

MonthlyCharges,

CASE
    WHEN TRIM(TotalCharges) = ''
    THEN NULL
    ELSE CAST(TotalCharges AS DECIMAL(10,2))
END AS TotalCharges,

Churn

FROM customer_churn_raw;

