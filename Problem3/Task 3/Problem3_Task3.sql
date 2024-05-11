DELETE FROM address
WHERE address_id = 608
RETURNING address_id, address, district, city_id, postal_code, phone;
