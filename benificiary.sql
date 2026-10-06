USE Bank_Account_Management_System;

-- Display beneficiaries
SELECT * FROM Beneficiary;

-- Find beneficiaries belonging to a customer
SELECT b.Beneficiary_ID, c.Name AS Customer_Name,
       b.Beneficiary_Name, b.Account_Number, b.Bank_Name
FROM Beneficiary b
JOIN Customer c ON b.Customer_ID = c.Customer_ID;

-- Delete one beneficiary
DELETE FROM Beneficiary
WHERE Beneficiary_ID = 405;
