USE cinema_booking_system;

-- count
SELECT count(*) FROM customers
WHERE first_name IS NULL;

-- sum
SELECT sum(no_seats) FROM rooms
WHERE id > 1;


-- min & max
SELECT max(length_min) FROM films;

SELECT min(length_min) FROM films;

-- Average
SELECT avg(length_min) FROM films WHERE length_min > 120;

-- Exercise: Count the number of screenings for Blade Runner 2049 in October 2022
SELECT count(*) FROM screenings
JOIN films ON screenings.film_id = films.id
WHERE films.name = 'Blade Runner 2049'
AND screenings.start_time BETWEEN '2022-10-01'
AND '2022-10-31 23:59:59.99';

-- group by
SELECT customer_id, count(*) FROM bookings
GROUP BY customer_id;

SELECT f.name, s.start_time, c.first_name, c.last_name, count(b.id) 
FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN bookings b ON s.id = b.screening_id
JOIN customers c ON b.customer_id = c.id
GROUP BY f.name, c.last_name, c.first_name, s.start_time
ORDER BY s.start_time;


-- Having clause
SELECT customer_id, screening_id, count(*) FROM bookings
GROUP BY customer_id, screening_id
HAVING customer_id = 10;




