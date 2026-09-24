# KPI Definitions

## Total Customers

COUNT(customerID)

## Churn Customers

Customers where ChurnFlag = 1

## Active Customers

Customers where ChurnFlag = 0

## Churn Rate

Churn Customers / Total Customers

## Monthly Revenue

SUM(MonthlyCharges)
*## Average Monthly Charges

AVG(MonthlyCharges)

## Customer Tenure

Average tenure of customers

Total Customers

The total number of customer records in the analysis.

Calculation:

Count of customer records.

Churn Customers

Customers whose ChurnFlag equals 1.

Active Customers

Customers whose ChurnFlag equals 0.

Churn Rate

Churn Customers divided by Total Customers.

Monthly Revenue

Sum of MonthlyCharges for customers included in the selected filter context.

Average Monthly Charge

Average value of MonthlyCharges.

Revenue at Risk

Revenue at Risk represents the sum of MonthlyCharges for customers whose ChurnFlag equals 1.

This is a monthly revenue indicator associated with churned customers. It is not a forecast of future realized financial loss.

High Risk Customers

For this dashboard, High Risk Customers refers to customers whose ChurnFlag equals 1.

This is a descriptive dashboard label. It is not a predictive machine-learning churn-risk score.