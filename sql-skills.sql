
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

-- /////EC SQL

-- artist table

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

-- employee table

SELECT first_name, last_name, birth_date FROM employee
ORDER BY birth_date DESC;

SELECT birth_date FROM employee
ORDER BY birth_date ASC;

-- invoice table

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

-- join query's

SELECT t.name, p.name "Playlist Name"
FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
JOIN playlist p
ON p.playlist_id = pt.playlist_id


SELECT name FROM track 
WHERE track_id IN (
  SELECT track_id FROM playlist_track
  WHERE playlist_id = 5 
  );


SELECT t.name, p.name "Playlist Name"
FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
JOIN playlist p
ON p.playlist_id = pt.playlist_id


SELECT t.name, a.title
FROM track t
JOIN genre g 
ON g.genre_id = t.genre_id
JOIN album a 
ON t.album_id = a.album_id
WHERE g.name = 'Alternative & Punk';
​













