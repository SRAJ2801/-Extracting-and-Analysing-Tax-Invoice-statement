SELECT Broker, MAX(Total_Loan_Amount) AS Highest_Loan
FROM raj.t1
GROUP BY Broker
Order by Highest_loan Desc;
