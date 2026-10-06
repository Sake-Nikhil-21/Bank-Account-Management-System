USE Bank_Account_Management_System;

DROP FUNCTION IF EXISTS CalculateLoanInterest;
DROP FUNCTION IF EXISTS CalculateAnnualInterest;

DELIMITER //

CREATE FUNCTION CalculateLoanInterest(
    p_amount DECIMAL(12,2),
    p_rate DECIMAL(5,2),
    p_years INT
)
RETURNS DECIMAL(12,2)
DETERMINISTIC
BEGIN
    RETURN ROUND((p_amount * p_rate * p_years) / 100, 2);
END //

CREATE FUNCTION CalculateAnnualInterest(
    p_balance DECIMAL(12,2),
    p_rate DECIMAL(5,2)
)
RETURNS DECIMAL(12,2)
DETERMINISTIC
BEGIN
    RETURN ROUND((p_balance * p_rate) / 100, 2);
END //

DELIMITER ;

SELECT Loan_ID, Loan_Amount, Interest_Rate,
       CalculateLoanInterest(Loan_Amount, Interest_Rate, 1) AS One_Year_Interest
FROM Loan;

SELECT Account_No, Balance,
       CalculateAnnualInterest(Balance, 4.00) AS Annual_Interest
FROM Account;
