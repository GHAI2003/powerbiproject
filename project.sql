create schema karamveer;
use karamveer;
select * from Mobile;
-- check mobile features and price list -- 
select phone_name, price from mobile;
-- Find out the price of 5 most expensive phones -- 
select * from mobile order by price desc limit 5;
-- Find out the price of 5 most cheapest phones -- 
select * from mobile order by price asc limit 5;
-- list of top 5 expensive samsung phones with price and all features included --
select * from mobile where brands = "samsung" order by price desc limit 5;
-- list top 5 android phones with most price -- 
select * from mobile where operating_System_type = "Android" order by price desc limit 5;
-- must have top 5 cheapest android phones -- 
select * from mobile where operating_System_type = "Android" order by price asc limit 5;
-- list top 5 IOS phones with most price -- 
select * from mobile where operating_System_type = "IOS" order by price desc limit 5;
-- list top 5 IOS phones with least price -- 
select * from mobile where operating_System_type = "IOS" order by price asc limit 5;
--  phone that support 5g and also top 5 phone with 5g support --
select * from mobile where 5g_availability = "YES" order by price desc limit 5;
-- Total price of all mobile is to br found with brand name --
select brands, sum(price) from mobile group by brands;
