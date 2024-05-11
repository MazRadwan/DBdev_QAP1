INSERT INTO address (address, district, city_id, postal_code, phone)
VALUES ('101 Candy Cane Ln', 'Hamilton', 200, '77948', '7095551212')
RETURNING address_id;