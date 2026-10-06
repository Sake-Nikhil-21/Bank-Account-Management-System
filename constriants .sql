USE Bank_Account_Management_System;

-- Constraint examples used in the Bank Account Management System

-- PRIMARY KEY: uniquely identifies every row
-- FOREIGN KEY: maintains relationships between tables
-- NOT NULL: prevents missing required values
-- UNIQUE: prevents duplicate phone numbers / IFSC codes
-- CHECK: validates gender, account type, balance, salary and amounts
-- DEFAULT: supplies values when no value is given

CREATE TABLE Constraint_Demo (
    Demo_ID INT PRIMARY KEY,
    Demo_Name VARCHAR(50) NOT NULL,
    Demo_Phone VARCHAR(15) UNIQUE,
    Demo_Balance DECIMAL(10,2) DEFAULT 0 CHECK (Demo_Balance >= 0),
    Demo_Type VARCHAR(20) DEFAULT 'Savings'
        CHECK (Demo_Type IN ('Savings','Current'))
);

INSERT INTO Constraint_Demo (Demo_ID, Demo_Name, Demo_Phone, Demo_Balance)
VALUES (1, 'Test Customer', '9999999999', 1000.00);

SELECT * FROM Constraint_Demo;

DROP TABLE Constraint_Demo;
