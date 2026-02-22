 -- Day Column Added
 
SELECT 
    *
FROM
    coffee_shop.orders;

ALTER TABLE coffee_shop.orders
ADD COLUMN Day_Name VARCHAR (15)
GENERATED ALWAYS AS (dayname(Order_time)) STORED
;

