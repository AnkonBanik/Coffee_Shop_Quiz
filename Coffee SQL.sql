
-- How many Orders were made in January ? 

SELECT COUNT(*) 
FROM orders
WHERE Order_time >= '2017-01-01'
  AND Order_time < '2017-02-01';


-- How many female customers have last name "Bluth" ?
SELECT COUNT(*)
FROM customers
WHERE Gender = 'F'
  AND Last_name = 'Bluth';
  
  
  -- Which country's coffee is the cheapest ?
  
  SELECT Coffee_origin
FROM products
ORDER BY Price ASC
LIMIT 1;

-- How many customer phone number is null ?
SELECT COUNT(*)
FROM customers
WHERE Phone_number IS NULL;

-- How many orders were made in February ?
SELECT COUNT(*) 
FROM orders
WHERE Order_time >= '2017-02-01'
  AND Order_time < '2017-03-01';


-- How many product id 1 was sold in January ?
SELECT COUNT(*) 
FROM orders
WHERE Product_id = 1
  AND Order_time >= '2017-01-01'
  AND Order_time < '2017-02-01';

-- Coffee Brands from Brazil 

SELECT Name 
FROM products
WHERE Coffee_origin = 'Brazil';

-- How many customers' first name dont start with Emma, John and George ?
SELECT COUNT(*) 
FROM customers
WHERE First_name NOT IN ('Emma', 'John', 'George');

-- How many female customer's phone number is null ?

SELECT COUNT(*) 
FROM customers
WHERE Gender = 'F'
  AND Phone_number IS NULL;
  
  -- How many customer's have "a" in between their three characters first name ?
  
  SELECT COUNT(*)
FROM customers
WHERE First_name LIKE '_a_';

