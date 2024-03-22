USE food_store_manage_system;

﻿-- QUERY data of materials calories>=200
SELECT 	a.materials_name,
		a.materials_id,
		a.calories 
FROM materials AS a
WHERE calories >= 200
ORDER BY calories DESC;

-- Check the material with the purchase price is greater than $3 
SELECT a.materials_name,
		  b.price,
		  b.purchase_date
FROM materials a 
INNER JOIN purchase b 
		ON a.materials_id=b.materials_id
 WHERE  b.price>3
ORDER BY a.materials_name;

-- Check the material with the purchase price is BETWEEN $3 and $5, order them
SELECT a.materials_name,
	   b.price,
	   b.purchase_date
FROM materials a 
INNER JOIN purchase b 
		ON a.materials_id=b.materials_id
 WHERE  b.price BETWEEN 3 and 5
ORDER BY a.materials_name ;

-- Check the material with a purchase quantity greater than 50, order them
SELECT a.materials_name,
		  b.purchase_number,
		  b.purchase_date
FROM materials a 
INNER JOIN purchase b 
		ON a.materials_id=b.materials_id
 WHERE  b.purchase_number > 50
ORDER BY a.materials_name ;

-- Check the material with a sales quantity greater than 50, order them
SELECT a.materials_name,
		  c.sale_number,
		  c.sale_date
FROM materials a 
	INNER JOIN sales c 
			ON a.materials_id=c.materials_id
WHERE  c.sales_number > 50
ORDER BY a.materials_name ;

-- Check the material with the sales price is BETWEEN $3 and $5, order them
SELECT a.materials_name,
		  c.price,
		  c.sale_date
  FROM materials a 
INNER JOIN sales c 
		ON a.materials_id=c.materials_id
 WHERE  c.price BETWEEN ROUND(3.234,2) AND ROUND(5.234,2)
ORDER BY a.materials_name ;

-- QUERY the material with a purchase quantity
SELECT a.materials_name,
     SUM(b.purchase_number) as purchase_number
  FROM materials a 
INNER JOIN purchase b ON a.materials_id=b.materials_id
GROUP BY a.materials_name
ORDER BY a.materials_name ;

-- QUERY the material with a sale quantity
SELECT a.materials_name,
       SUM(c.sales_number) as sales_number
FROM materials a INNER JOIN sales c ON a.materials_id=c.materials_id
GROUP BY a.materials_name
ORDER BY a.materials_name;

-- query Monthly sales of material 
SELECT a.materials_name,
       DATE_FORMAT(c.sale_date,'%Y-%m') AS "year-month",
       SUM(c.sales_number) as sales_number
FROM materials a INNER JOIN sales c ON a.materials_id=c.materials_id
GROUP BY a.materials_name,
		DATE_FORMAT(c.sale_date,'%Y-%m') 
ORDER BY 3 DESC;

-- delete data of sales and purchase of Paper Towels
DELETE FROM purchase  
      WHERE  materials_id IN 
			(SELECT materials_id 
			FROM materials  
			WHERE  materials_name = 'Paper Towels');
