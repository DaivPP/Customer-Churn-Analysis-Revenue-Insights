-- 1. Overall Churn Rate
SELECT ROUND(AVG(Churn) * 100, 2) AS churn_rate_percentage FROM customers;

-- 2. Churn by Contract Type
-- SELECT Contract, COUNT(*) AS total_customers, SUM(Churn) AS churned_customers, ROUND(AVG(Churn) * 100, 2) AS churn_rate FROM customers GROUP BY Contract ORDER BY churn_rate DESC;

-- 3. Churn by Tenure Group
-- SELECT Tenure_Group, COUNT(*) AS customers, ROUND(AVG(Churn) * 100, 2) AS churn_rate FROM customers GROUP BY Tenure_Group ORDER BY churn_rate DESC;

-- 4. Revenue Impact of Churn
-- SELECT Churn, ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge, ROUND(SUM(MonthlyCharges), 2) AS total_monthly_revenue FROM customers GROUP BY Churn;

-- 5. Service-wise Churn
-- SELECT TechSupport, ROUND(AVG(Churn) * 100, 2) AS churn_rate FROM customers GROUP BY TechSupport;

-- 6. High-Risk Customer Identification
-- SELECT customerID, tenure, MonthlyCharges, Contract FROM customers WHERE Churn = 0 AND tenure < 12 AND MonthlyCharges > 70 AND Contract = 'Month-to-month';
