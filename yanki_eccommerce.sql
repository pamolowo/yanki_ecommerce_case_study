-- WINDOWS FUNCTIONS:
-- Calculate the total sales amount for each order with the individual product sale:

-- Calulate the total sales amount for each other along with the individual product sales
SELECT
	o.Order_ID,
	p.Product_ID,
	p.Price,
	o.Quantity,
	o.Total_Price,
	Sum(p.Price * o.Quantity)OVER(PARTITION BY o.Order_ID)AS total_sales_amount
FROM 
	yanki.order as o
JOIN
	yanki.products p ON o.Product_ID = p.Product_ID;