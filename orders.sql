-- 1. Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL,
    product_name varchar(30),
    product_price FLOAT,
    quantity INTEGER
)

/* 2. Add 5 orders to the orders table.
        A. Make orders for at least two different people.
        B. person_id should be different for different people.
*/

INSERT into orders (person_id, product_name, product_price, quantity)
VALUES (231, 'pasta', 12.50, 2),
(234, 'pizza', 18, 4),
(25, 'salad', 10, 2),
(231, 'stromboli', 13.75, 1),
(87, 'chicken wings', 15.65, 2);

-- 3. Select all the records from the orders table.
SELECT * FROM orders;

-- 4. Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- 5. Calculate the total order price.
-- per order
SELECT order_id, SUM(quantity * product_price) FROM orders GROUP BY order_id;
-- total for entire table
SELECT SUM(quantity * product_price) FROM orders;

-- 6. Calculate the total order price by a single person_id.
SELECT person_id, SUM(quantity * product_price) FROM orders GROUP BY person_id;