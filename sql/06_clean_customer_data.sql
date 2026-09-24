USE telecom_churn;

DROP TABLE IF EXISTS customer_churn_analytics;

CREATE TABLE customer_churn_analytics AS

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
TotalCharges,

Churn,

CASE
    WHEN Churn = 'Yes' THEN 1
    ELSE 0
END AS ChurnFlag,

CASE
    WHEN tenure <= 12 THEN '0-12 Months'
    WHEN tenure <= 24 THEN '13-24 Months'
    WHEN tenure <= 48 THEN '25-48 Months'
    ELSE '49+ Months'
END AS TenureGroup,

CASE
    WHEN MonthlyCharges < 35 THEN 'Low'
    WHEN MonthlyCharges < 70 THEN 'Medium'
    ELSE 'High'
END AS MonthlyChargeSegment,

CASE
    WHEN tenure <= 12 THEN 1
    WHEN tenure <= 24 THEN 2
    WHEN tenure <= 48 THEN 3
    ELSE 4
END AS TenureSortOrder

FROM customer_churn_clean;


