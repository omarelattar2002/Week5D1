-- Q1
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg' -- Ans = 2
-- Q2
SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99; -- Ans = 5607
-- Q3
SELECT film_id, COUNT(*)
FROM inventory
GROUP BY film_id 
HAVING COUNT(*)= 7; -- ANS = 116
-- Q4
SELECT COUNT(*)
FROM customer 
WHERE first_name = 'Willie' -- ANS = 2
-- Q5
SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id 
ORDER BY staff_id;  -- ANS = staff id 1 sold the most 8040
-- Q6
SELECT COUNT(DISTINCT district)
FROM address; --- ans = 378
-- Q7
SELECT film_id, COUNT(*)
FROM film_actor 
GROUP BY film_id
ORDER BY COUNT(*) DESC -- ans = 508
-- Q8
SELECT COUNT(*)
FROM customer 
WHERE store_id = 1 AND last_name LIKE '%es' -- ANS = 13
-- Q9
SELECT amount, COUNT(*)
FROM payment
WHERE customer_id >= 380 AND customer_id <= 430
GROUP BY amount
HAVING COUNT(*) > 250; -- ans = 2.99,4.99,0.99
-- Q10
SELECT rating, COUNT(*)
FROM film
GROUP BY rating -- 5 categories AND pg IS the highest