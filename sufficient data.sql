USE Bank_Account_Management_System;

-- Additional sample data for testing queries, joins and aggregate functions.

INSERT INTO Customer (Customer_ID, Name, DOB, Gender, Phone, Email, Address) VALUES
(110, 'Harsha Vardhan', '2004-07-18', 'Male', '9876543201', 'harsha@gmail.com', 'Tirupati'),
(111, 'Divya Sri', '2005-10-09', 'Female', '9876543202', 'divya@gmail.com', 'Kakinada');

INSERT INTO Account (Account_No, Customer_ID, Branch_ID, Account_Type, Balance, Open_Date, Status) VALUES
(100010, 110, 3, 'Savings', 42000.00, '2026-04-01', 'Active'),
(100011, 111, 1, 'Current', 68000.00, '2026-04-05', 'Active');

INSERT INTO Transaction_Table (Transaction_ID, Account_No, Transaction_Type, Amount, Transaction_Date) VALUES
(5010, 100010, 'Deposit', 9000.00, '2026-04-10'),
(5011, 100011, 'Withdrawal', 6000.00, '2026-04-11');

INSERT INTO Loan (Loan_ID, Customer_ID, Loan_Type, Loan_Amount, Interest_Rate, Loan_Status) VALUES
(305, 110, 'Education Loan', 250000.00, 7.25, 'Active'),
(306, 111, 'Personal Loan', 200000.00, 11.00, 'Pending');

SELECT COUNT(*) AS Total_Customers FROM Customer;
SELECT COUNT(*) AS Total_Accounts FROM Account;
SELECT SUM(Balance) AS Total_Balance FROM Account;
