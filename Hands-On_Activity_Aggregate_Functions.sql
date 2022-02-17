use classicmodels;

-- Using MOD() Function
select orderNumber, sum(quantityOrdered) as 'Qty',
if(mod(sum(quantityOrdered), 2), 'Odd', 'Even') as `oddOrEven`
from orderdetails 
group by orderNumber 
order by orderNumber;

/*
 * -First, we used sum() function to get the total quantity of products by sales
 * -Then, MOD() function to find the remainder of the total quantity result is in 0 or 1, depending on total quanitity is (even or odd)
 * -Finally, we used if() to dislay the odd or even string based on the result from the MOD()
 */

-- 	TRUNCATE Function
SELECT TRUNCATE(1.555,1);
SELECT TRUNCATE(199.99,-2)


-- Round Function
SELECT productCode, AVG(quantityOrdered * priceEach) avg_order_item_value
FROM orderdetails
GROUP BY productCode;    

/*
The average order values of products are not quite readable because they contain many numbers after the decimal points.
For the average values, the number after the decimal point may not be important. 
Therefore, you can use the ROUND() function to round them to zero decimal places, as shown in the following query:
*/

SELECT productCode, ROUND(AVG(quantityOrdered * priceEach)) avg_order_item_value
FROM orderdetails
GROUP BY productCode;    

-- Replace() Function
UPDATE tbl_name SET field_name = REPLACE(field_name, string_to_find, string_to_replace)
WHERE conditions;

UPDATE products SET productDescription = REPLACE(productDescription, 'abuot', 'about');


