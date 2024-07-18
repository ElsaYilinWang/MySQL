-- mySQL String and Data Functions

-- CONCATENATE

SELECT concat(first_name, " ", last_name) as full_name FROM customers;

-- Substring(String, start, length)

SELECT substring("Example", 3, 3) AS sub;

SELECT substring(name, 5, 6) AS short_name FROM films;

SELECT substring(name, -2, 2) AS short_name FROM films;

-- Upper and Lower Case

SELECT upper(name) AS name FROM rooms;

SELECT lower(name) AS name FROM rooms;

-- Date function
SELECT date('2023-09-22');

SELECT * FROM screenings
WHERE date(start_time) BETWEEN '2023-07-08' AND '2023-09-09';

-- Month function

SELECT month('2023-09-22');

SELECT * FROM screenings
WHERE month(start_time) = 8;

SELECT month(start_time), count(*) FROM screenings
GROUP BY month(start_time);

-- Year function

SELECT year('2024-09-22');

SELECT * FROM screenings
WHERE year(start_time) = 2023;






