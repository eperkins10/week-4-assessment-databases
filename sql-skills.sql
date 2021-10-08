
-- ARTIST 
INSERT INTO artist
(name)
VALUES
('21 Savage'),
('Rod Wave'),
('LANY');

SELECT * FROM artist
ORDER BY name DESC LIMIT 5;

-- EMPLOYEE TABLE

SELECT * FROM employee 
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- INVOICE TABLE

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT total FROM invoice
ORDER BY total ASC;

SELECT * FROM invoice 
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT SUM(total) FROM invoice;

-- JOIN QUERY'S

SELECT * FROM invoice
WHERE invoice_id IN (
 SELECT invoice_id FROM invoice_line 
 WHERE unit_price > 0.99
 );

 SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i 
JOIN customer c 
ON i.customer_id = c.customer_id

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e 
ON c.support_rep_id = e.employee_id;

SELECT a.title, ar.name 
FROM album a
JOIN artist ar
ON a.artist_id = ar.artist_id;





