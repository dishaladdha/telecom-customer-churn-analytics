SELECT COUNT(*) AS TotalRows
FROM customer_churn_raw;

SELECT DISTINCT Churn
FROM customer_churn_raw;

SELECT
    Churn,
    COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY Churn;

SELECT
    customerID,
    COUNT(*) AS RecordCount
FROM customer_churn_raw
GROUP BY customerID
HAVING COUNT(*) > 1;

SELECT COUNT(*) AS MissingCustomerIDs
FROM customer_churn_raw
WHERE customerID IS NULL;

SELECT
    Contract,
    COUNT(*) AS Customers
FROM customer_churn_raw
GROUP BY Contract;

SELECT COUNT(*) AS BlankTotalCharges
FROM customer_churn_raw
WHERE TRIM(TotalCharges) = '';

