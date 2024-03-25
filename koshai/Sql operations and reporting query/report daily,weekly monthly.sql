SELECT * FROM raj.t1
ORDER BY Total_Loan_Amount DESC;

SELECT Settlement_Date, Broker, SUM(Total_Loan_Amount) AS Daily_Total
FROM raj.t1
GROUP BY Settlement_Date, Broker
ORDER BY Daily_Total DESC;

SELECT YEAR(Settlement_Date) AS Year, WEEK(Settlement_Date) AS Week, Broker, SUM(Total_Loan_Amount) AS Weekly_Total
FROM raj.t1
GROUP BY Year, Week, Broker
ORDER BY Weekly_Total DESC;

SELECT YEAR(Settlement_Date) AS Year, MONTH(Settlement_Date) AS Month, Broker, SUM(Total_Loan_Amount) AS Monthly_Total
FROM raj.t1
GROUP BY Year, Month, Broker
ORDER BY Monthly_Total DESC;


