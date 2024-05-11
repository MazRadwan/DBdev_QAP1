INSERT INTO address (address, district, city_id, postal_code, phone)
VALUES ('33 Main St', 'Hamilton', 200, '77948', '709555122')
RETURNING address_id;
