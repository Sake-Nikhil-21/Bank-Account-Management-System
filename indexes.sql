USE Bank_Account_Management_System;

DROP INDEX IF EXISTS idx_customer_phone ON Customer;
DROP INDEX IF EXISTS idx_account_customer ON Account;
DROP INDEX IF EXISTS idx_transaction_account ON Transaction_Table;
DROP INDEX IF EXISTS idx_loan_customer ON Loan;

CREATE INDEX idx_customer_phone ON Customer(Phone);
CREATE INDEX idx_account_customer ON Account(Customer_ID);
CREATE INDEX idx_transaction_account ON Transaction_Table(Account_No);
CREATE INDEX idx_loan_customer ON Loan(Customer_ID);

SHOW INDEX FROM Customer;
SHOW INDEX FROM Account;
SHOW INDEX FROM Transaction_Table;
SHOW INDEX FROM Loan;
