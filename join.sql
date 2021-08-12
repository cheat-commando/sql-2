-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT inv.invoice_id
FROM invoice inv
JOIN invoice_line invl
ON inv.invoice_id = invl.invoice_id
WHERE invl.unit_price > 0.99
GROUP BY inv.invoice_id
ORDER BY inv.invoice_id;

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.

-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers.
-- Support reps are on the employee table.


-- Get the album title and the artist name from all albums.


-- Get all playlist_track track_ids where the playlist name is Music.


-- Get all track names for 'playlist_id'.


-- Get all track names and the playlist name that they’re on ( 2 joins ).


-- Get all track names and album titles that are the genre 'Alternative & Punk' ( 2 joins ).