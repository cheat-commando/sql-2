-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT inv.invoice_id
FROM invoice inv
JOIN invoice_line invl
ON inv.invoice_id = invl.invoice_id
WHERE invl.unit_price > 0.99
GROUP BY inv.invoice_id
ORDER BY inv.invoice_id;

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.

SELECT inv.invoice_date, c.last_name || ', ' || c.first_name AS "Name", SUM(invl.quantity * invl.unit_price) "Total"
FROM invoice inv
JOIN customer c
ON inv.customer_id = c.customer_id
JOIN invoice_line invl
ON invl.invoice_id = inv.invoice_id
GROUP BY inv.invoice_date, c.last_name, c.first_name
ORDER BY invoice_date;

-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers.
-- Support reps are on the employee table.

SELECT c.last_name || ', ' || c.first_name AS "Customer", s.last_name || ', ' || s.first_name AS "Support Rep"
FROM customer c
JOIN employee s
ON c.support_rep_id = s.employee_id
ORDER BY "Support Rep";

-- Get the album title and the artist name from all albums.

SELECT al.title "Album", art.name "Artist"
FROM album al
JOIN artist art
ON al.artist_id = art.artist_id
ORDER BY art.name;

-- Get all playlist_track track_ids where the playlist name is Music.

SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p
ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music'
ORDER BY pt.track_id;

-- Get all track names for 'playlist_id'.

SELECT pt.playlist_id, t.name "Track Title"
FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
ORDER BY pt.playlist_id;

-- Get all track names and the playlist name that they’re on ( 2 joins ).

SELECT t.name "Track", p.name "Playlist"
FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id
JOIN playlist p
ON pt.playlist_id = p.playlist_id
ORDER BY "Playlist", t.track_id;

-- Get all track names and album titles that are the genre 'Alternative & Punk' ( 2 joins ).

SELECT t.name "Track", al.title "Album"
FROM track t
JOIN genre g
ON t.genre_id = g.genre_id
JOIN album al
ON t.album_id = al.album_id
WHERE g.name = 'Alternative & Punk'
ORDER BY "Album", "Track"