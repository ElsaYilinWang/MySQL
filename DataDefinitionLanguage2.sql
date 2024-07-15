CREATE DATABASE test;

USE test;

CREATE TABLE addresses (
	id INT,
    house_number INT,
    city VARCHAR(20),
    postcode VARCHAR(7)
);

CREATE TABLE people(
	id INT,
    frist_name VARCHAR(20),
    LAST_NAME VARCHAR(20),
    address_id INT
);

CREATE TABLE pets (
	id INT,
    name VARCHAR(20),
    species VARCHAR(20),
    owner_id INT
);

SHOW TABLES;

-- To add & remove a primary key from a table

ALTER TABLE addresses ADD PRIMARY KEY (id);

DESCRIBE addresses;

ALTER TABLE addresses DROP PRIMARY KEY;

-- To add & remove a foreign key 
DESCRIBE addresses;

DESCRIBE people;

ALTER TABLE people ADD PRIMARY KEY (id);

ALTER TABLE people
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY (address_id)
REFERENCES addresses(id);

ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress,
DROP INDEX FK_PeopleAddress;


-- add UNIQUE constraint
DESCRIBE pets;

ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);

ALTER TABLE pets
DROP INDEX u_species;

-- Change a column's name

ALTER TABLE pets
CHANGE species animal_type VARCHAR(20);

ALTER TABLE pets
RENAME COLUMN animal_type TO species;

-- Change a column's data type
DESCRIBE addresses;

ALTER TABLE addresses
MODIFY COLUMN city CHAR(25);

ALTER TABLE addresses
CHANGE city city VARCHAR(30);


