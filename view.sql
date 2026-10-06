USE Bank_Account_Management_System;

CREATE OR REPLACE VIEW Customer_Account_View AS
SELECT c.Customer_ID, c.Name AS Customer_Name, c.Phone,
       a.Account_No, a.Account_Type, a.Balance, a.Status,
       b.Branch_Name, b.City
FROM Customer c
INNER JOIN Account a ON c.Customer_ID = a.Customer_ID
INNER JOIN Branch b ON a.Branch_ID = b.Branch_ID;

CREATE OR REPLACE VIEW Customer_Loan_View AS
SELECT c.Customer_ID, c.Name AS Customer_Name,
       l.Loan_ID, l.Loan_Type, l.Loan_Amount,
       l.Interest_Rate, l.Loan_Status
FROM Customer c
INNER JOIN Loan l ON c.Customer_ID = l.Customer_ID;

CREATE OR REPLACE VIEW Transaction_Details_View AS
SELECT c.Customer_ID, c.Name AS Customer_Name,
       a.Account_No, t.Transaction_ID, t.Transaction_Type,
       t.Amount, t.Transaction_Date
FROM Customer c
INNER JOIN Account a ON c.Customer_ID = a.Customer_ID
INNER JOIN Transaction_Table t ON a.Account_No = t.Account_No;

SELECT * FROM Customer_Account_View;
SELECT * FROM Customer_Loan_View;
SELECT * FROM Transaction_Details_View;
