USE telecom_churn;

DROP TABLE IF EXISTS customer_churn_raw;

CREATE TABLE customer_churn_raw (

customerID VARCHAR(50),
gender VARCHAR(20),
SeniorCitizen INT,
Partner VARCHAR(10),
Dependents VARCHAR(10),
tenure INT,

PhoneService VARCHAR(30),
MultipleLines VARCHAR(50),
InternetService VARCHAR(50),
OnlineSecurity VARCHAR(50),
OnlineBackup VARCHAR(50),
DeviceProtection VARCHAR(50),
TechSupport VARCHAR(50),
StreamingTV VARCHAR(50),
StreamingMovies VARCHAR(50),

Contract VARCHAR(50),
PaperlessBilling VARCHAR(10),
PaymentMethod VARCHAR(100),

MonthlyCharges DECIMAL(10,2),
TotalCharges VARCHAR(50),

Churn VARCHAR(10)

);
