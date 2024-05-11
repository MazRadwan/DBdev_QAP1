INSERT INTO customer (store_id, first_name, last_name, email, address_id, activebool, create_date)
VALUES
(1, 'Peter', 'Parker', 'Peter.Parker@keyin.com', 608, true, CURRENT_DATE),
(1, 'Mary Jane', 'Parker', 'Mary Jane.Parker@keyin.com', 608, true, CURRENT_DATE),
(1, 'Ben', 'Parker', 'Ben.Parker@keyin.com', 608, true, CURRENT_DATE),
(1, 'Betty', 'Parker', 'Betty.Parker@keyin.com', 608, true, CURRENT_DATE);
RETURNING customer_id, first_name, last_name, email, activebool, create_date;
