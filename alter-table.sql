-- Copy, paste, and run the insert statement from the delete section above. (You should have deleted all the entries.)
--for reference, I copied this here
-- CREATE TABLE animals (
-- id SERIAL PRIMARY KEY, name VARCHAR(50), type TEXT, age INTEGER);

-- INSERT INTO animals ( name, type, age ) VALUES ('Leo', 'lion', 12), ('Jerry', 'mouse', 4), ('Marty', 'zebra', 10), ('Gloria', 'hippo', 8), ('Alex', 'lion', 9), ('Melman', 'giraffe', 15), ('Nala', 'lion', 2), ('Marie', 'cat', 1), ('Flounder', 'fish', 8);

-- Add a column to the animals table called “location”. It should have a VARCHAR data type.

ALTER TABLE animals
ADD location VARCHAR(30);

-- Insert 3 new animals into the table – make sure none of their fields are null.

INSERT INTO animals (name, type, age, location)
VALUES
	('Pumba', 'warthog', 80, 'Africa'),
    ('Sonic', 'hedgehog', 17, 'Angel Island'),
    ('Gromit', 'dog', 100, 'London');

-- Change the “type” column’s name to be “species”.

ALTER TABLE animals
RENAME COLUMN type TO species;

-- Change the “species” column data type to be VARCHAR.

ALTER TABLE animals
ALTER species TYPE VARCHAR(20);