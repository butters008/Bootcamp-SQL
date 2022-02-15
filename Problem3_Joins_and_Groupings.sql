use classicmodels;

-- Question 1
describe orders;
-- describe orderdetails; -- Don't Need this one
describe employees;
SELECT 
FROM employees e 
JOIN customers c on

SELECT c.customerName AS 'Customer Name', CONCAT(e.lastName, ', ', e.firstName) AS 'Sales Rep'
FROM customers c
JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY c.customerName ASC;


-- Question 2
describe products ;
describe orders;
describe orderdetails;
select * from orderdetails;
select * from orders ;
select * from products p ;

select p.productName as 'Product Name', o.quantityOrdered as `Total # Ordered`, SUM(o.priceEach *o.quantityOrdered) as `Total Sales`
FROM products p 
JOIN orderdetails o on p.productCode = o.productCode 
group by productName
order by `Total Sales` desc;

-- Question 3
SELECT DISTINCT o.status as `Order Status`, COUNT(o.status) as `# Orders` 
FROM orders o
group by `Order Status`
Order by o.status ASC;

-- Question 4
describe products;
describe orderdetails ;
SELECT p.productLine as `Product Line`, SUM(o.quantityOrdered) as `# SOLD`
FROM products p 
JOIN orderdetails o on p.productCode = o.productCode
group by `Product Line`
Order by `# SOLD` desc;

-- Question 5
describe employees;
describe customers;
describe orders ;
describe orderdetails ;
select * from orderdetails;
select * from orders;
select * from customers c ;
SELECT * from employees e ;

select CONCAT(e.lastName, " ", e.firstName) as 'Employee Name', 
COUNT(o.orderNumber) as `Number of Sales`,
IFNULL(SUM(o2.priceEach * o2.quantityOrdered), 0.00) as `Total Sales`
from employees e
left join customers c on c.salesRepEmployeeNumber = e.employeeNumber
left join orders o on c.customerNumber = o.customerNumber
left join orderdetails o2 on o.orderNumber = o2.orderNumber
where e.jobTitle = 'Sales Rep'
group by CONCAT(e.lastName, " ", e.firstName)  
ORDER BY `Total Sales` DESC;

-- Question 6
describe payments;
SELECT * from payments;

SELECT DATE_FORMAT(p.paymentDate, '%M') as `Month`, DATE_FORMAT(p.paymentDate, '%Y') as `Year`, FORMAT(SUM(p.amount),2) as 'Payments Recieved'
FROM payments p
group by `Month`, `Year`
ORDER by `Month`;
