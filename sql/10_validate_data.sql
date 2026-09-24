SHOW TABLES;

SELECT COUNT(*)
FROM customer_churn_clean;

SELECT COUNT(*)
FROM customer_churn_clean
WHERE TotalCharges IS NULL;

DESCRIBE customer_churn_clean;

SELECT COUNT(*)
FROM customer_churn_analytics;

SELECT DISTINCT ChurnFlag
FROM customer_churn_analytics;

SELECT
TenureGroup,
COUNT(*)
FROM customer_churn_analytics
GROUP BY TenureGroup;

SELECT
MonthlyChargeSegment,
COUNT(*)
FROM customer_churn_analytics
GROUP BY MonthlyChargeSegment;

SELECT
    TenureGroup,
    COUNT(*) AS Customers
FROM customer_churn_analytics
GROUP By TenureGroup;

SELECT *
FROM dim_contract;
SELECT *
FROM dim_internet_service;

SELECT *
FROM dim_payment_method;

SELECT COUNT(*)
FROM fact_customer_churn;

USE telecom_churn;

-- TC-001: Total customers
SELECT
    COUNT(*) AS TotalCustomers
FROM fact_customer_churn;

-- TC-002: Churned customers
SELECT
    SUM(ChurnFlag) AS ChurnCustomers
FROM fact_customer_churn;

-- TC-003: Active customers
SELECT
    COUNT(*) - SUM(ChurnFlag) AS ActiveCustomers
FROM fact_customer_churn;

SELECT
 ROUND(SUM(ChurnFlag) * 100.0 / COUNT(*), 2) AS ChurnRatePercentage
 FROM fact_customer_churn;
 
 SELECT
 ROUND(SUM(MonthlyCharges), 2) AS MonthlyRevenue
 FROM fact_customer_churn;
 
 SELECT
 ROUND(
 SUM(
 CASE
 WHEN ChurnFlag = 1 THEN MonthlyCharges
 ELSE 0
 END
 ),
 2
 ) AS ChurnedMonthlyRevenue
 FROM fact_customer_churn;
 
 SELECT
 ROUND(AVG(MonthlyCharges), 2) AS AverageMonthlyCharge
 FROM fact_customer_churn;
 
 


