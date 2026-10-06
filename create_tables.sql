-- Bank Account Management System
-- Table Creation

CREATE TABLE Customer (
    Customer_ID NUMBER PRIMARY KEY,
    Customer_Name VARCHAR2(50) NOT NULL,
    Phone VARCHAR2(15),
    Email VARCHAR2(100),
    Address VARCHAR2(100)
);

CREATE TABLE Account (
    Account_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER NOT NULL,
    Account_Type VARCHAR2(20) NOT NULL,
    Balance NUMBER(12,2) DEFAULT 0,
    Open_Date DATE DEFAULT SYSDATE,
    CONSTRAINT fk_account_customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),
    CONSTRAINT chk_account_balance
        CHECK (Balance >= 0)
);

CREATE TABLE Bank_Transaction (
    Transaction_ID NUMBER PRIMARY KEY,
    Account_ID NUMBER NOT NULL,
    Transaction_Type VARCHAR2(20) NOT NULL,
    Amount NUMBER(12,2) NOT NULL,
    Transaction_Date DATE DEFAULT SYSDATE,
    CONSTRAINT fk_transaction_account
        FOREIGN KEY (Account_ID)
        REFERENCES Account(Account_ID),
    CONSTRAINT chk_transaction_amount
        CHECK (Amount > 0),
    CONSTRAINT chk_transaction_type
        CHECK (Transaction_Type IN ('DEPOSIT', 'WITHDRAWAL'))
);

CREATE TABLE Beneficiary (
    Beneficiary_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER NOT NULL,
    Beneficiary_Name VARCHAR2(50) NOT NULL,
    Account_Number VARCHAR2(20) NOT NULL,
    Bank_Name VARCHAR2(50),
    CONSTRAINT fk_beneficiary_customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID)
);
