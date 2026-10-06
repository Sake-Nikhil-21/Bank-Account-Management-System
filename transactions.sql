USE Bank_Account_Management_System;

-- 1. Check balances before transfer
SELECT Account_No, Balance
FROM Account
WHERE Account_No IN (100001, 100002);

-- 2. Money transfer: transfer 5000 from 100001 to 100002
START TRANSACTION;

UPDATE Account
SET Balance = Balance - 5000
WHERE Account_No = 100001 AND Balance >= 5000;

UPDATE Account
SET Balance = Balance + 5000
WHERE Account_No = 100002;

COMMIT;

-- 3. Verify balances
SELECT Account_No, Balance
FROM Account
WHERE Account_No IN (100001, 100002);

-- 4. Rollback example
START TRANSACTION;
UPDATE Account SET Balance = Balance + 1000 WHERE Account_No = 100001;
ROLLBACK;

SELECT Account_No, Balance FROM Account WHERE Account_No = 100001;
