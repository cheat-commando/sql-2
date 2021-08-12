-- Copy, paste, and run the SQL code from the summary.

Done

-- Delete all ‘lion’ entries from the table.

DELETE
FROM animals
WHERE type = 'lion';

-- Delete all animals whose names start with “M”.

DELETE
FROM animals
WHERE name LIKE 'M%';

-- Delete all entries whose age is less than 9.

DELETE
FROM animals
WHERE age < 9;