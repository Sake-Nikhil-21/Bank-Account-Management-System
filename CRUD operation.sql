USE Bank_Account_Management_System;

-- 1. CREATE (INSERT)
INSERT INTO Customer (Customer_ID, Name, DOB, Gender, Phone, Email, Address)
VALUES (108, 'Ravi Kumar', '2005-09-12', 'Male', '9876543299', 'ravi.kumar@gmail.com', 'Nellore');

INSERT INTO Account (Account_No, Customer_ID, Branch_ID, Account_Type, Balance, Open_Date, Status)
VALUES (100008, 108, 1, 'Savings', 50000.00, '2026-10-01', 'Active');

-- 2. READ
SELECT * FROM Customer;
SELECT * FROM Account;

SELECT c.Customer_ID, c.Name, a.Account_No, a.Account_Type, a.Balance
FROM Customer c
JOIN Account a ON c.Customer_ID = a.Customer_ID;

-- 3. UPDATE
UPDATE Account
SET Balance = Balance + 5000
WHERE Account_No = 100008;

-- 4. DELETE
DELETE FROM Beneficiary
WHERE Beneficiary_ID = 405;

-- 5. INNER JOIN
SELECT c.Name, c.Phone, a.Account_No, a.Account_Type, a.Balance
FROM Customer c
INNER JOIN Account a ON c.Customer_ID = a.Customer_ID;

-- 6. LEFT JOIN
SELECT c.Customer_ID, c.Name, a.Account_No, a.Balance
FROM Customer c
LEFT JOIN Account a ON c.Customer_ID = a.Customer_ID;

-- 7. THREE TABLE JOIN
SELECT c.Name, a.Account_No, b.Branch_Name, b.City
FROM Customer c
JOIN Account a ON c.Customer_ID = a.Customer_ID
JOIN Branch b ON a.Branch_ID = b.Branch_ID;
