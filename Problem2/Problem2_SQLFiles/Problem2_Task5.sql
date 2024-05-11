SELECT 
  r.rental_id, 
  r.inventory_id, 
  i.film_id, 
  f.title,  
  p.amount
FROM 
  rental r
JOIN 
  inventory i ON r.inventory_id = i.inventory_id
JOIN 
  film f ON i.film_id = f.film_id  
JOIN 
  payment p ON r.rental_id = p.rental_id;