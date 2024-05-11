UPDATE customer
SET address_id = 609
WHERE customer_id BETWEEN 600 AND 603
RETURNING customer_id, store_id, first_name, last_name, email, address_id;
