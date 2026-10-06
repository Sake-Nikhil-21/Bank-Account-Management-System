USE Bank_Account_Management_System;

UPDATE Customer
SET Phone = '9876543290'
WHERE Customer_ID = 101;

UPDATE Account
SET Status = 'Inactive'
WHERE Account_No = 100005;

UPDATE Employee
SET Salary = Salary + 3000
WHERE Employee_ID = 205;

SELECT * FROM Customer WHERE Customer_ID = 101;
SELECT * FROM Account WHERE Account_No = 100005;
SELECT * FROM Employee WHERE Employee_ID = 205;
