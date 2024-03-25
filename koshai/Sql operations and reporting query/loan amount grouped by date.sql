SELECT Settlement_Date, SUM(Total_Loan_Amount) 
FROM raj.t1
GROUP BY Settlement_Date;

