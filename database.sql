CREATE TABLE accounts (
    user_id serial PRIMARY KEY,
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2)
);

INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('shawn', 'chicago', 5, 10, 355.80),
('cherise', 'minneapolis', 9, 9, 4000.00),
('larry', 'minneapolis', 3, 4, 77.01),
('dallas', 'new york', 6, 12, 0.99),
('anthony', 'chicago', 0, 0, 0.00),
('travis', 'miami', 1, 100, 500000.34),
('davey', 'chicago', 9, 99, 98.04),
('ora', 'phoenix', 88, 90, 3.33),
('grace', 'miami', 7, 9100, 34.78),
('hope', 'phoenix', 4, 10, 50.17);

SELECT * FROM "accounts";

--1
SELECT * FROM "accounts" WHERE "city" = 'chicago';

--2
SELECT * FROM "accounts" WHERE "username" LIKE '%a%';

--3 
SELECT * FROM "accounts" WHERE "transactions_attempted" = 0 AND "account_balance" = 0;

UPDATE "accounts" SET "account_balance" = 10.00
WHERE "transactions_attempted" = 0 AND "account_balance" = 0;

--4 
SELECT * FROM "accounts" WHERE "transactions_attempted" >= 9;

--5
SELECT "username", "account_balance" FROM "accounts" ORDER BY "account_balance" DESC LIMIT 3;

--6
SELECT "username", "account_balance" FROM "accounts" ORDER BY "account_balance" ASC LIMIT 3;

--7
SELECT * FROM "accounts" WHERE "account_balance" > 100;

--8
INSERT INTO "accounts" ("username", "city", "transactions_completed", "transactions_attempted", "account_balance")
VALUES ('timmothy', 'detroit', 12000, 12000, 12000);

--9
SELECT * FROM "accounts" WHERE "city" IN ('miami', 'phoenix') AND "transactions_completed" < 5;
DELETE FROM "accounts" WHERE "city" IN ('miami', 'phoenix') AND "transactions_completed" < 5;
