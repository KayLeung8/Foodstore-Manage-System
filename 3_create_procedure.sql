USE food_store_manage_system;
DROP PROCEDURE if exists p_get_profit;
DELIMITER //
CREATE PROCEDURE p_get_profit()
BEGIN
	#Routine body goes here...
	SELECT a.materials_name,
         DATE_FORMAT(c.sale_date,'%Y-%m') AS "year-month" ,
         SUM(c.sales_number*(c.price-b.price)) AS profit
  	 FROM materials a INNER JOIN purchase b ON a.materials_id=b.materials_id
   INNER JOIN sales c ON b.purchase_id=c.purchase_id
   GROUP BY a.materials_name,
         DATE_FORMAT(c.sale_date,'%Y-%m');

END;
//
DELIMITER ;
CALL p_get_profit();