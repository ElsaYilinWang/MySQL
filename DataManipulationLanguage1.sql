USE coffee_store;

SHOW tables;

SELECT * FROM products;

-- insert values
INSERT INTO products (name, price, coffee_origin)
VALUES ('Expresso', 2.50, 'Brazil'), 
('Flat white', 3.50, 'Indonesia'),
('Filter', 3.00, 'India');

-- update values
UPDATE products
SET coffee_origin = 'Sri Lanka'
WHERE id = 3;

SET sql_safe_updates = false;

UPDATE products
SET price = 3.25, coffee_origin = 'Ethiopia'
WHERE name = 'Filter';

-- delete values from tables
USE example;

CREATE TABLE people(
	id INT auto_increment PRIMARY KEY,
    name VARCHAR(30),
    age INT,
    gender ENUM('F', 'M')
);

INSERT INTO people (name, age, gender)
VALUES ('Emma', 21, 'F'), ('John', 30, 'M'),
('Chris', 44, 'M'), ('Sally', 23, 'F'), ('Frank', 35, 'M');

SELECT * FROM people;

DELETE FROM people
WHERE gender = 'M';
 
