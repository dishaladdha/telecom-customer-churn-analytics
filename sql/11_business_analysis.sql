SELECT
COUNT(*) AS TotalCustomers
FROM customer_churn_analytics;

SELECT
COUNT(*) AS ChurnCustomers
FROM customer_churn_analytics
WHERE ChurnFlag = 1;

SELECT 
COUNT(*) AS ActiveCustomers
FROM customer_churn_analytics
WHERE ChurnFlag = 0;

SELECT
ROUND(
(SUM(ChurnFlag) / COUNT(*)) * 100,
2
) AS ChurnRate
FROM customer_churn_analytics;

SELECT
ROUND(
SUM(MonthlyCharges),
2
) AS MonthlyRevenue
FROM customer_churn_analytics;

SELECT
Contract,
COUNT(*) AS TotalCustomers
FROM customer_churn_analytics
GROUP BY Contract;

SELECT
Contract,
COUNT(*) AS TotalCustomers,
SUM(ChurnFlag) AS ChurnCustomers,
ROUND(
(SUM(ChurnFlag) / COUNT(*)) * 100,
2
) AS ChurnRate
FROM customer_churn_analytics
GROUP BY Contract;

SELECT
InternetService,
COUNT(*) AS TotalCustomers,
SUM(ChurnFlag) AS ChurnCustomers
FROM customer_churn_analytics
GROUP BY InternetService;

SELECT
PaymentMethod,
COUNT(*) AS TotalCustomers,
SUM(ChurnFlag) AS ChurnCustomers
FROM customer_churn_analytics
GROUP BY PaymentMethod;

