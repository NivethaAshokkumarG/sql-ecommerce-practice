-- 1️.Create Database
CREATE DATABASE ECommerceDB;
USE ECommerceDB;

-- 2️.Create Product Table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0)
);

-- 3️.Create Sales Table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity INT CHECK (quantity > 0),
    sale_amount DECIMAL(10,2) CHECK (sale_amount > 0),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- 4️.Insert Sample Data into Product Table
INSERT INTO Product (product_id, product_name, price) VALUES
(1, 'Laptop', 85000.00),
(2, 'Smartphone', 45000.00),
(3, 'Headphones', 5000.00),
(4, 'Keyboard', 1200.00),
(5, 'Mouse', 800.00),
(6, 'Monitor', 15000.00),
(7, 'Webcam', 3500.00);

-- 5️.Insert Sample Data into Sales Table
INSERT INTO Sales (sale_id, product_id, quantity, sale_amount) VALUES
(1, 1, 2, 170000.00),
(2, 2, 3, 135000.00),
(3, 3, 5, 25000.00),
(4, 4, 10, 12000.00),
(5, 5, 15, 12000.00),
(6, 6, 2, 30000.00),
(7, 7, 4, 14000.00);

-- DISTINCT & AS
-- Display unique product names from the Product table.

Select distinct
	product_name from Product;

-- Display product names with alias Product_Name.

Select * from Product;
SELECT * from Sales;

Select 
product_name,	product_name as List_Of_Products
	from product;
	
-- Display unique product_id values from the Sales table.

Select distinct
	sale_id from Sales ;

-- Display product price with alias Product_Price

Select 
	price ,price as product_price 
	from product;
    
    
Select * from Product;
SELECT * from Sales;

    
    
    

-- WHERE Clause

--  Display products whose price is greater than 10,000.	
Select product_name ,price 
		from Product 
		where price > 10000;

-- Show products whose price is less than 5,000.
Select product_name ,price 
		from Product 
		where price <5000;

--  Display sales where quantity equals 2.
	select 
		* from Sales
		where quantity = 2;


-- Comparison Operators

-- Display products whose price is greater than or equal to 15,000.
Select 
		* from Product 
		where price >= 15000;

-- Display sales where quantity is not equal to 5.

	select 
		* from Sales
		where quantity != 5;


	-- Arithmetic Operators
-- 10.	Display product name and price after 10% increase.

			select name , age ,
age +5 as Age_After_5Years
from students;

Select
	product_name ,price, 
    price  *1.10 as After_10Percent_Increase
    from Product;

-- 11.	Display sale amount and sale amount after adding 500.

Select * from Product;
SELECT * from Sales;

Select
	sale_amount as Before_Sale_amount,
    sale_amount+500 as After_Increasing_saleAmount
    from Sales;

-- Logical Operators

-- 12.	Display products whose price is greater than 5,000 AND less than 50,000.
		
        select product_name 
			from Product
			where price > 5000 and price < 50000 ;
           
-- 13.	Display sales where quantity is 2 OR 4.
		select *
			from Sales
			where quantity = 2 or quantity = 4;


-- 14.	Display products whose price is NOT greater than 20,000.

 select product_name ,price
			from Product
			where price <= 20000;
           
	
	-- IS NULL / IS NOT NULL
-- 15.	Display sales records where product_id is NULL.

select * from sales
where Product_id is null;


-- 16.	Display products where price is NOT NULL.
	
    select product_name from product 
    where price is not null;

-- IN and NOT IN
-- 17.	Display products with product_id 1, 3, and 5.

select 
	product_name from product
	where product_id IN(1,3,5);


-- 18.	Display products whose product_id is NOT 2, 4, and 6.

select 
	product_name from product
	where product_id NOT IN(2,4,6);

-- BETWEEN and NOT BETWEEN
-- 19.	Display products whose price is between 1,000 and 20,000.

select 
	product_name from product
    where price between 1000 and 20000;

-- 20.	Display products whose price is NOT between 5,000 and 50,000.

select 
	product_name,price from product
    where price  not between 5000 and 50000;

-- LIKE and NOT LIKE
-- 21.	Display products whose name starts with 'M'.

Select
	* from product
where product_name like 'M%';



-- 22.	Display products whose name ends with 'e'.

Select
	* from product
where product_name like '%e';

-- 23.	Display products whose name contains 'phone'.
-- 24.	Display products whose name does not start with 'S'.















