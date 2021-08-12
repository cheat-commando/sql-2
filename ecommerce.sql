-- Let’s simulate an e-commerce site. We’re going to need to keep track of users, products,
-- and the products users have added to their cart.

-- users need an id, name, and an email
-- products need an id, name, and a price
-- cart should be a middle table that has an id, references both users and products, and has a quantity

-- Instructions --

-- Create 3 tables following the criteria in the summary.

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  email VARCHAR(40)
  );

CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  price NUMERIC(6,2)
  );
  
CREATE TABLE cart (
  cart_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES users(user_id),
  product_id INT NOT NULL REFERENCES products(product_id),
  quantity INT
  );

-- Add some data to fill up each table.
-- At least 3 users

INSERT INTO users(name, email)
VALUES
	('Carston', 'bdrummerrr@gmail.com'),
    ('Dylvin', 'dylvinisnotreal@yahoo.com'),
    ('Rand al-Thor', 'iamnottheDragon@gmail.com');

-- At least 5 products

INSERT INTO products(name, price)
VALUES
	('Wizard''s staff', 15.99),
    ('Leather armor', 6.99),
    ('Morningstar', 12.99),
    ('Earendil''s Light', 85.99),
    ('Mithril undershirt', 35.99);

-- Each user should have at least 2 different products in their cart

INSERT INTO cart (user_id, product_id, quantity)
VALUES
	(1, 1, 2),
    (1, 2, 1),
    (2, 5, 1),
    (2, 4, 1),
    (3, 3, 3),
    (3, 5, 1);

-- Run queries against your data.
-- Get all products in your first user’s cart

SELECT p.name, c.quantity
FROM products p
JOIN cart c
ON p.product_id = c.product_id
WHERE c.user_id = 1;

-- Get products in all carts with all the users’ information

SELECT u.name, u.email, p.name, c.quantity
FROM users u
JOIN cart c
ON u.user_id = c.user_id
JOIN products p
ON c.product_id = p.product_id
ORDER BY u.name, p.name;

-- Get the total cost of an order (sum the price of all products on an cart).

SELECT SUM(p.price*c.quantity)
FROM products p
JOIN cart c
ON p.product_id = c.product_id
WHERE c.user_id = 2;

-- Update the quantity of a product in a user’s cart where the user’s id is 2

UPDATE cart
SET quantity = 10
WHERE user_id = 2 and product_id IN (
  SELECT product_id FROM products WHERE name = 'Mithril undershirt');