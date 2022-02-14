use classicmodels;

-- Question 1
describe products;
describe productlines; -- Don't need this one
SELECT * FROM products;
SELECT productName as 'Name', buyPrice as 'Buy Price', productLine as 'Product Line' 
FROM products 
Group By buyPrice DESC; 

-- Question 2
SELECT contactFirstName as 'First Name', contactLastName as 'Last Name', city as 'City' 
FROM customers 
WHERE country = 'Germany'
GROUP BY contactLastName ASC; 

-- Question 3
describe orders ;
SELECT * From orders;
SELECT status, Count(status) FROM orders
GROUP BY status;

-- Question 4
SELECT * FROM payments;
SELECT * 
FROM payments
WHERE paymentDate >= '2005-1-1';

-- Question 5
SELECT * FROM offices;
SELECT * FROM offices WHERE city = 'San Francisco';
SELECT lastName as 'Last Name', firstName as 'First Name', email as 'Email', jobTitle as 'Job Title' 
FROM employees 
WHERE officeCode = 1
GROUP BY lastName DESC;

-- Question 6
describe products;
SELECT * FROM products;
SELECT productName as 'Name', productLine as 'Product Line', productScale as 'Scale', productVendor as 'Vendor'
FROM products
WHERE productLine = "vintage cars" or productLine = "classic cars"
ORDER BY productName; 

-- 