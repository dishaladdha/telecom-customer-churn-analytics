DROP TABLE IF EXISTS dim_contract;

CREATE TABLE dim_contract AS

SELECT DISTINCT
Contract
FROM customer_churn_analytics;


USE telecom_churn;
DROP TABLE IF EXISTS dim_internet_service;
CREATE TABLE dim_internet_service AS
SELECT DISTINCT
InternetService
FROM customer_churn_analytics;

DROP TABLE IF EXISTS dim_payment_method;
CREATE TABLE dim_payment_method AS
SELECT DISTINCT
PaymentMethod
FROM customer_churn_analytics;

DROP TABLE IF EXISTS fact_customer_churn;
CREATE TABLE fact_customer_churn AS
SELECT

customerID,
Contract,
InternetService,
PaymentMethod,
gender,
SeniorCitizen,
tenure,
MonthlyCharges,
TotalCharges,
Churn,
ChurnFlag,
TenureGroup,
MonthlyChargeSegment

FROM customer_churn_analytics;



