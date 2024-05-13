SELECT
    f.title,
    f.rating,
    COUNT(r.rental_id) AS total_rentals,
    SUM(p.amount) AS total_payment
FROM
    film f
JOIN
    inventory i ON f.film_id = i.film_id
JOIN
    rental r ON i.inventory_id = r.inventory_id
JOIN
    payment p ON r.rental_id = p.rental_id
WHERE
    f.rental_rate = 0.99 AND
    f.rating = 'PG'
GROUP BY
    f.title, f.rating
ORDER BY
    total_rentals DESC, total_payment DESC;