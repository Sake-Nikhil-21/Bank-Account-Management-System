USE Bank_Account_Management_System;

SELECT * FROM Customer;
SELECT * FROM Account;
SELECT * FROM Transaction_Table;
SELECT * FROM Employee;

SELECT c.Customer_ID, c.Name, a.Account_No, a.Account_Type, a.Balance
FROM Customer c JOIN Account a ON c.Customer_ID = a.Customer_ID;

SELECT Account_No, Customer_ID, Balance
FROM Account WHERE Balance > 50000;

SELECT * FROM Account WHERE Account_Type = 'Savings';

SELECT * FROM Transaction_Table WHERE Transaction_Type = 'Deposit';

SELECT SUM(Balance) AS Total_Balance FROM Account;
SELECT AVG(Balance) AS Average_Balance FROM Account;
SELECT MAX(Balance) AS Maximum_Balance FROM Account;
SELECT COUNT(*) AS Total_Accounts FROM Account;

SELECT Employee_ID, Employee_Name, Designation, Salary
FROM Employee WHERE Salary > 40000;
