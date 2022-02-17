use mockSQL;

-- Question 1
select o.ORDER_ID, o.USER_ID, STORE_ID 
from ORDERS o
join USERS u on o.USER_ID = u.USER_ID 
where u.FIRST_NAME = 'Marion';

-- Question 2
SELECT * from USERS u ;
select * from ORDERS o ;

select u.USER_ID, u.FIRST_NAME, u.LAST_NAME, u.CITY  
from ORDERS o 
right join USERS u ON o.USER_ID = u.USER_ID
where u.USER_ID = IFNULL(o.ORDER_ID, u.USER_ID) ;  -- Need to finish this

-- Question 3
select * from ORDER_ITEMS;
select * from ITEMS i ;

select DISTINCT i.*
from ITEMS i 
join ORDER_ITEMS oi on i.ITEM_ID = oi.ITEM_ID ; 

-- Question 4
SELECT * FROM ORDERS o ;

select o.ORDER_ID as `Order ID`, i.NAME as `Item Name`, i.PRICE as `Item Price`, oi.QUANTITY as `Quantity`
from ORDERS o 
join STORES s on o.STORE_ID = s.STORE_ID
join ORDER_ITEMS oi on o.ORDER_ID = oi.ORDER_ID
JOIN ITEMS i on oi.ITEM_ID = i.ITEM_ID
where s.CITY = 'New York'
order by `Order ID`;

-- Question 5
select DISTINCT i.NAME as `Item Name`, SUM(oi.QUANTITY)*i.PRICE  as `Revenue` 
from ITEMS i
join ORDER_ITEMS oi on i.ITEM_ID = oi.ITEM_ID 
GROUP by i.ITEM_ID 
ORDER by `Revenue` DESC;

-- Question 6
select * from ORDER_ITEMS oi;
select * from ORDERS o ;

select s.NAME as `Name`, count(o.STORE_ID) as `Order Quantity`, 
CASE 1 
WHEN count(o.STORE_ID) <= 1 THEN 'Low' 
WHEN count(o.STORE_ID) = 2 or count(o.STORE_ID) = 3 THEN 'Medium' 
ELSE 'High' END as `Sales Figure`
from ORDERS o 
join STORES s on o.STORE_ID = s.STORE_ID 
group by s.STORE_ID
order by `Order Quantity` DESC;
