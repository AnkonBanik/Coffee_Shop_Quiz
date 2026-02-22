select * from coffee_shop.products;

update coffee_shop.products
set products.Price = 3.72
where Id in (4, 5) 
;
select * from coffee_shop.products;

-- price update

update coffee_shop.products
set products.Price = Case products.Id
	when 7 then 3.10
    when 4 then 3.70
    when 5 then 3.75
end
where Id in (7,5,4);
select * from coffee_shop.products;

