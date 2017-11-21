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

--ANSWER TO QUESTION ONE
SELECT * FROM accounts
WHERE city ILIKE 'chicago';

--ANSWER TO QUESTION TWO
SELECT * FROM accounts
WHERE username ILIKE '%a%';

--ANSWER TO QUESTION THREE
SELECT * FROM accounts
WHERE transactions_attempted = '0'
AND account_balance ='0';

UPDATE accounts SET account_balance = '10'
WHERE transactions_attempted = '0'
AND account_balance ='0';

--ANSWER TO QUESTION FOUR
SELECT * FROM accounts
WHERE transactions_attempted >= '9';

--ANSWER TO QUESTION FIVE
SELECT username, account_balance FROM accounts
ORDER BY account_balance DESC
LIMIT 3;

--ANSWER TO QUESTION SIX
SELECT username, account_balance FROM accounts
ORDER BY account_balance 
LIMIT 3;

--ANSWER TO QUESTION SEVEN
SELECT * FROM accounts
WHERE account_balance > '100';

--ANSWER TO QUESTION EIGHT
INSERT INTO accounts(username, city, transactions_completed, transactions_attempted, account_balance)
VALUES ('tyler', 'minneapolis', 4, 4, 20000);

--ANSWER TO QUESTION NINE
SELECT * FROM accounts
WHERE city = 'miami'
AND transactions_completed < 7
OR city = 'phoenix'
AND transactions_completed < 7;

DELETE FROM accounts
WHERE city = 'miami'
AND transactions_completed < 7
OR city = 'phoenix'
AND transactions_completed < 7;