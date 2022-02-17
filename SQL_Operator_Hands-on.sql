use classicmodels;

-- OR
select customername, country
FROM customers c
WHERE country = 'USA' OR country = 'France';

-- AND
select * from customers;
select customerName, country, creditLimit  
from customers
where (country = 'USA' or country = 'France') and creditLimit > 10000; -- Forgot the () on the OR

select customerName, country, creditLimit  
from customers
where country = 'USA' OR country = 'France' and creditLimit > 10000; -- adds one col that has 0 for credit limit

select customerName, city, country
from customers
where state = 'CA' and country = 'USA';

select customerName, city, country, creditLimit 
from customers
where state = 'CA' and country = 'USA' and creditLimit > 100000;

-- BETWEEN
select productCode, productName, buyPrice
from products
where buyPrice between 90 and 100;

select productCode, productName, buyPrice
from products
where buyPrice >= 90 and buyPrice <= 100;

select productCode, productName, buyPrice
from products
where buyPrice not between 20 and 100;

select productCode, productName, buyPrice
from products
where buyPrice < 20 or buyPrice > 100;

-- NULL
select customerName, country, salesRepEmployeeNumber 
from customers 
where salesRepEmployeeNumber is null
order by customerName;

select customerName, country, salesRepEmployeeNumber 
from customers 
where salesRepEmployeeNumber is not null
order by customerName;