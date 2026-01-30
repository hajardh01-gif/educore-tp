START TRANSACTION;

INSERT INTO payments (user_id, amount)
VALUES (1, 199.99);

UPDATE users
SET nom = CONCAT(nom, ' (client)')
WHERE id = 1;

COMMIT;

START TRANSACTION;

INSERT INTO payments (user_id, amount)
VALUES (2, 149.99);

SAVEPOINT sp_payment;

INSERT INTO payments (user_id, amount)
VALUES (9999, -50);

ROLLBACK TO sp_payment;

COMMIT;
