SELECT rating, COUNT(*) AS number_of_movies
FROM film
GROUP BY rating
ORDER BY rating;