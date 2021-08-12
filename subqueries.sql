-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT invoice_id
FROM invoice
WHERE invoice_id IN (
  SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99)
ORDER BY invoice_id;

-- Get all playlist tracks where the playlist name is Music.

SELECT track_id
FROM playlist_track
WHERE playlist_id IN (
  SELECT playlist_id FROM playlist WHERE name = 'Music')
ORDER BY track_id;

-- Get all track names for playlist_id 5.

SELECT name
FROM track
WHERE track_id IN (
  SELECT track_id FROM playlist_track WHERE playlist_id = 5)
ORDER BY name;

-- Get all tracks where the genre is Comedy.

SELECT name
FROM track
WHERE genre_id IN (
  SELECT genre_id FROM genre WHERE name = 'Comedy')
ORDER BY name;

-- Get all tracks where the album is Fireball.

SELECT name
FROM track
WHERE album_id IN (
  SELECT album_id FROM album WHERE name = 'Fireball')
ORDER BY name;

-- Get all tracks for the artist Queen ( 2 nested subqueries ).

SELECT name
FROM track
WHERE album_id IN (
  SELECT album_id FROM album WHERE artist_id IN (
    SELECT artist_id FROM artist WHERE name = 'Queen'))
GROUP BY name
ORDER BY name;