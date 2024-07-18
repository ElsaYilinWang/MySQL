-- sub-queries
USE cinema_booking_system;

SELECT id, start_time FROM screenings
WHERE film_id IN 
( SELECT id FROM films WHERE length_min > 120);

SELECT first_name, last_name, email FROM customers
WHERE id IN 
(SELECT customer_id FROM bookings WHERE screening_id = 1);

SELECT max(no_seats) FROM
(SELECT booking_id, count(seat_id) AS no_seats
FROM reserved_seat GROUP BY booking_id) b;


SELECT screening_id, customer_id,
(SELECT count(*) FROM reserved_seat WHERE booking_id = b.id)
FROM bookings b
ORDER BY screening_id;