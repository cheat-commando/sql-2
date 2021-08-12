-- Let’s simulate an e-commerce site. We’re going to need to keep track of users, products,
-- and the products users have added to their cart.

-- users need an id, name, and an email
-- products need an id, name, and a price
-- cart should be a middle table that has an id, references both users and products, and has a quantity

-- Instructions --

-- Create 3 tables following the criteria in the summary.

-- Add some data to fill up each table.
-- At least 3 users

-- At least 5 products

-- Each user should have at least 2 different products in their cart

-- Run queries against your data.
-- Get all products in your first user’s cart

-- Get products in all carts with all the users’ information

-- Get the total cost of an order (sum the price of all products on an cart).

-- Update the quantity of a product in a user’s cart where the user’s id is 2