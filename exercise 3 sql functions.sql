select * from products

-- a query to find all products whose name starts with the letter 'S'
select * from products where name like 'S%'

--a query to find all products whose description contains the word 'with'
select * from products where description like '%with%'

--a query to find all products whose name ends with 'er'.
select * from products where name like '%er'

-- a query to find all products whose category contains 'on' (case-insensitive)
select * from products where category ilike '%on%'

-- a query to find all products whose name contains exactly 5 characters
select * from products where name like '_____'

--a query to display the product names and their corresponding lengths.
select name, length(name) from products

-- Write a query to display product names in uppercase.
select name, upper(name) "upper case" from products

-- Write a query to extract the first 10 characters of each product description.
select description, left(description,10) extracted_text from products

-- Write a query to replace 'Premium' with 'Luxury' in all product names.
select name, replace (name, 'Premium', 'Luxury') from products

-- Write a query to concatenate the product name and category with a hyphen in between.
select name, category, concat(name, '-', category) from products

--Write a query to round all product prices to the nearest integer.
select price, round(price) from products

--  Write a query to calculate the sale price after a 15% discount.
select price, price-(0.15*price) "sale price after discount" from products

--Write a query to display the day of the week (name) when each product was released.
SELECT name, TO_CHAR(release_date, 'Day') AS day_of_week
FROM products;

-- Write a query to find all products released in the current month, regardless of year.
select name, release_date,  extract(month from release_date) from products
order by extract(month from release_date) desc

-- Write a query to calculate how many days each product has been in the inventory since its release date.
SELECT name, (CURRENT_DATE - release_date) as days_in_inventory
FROM products;

-- Write a query to find the average price of all products.
select round(avg(price),2) from products

-- Write a query to find the total stock quantity of all products.
select sum(stock_quantity) from products

-- Write a query to find the highest and lowest product ratings.
SELECT 
	MAX(rating) AS highest_rating,
    MIN(rating) AS lowest_rating
FROM products;

-- Write a query to count the total number of products available for sale.
SELECT COUNT(*) total_available_products
FROM products
WHERE is_available = true;

-- Write a query to find the average price, minimum price, maximum price, and total number of products in a single result.
SELECT 
    AVG(price) AS average_price,
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price,
    COUNT(*) AS total_products
FROM products;





