-- Find a count of how many tracks there are per genre. Display the genre name with the count.

SELECT COUNT(t.track_id) "Tracks", g.name "Genre"
FROM genre g
JOIN track t
ON t.genre_id = g.genre_id
GROUP BY "Genre"
ORDER BY "Genre";

-- Find a count of how many tracks are the “Pop” genre and how many tracks are the “Rock” genre.

SELECT COUNT(t.track_id) "Tracks", g.name "Genre"
FROM genre g
JOIN track t
ON t.genre_id = g.genre_id
WHERE g.name = 'Pop' or g.name = 'Rock'
GROUP BY "Genre"
ORDER BY "Genre";

-- Find a list of all artists and how many albums they have.

SELECT art.name "Artist", COUNT(al.album_id) "Albums"
FROM artist art
JOIN album al
ON art.artist_id = al.artist_id
GROUP BY art.name
ORDER BY art.name;