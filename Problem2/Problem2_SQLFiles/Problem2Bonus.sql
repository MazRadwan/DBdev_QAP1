WITH Film_Details AS (
    SELECT title, rental_rate, rating
    FROM film
),
Cheap_Films AS (
    SELECT title, rental_rate, rating
    FROM film
    WHERE rental_rate = 0.99
),
Rating_Counts AS (
    SELECT rating, COUNT(*) AS number_of_movies
    FROM film
    GROUP BY rating
    ORDER BY rating
),
Rental_Details AS (
    SELECT 
      f.title,  
      r.rental_id, 
      i.film_id, 
      p.amount
    FROM 
      rental r
    JOIN 
      inventory i ON r.inventory_id = i.inventory_id
    JOIN 
      film f ON i.film_id = f.film_id
    JOIN 
      payment p ON r.rental_id = p.rental_id
)

SELECT 'All Films' AS Category, COUNT(*) AS Count FROM Film_Details
UNION ALL
SELECT 'Cheap Films', COUNT(*) FROM Cheap_Films
UNION ALL
SELECT 'By Rating', COUNT(*) FROM Rating_Counts
UNION ALL
SELECT 'Rental Details', SUM(amount) FROM Rental_Details;  
