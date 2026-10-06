USE Bank_Account_Management_System;

-- Constraint validation examples.
-- Run the invalid statements one at a time if testing errors.

-- 1. PRIMARY KEY validation
-- INSERT INTO Customer VALUES (101, 'Duplicate', '2000-01-01', 'Male', '9999999999', 'x@example.com', 'Test');

-- 2. UNIQUE validation
-- INSERT INTO Customer VALUES (110, 'Duplicate Phone', '2000-01-01', 'Male', '9876543210', 'x@example.com', 'Test');

-- 3. NOT NULL validation
-- INSERT INTO Customer (Customer_ID, Name, Gender, Phone) VALUES (110, NULL, 'Male', '9999999988');

-- 4. CHECK validation
-- INSERT INTO Account VALUES (100010, 101, 1, 'Invalid', 1000, '2026-10-01', 'Active');

-- 5. BALANCE CHECK validation
-- UPDATE Account SET Balance = -100 WHERE Account_No = 100001;

-- 6. FOREIGN KEY validation
-- INSERT INTO Account VALUES (100010, 999, 1, 'Savings', 1000, '2026-10-01', 'Active');

-- Valid constraint inspection queries
SELECT TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE
FROM information_schema.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = DATABASE()
ORDER BY TABLE_NAME, CONSTRAINT_NAME;
