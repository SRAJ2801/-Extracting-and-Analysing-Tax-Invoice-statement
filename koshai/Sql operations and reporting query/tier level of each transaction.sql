SELECT App_ID, Settlement_Date, Broker, Sub_Broker,Description, Total_Loan_Amount,
CASE
    WHEN Total_Loan_Amount > 100000 THEN 'Tier 1'
    WHEN Total_Loan_Amount > 50000 THEN 'Tier 2'
    WHEN Total_Loan_Amount > 10000 THEN 'Tier 3'
    ELSE 'No Tier'
END AS Tier_Level
FROM raj.t1;