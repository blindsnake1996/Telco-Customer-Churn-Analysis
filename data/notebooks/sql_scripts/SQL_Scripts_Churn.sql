CREATE TABLE churn_data (
    customerID VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INT,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(25),
    InternetService VARCHAR(25),
    OnlineSecurity VARCHAR(25),
    OnlineBackup VARCHAR(25),
    DeviceProtection VARCHAR(25),
    TechSupport VARCHAR(25),
    StreamingTV VARCHAR(25),
    StreamingMovies VARCHAR(25),
    Contract VARCHAR(25),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(5)
);



SELECT 
    Contract,
    COUNT(*) as Total_Customers,
    COUNT(*) FILTER (WHERE Churn = 'Yes') as Churned_Customers,
    ROUND((COUNT(*) FILTER (WHERE Churn = 'Yes') * 100.0) / COUNT(*), 2) as Churn_Rate_Percent,
    ROUND(SUM(MonthlyCharges) FILTER (WHERE Churn = 'Yes'), 2) as Lost_Monthly_Revenue
FROM churn_data
GROUP BY Contract
ORDER BY Churn_Rate_Percent DESC;

CREATE OR REPLACE VIEW v_customer_risk_analysis AS
SELECT 
    customerID,
    gender,
    tenure,
    Contract,
    PaymentMethod,
    MonthlyCharges,
    TotalCharges,
    Churn,
    -- Wir erstellen eine Risiko-Kategorie basierend auf deinen Beobachtungen
    CASE 
        WHEN Contract = 'Month-to-month' AND MonthlyCharges > 70 THEN 'High Risk'
        WHEN Contract = 'One year' THEN 'Medium Risk'
        ELSE 'Low Risk'
    END as Risk_Level,
    -- Senior Citizen lesbar machen
    CASE WHEN SeniorCitizen = 1 THEN 'Yes' ELSE 'No' END as IsSenior
FROM churn_data;