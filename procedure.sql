USE Bank_Account_Management_System;

DROP PROCEDURE IF EXISTS GetCustomerAccounts;
DROP PROCEDURE IF EXISTS GetCustomerLoans;
DROP PROCEDURE IF EXISTS DepositMoney;

DELIMITER //

CREATE PROCEDURE GetCustomerAccounts(IN p_customer_id INT)
BEGIN
    SELECT Account_No, Account_Type, Balance, Status
    FROM Account
    WHERE Customer_ID = p_customer_id;
END //

CREATE PROCEDURE GetCustomerLoans(IN p_customer_id INT)
BEGIN
    SELECT Loan_ID, Loan_Type, Loan_Amount, Interest_Rate, Loan_Status
    FROM Loan
    WHERE Customer_ID = p_customer_id;
END //

CREATE PROCEDURE DepositMoney(IN p_account_no BIGINT, IN p_amount DECIMAL(12,2))
BEGIN
    IF p_amount <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Deposit amount must be greater than zero';
    ELSE
        UPDATE Account
        SET Balance = Balance + p_amount
        WHERE Account_No = p_account_no AND Status = 'Active';
    END IF;
END //

DELIMITER ;

CALL GetCustomerAccounts(101);
CALL GetCustomerLoans(101);
