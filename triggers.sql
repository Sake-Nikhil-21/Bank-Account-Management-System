USE Bank_Account_Management_System;

DROP TRIGGER IF EXISTS After_Deposit;
DROP TRIGGER IF EXISTS After_Withdrawal;

DELIMITER //

CREATE TRIGGER After_Deposit
AFTER INSERT ON Transaction_Table
FOR EACH ROW
BEGIN
    IF NEW.Transaction_Type = 'Deposit' THEN
        UPDATE Account
        SET Balance = Balance + NEW.Amount
        WHERE Account_No = NEW.Account_No;
    END IF;
END //

CREATE TRIGGER After_Withdrawal
AFTER INSERT ON Transaction_Table
FOR EACH ROW
BEGIN
    IF NEW.Transaction_Type = 'Withdrawal' THEN
        UPDATE Account
        SET Balance = Balance - NEW.Amount
        WHERE Account_No = NEW.Account_No AND Balance >= NEW.Amount;
    END IF;
END //

DELIMITER ;
