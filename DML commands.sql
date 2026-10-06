USE Bank_Account_Management_System;

-- INSERT
INSERT INTO Customer (Customer_ID, Name, DOB, Gender, Phone, Email, Address)
VALUES (109, 'Neha Rao', '2005-03-22', 'Female', '9876543288', 'neha@example.com', 'Vizag');

INSERT INTO Account (Account_No, Customer_ID, Branch_ID, Account_Type, Balance, Open_Date, Status)
VALUES (100009, 109, 3, 'Savings', 30000.00, '2026-10-02', 'Active');

-- UPDATE
UPDATE Account SET Balance = Balance + 5000 WHERE Account_No = 100009;
UPDATE Employee SET Salary = Salary + 2000 WHERE Employee_ID = 205;

-- DELETE
DELETE FROM Beneficiary WHERE Beneficiary_ID = 404;
