USE Bank_Account_Management_System;

-- 1. INNER JOIN: Customer and Account
SELECT c.Customer_ID, c.Name AS Customer_Name, a.Account_No, a.Account_Type, a.Balance
FROM Customer c
INNER JOIN Account a ON c.Customer_ID = a.Customer_ID;

-- 2. Customer + Transaction
SELECT c.Customer_ID, c.Name AS Customer_Name, a.Account_No,
       t.Transaction_ID, t.Transaction_Type, t.Amount, t.Transaction_Date
FROM Customer c
INNER JOIN Account a ON c.Customer_ID = a.Customer_ID
INNER JOIN Transaction_Table t ON a.Account_No = t.Account_No;

-- 3. Customer + Loan
SELECT c.Name AS Customer_Name, l.Loan_ID, l.Loan_Type,
       l.Loan_Amount, l.Interest_Rate, l.Loan_Status
FROM Customer c
INNER JOIN Loan l ON c.Customer_ID = l.Customer_ID;

-- 4. Account + Branch
SELECT a.Account_No, a.Account_Type, a.Balance,
       b.Branch_Name, b.City, b.IFSC_Code
FROM Account a
INNER JOIN Branch b ON a.Branch_ID = b.Branch_ID;

-- 5. LEFT JOIN
SELECT c.Customer_ID, c.Name, a.Account_No, a.Balance
FROM Customer c
LEFT JOIN Account a ON c.Customer_ID = a.Customer_ID;

-- 6. RIGHT JOIN
SELECT b.Branch_Name, b.City, e.Employee_Name, e.Designation
FROM Branch b
RIGHT JOIN Employee e ON b.Branch_ID = e.Branch_ID;

-- 7. Multiple table JOIN
SELECT c.Name, a.Account_No, b.Branch_Name, t.Transaction_Type, t.Amount
FROM Customer c
JOIN Account a ON c.Customer_ID = a.Customer_ID
JOIN Branch b ON a.Branch_ID = b.Branch_ID
JOIN Transaction_Table t ON a.Account_No = t.Account_No;
