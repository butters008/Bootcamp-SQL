use Banking;
show tables;
describe product;

SELECT * FROM product;
-- Question 1
select NAME as 'Product', PRODUCT_TYPE_CD as 'Type' FROM product;

-- Question 2
describe employee;
describe branch;
SELECT b.NAME as 'Branch Name', b.CITY as 'Branch City', e.LAST_NAME as 'Employee Last Name', e.TITLE as 'Employee Title'
FROM branch b
join employee e 
on e.ASSIGNED_BRANCH_ID = b.BRANCH_ID; 

-- Question 3
SELECT DISTINCT e.TITLE
FROM employee e;

-- Question 4
describe employee;
SELECT e.LAST_NAME as 'Employee Last Name', e.TITLE as 'Employee Title', m.LAST_NAME as 'Manager Last Name', m.TITLE as 'Manager Title' 
FROM employee e
JOIN employee m on m.EMP_ID = e.SUPERIOR_EMP_ID;

-- Question 5 
describe account;
describe product;
SELECT p.NAME as 'Product Name', a.AVAIL_BALANCE as 'Available Balance', i.LAST_NAME as 'Customer Last Name'
FROM account a 
JOIN product p ON a.PRODUCT_CD = p.PRODUCT_CD 
JOIN individual i  ON a.CUST_ID = i.CUST_ID

-- Question 6
describe acc_transaction;
SELECT * FROM acc_transaction ;
-- SELECT at2.*
SELECT at2.*, a.AVAIL_BALANCE as 'Available Balance', i.LAST_NAME as 'Customer Last Name'
FROM account a 
JOIN acc_transaction at2 ON a.ACCOUNT_ID = at2.ACCOUNT_ID 
JOIN individual i  ON a.CUST_ID = i.CUST_ID
WHERE i.LAST_NAME LIKE 'T%'; 

SELECT * FROM account a WHERE CUST_ID = 2;
SELECT * FROM individual i WHERE CUST_ID = 3;