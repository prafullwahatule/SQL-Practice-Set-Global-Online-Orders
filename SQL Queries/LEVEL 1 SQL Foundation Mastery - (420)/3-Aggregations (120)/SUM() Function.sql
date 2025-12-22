-- =============================================
-- SQL SUM() Function Practice
-- Using: SUM() aggregate function
-- =============================================

-- 1. Find the total UnitsInStock of all products
SELECT 
	SUM(UnitsInStock) AS Total_UnitsInStock
FROM products;

-- 2. Calculate the total UnitsOnOrder across all products
SELECT 
	SUM(UnitsOnOrder) AS Total_UnitsOnOrder
FROM products;

-- 3. Find the total Quantity ordered in order_details
SELECT 
	SUM(Quantity) AS Total_Quantity
FROM order_details;

-- 4. Calculate the total UnitPrice × UnitsInStock for all products (total stock value)
SELECT 
	SUM(UnitPrice * UnitsInStock) AS Total_UnitsInStock_UnitPrice
FROM products;

-- 5. Find the total UnitPrice × Quantity for order_details of OrderID = 10248
SELECT 
	SUM(p.UnitPrice * od.Quantity) AS Total_Quantity_UnitPrice
FROM products p
JOIN order_details od
ON od.ProductID = p.ProductID
WHERE OrderID = 10248;

-- 6. Calculate the total UnitsInStock for products in CategoryID = 1 (Beverages)
SELECT
    SUM(UnitsInStock) AS Total_UnitsInStock
FROM products
WHERE CategoryID = 1;

-- 7. Find the total Quantity of order_details where Quantity >= 10
SELECT
    SUM(Quantity) AS Total_Quantity
FROM order_details
WHERE Quantity >= 10;

-- 8. Calculate the total UnitPrice × UnitsOnOrder for discontinued products
SELECT
    SUM(UnitPrice * UnitsOnOrder) AS Total_UnitsOnOrder_Value
FROM products
WHERE Discontinued = 1;

-- 9. Find the total UnitsInStock for products supplied by SupplierID = 3
SELECT
    SUM(UnitsInStock) AS Total_UnitsInStock
FROM products
WHERE SupplierID = 3;

-- 10. Calculate the total Quantity of products in orders placed by EmployeeID = 4
SELECT
    SUM(od.Quantity) AS Total_Quantity
FROM order_details od
JOIN orders o
ON o.OrderID = od.OrderID
WHERE o.EmployeeID = 4;

-- 11. Find the total UnitsInStock for products where ReorderLevel <= 10
SELECT
    SUM(UnitsInStock) AS Total_UnitsInStock
FROM products
WHERE ReorderLevel <= 10;

-- 12. Calculate the total Quantity in order_details for products in CategoryID = 2 (Condiments)
SELECT
    SUM(od.Quantity) AS Total_Quantity
FROM order_details od
JOIN products p
ON p.ProductID = od.ProductID
WHERE p.CategoryID = 2;

-- 13. Find the total UnitsOnOrder for products where Discontinued = 0
SELECT
    SUM(UnitsOnOrder) AS Total_UnitsOnOrder
FROM products
WHERE Discontinued = 0;

-- 14. Calculate the total UnitPrice × Quantity for all orders shipped by ShipperID = 2
SELECT
    SUM(p.UnitPrice * od.Quantity) AS Total_Order_Value
FROM order_details od
JOIN orders o
ON o.OrderID = od.OrderID
JOIN products p
ON p.ProductID = od.ProductID
WHERE o.ShipperID = 2;

-- 15. Find the total Quantity of order_details where ProductID IN (1, 5, 10)
SELECT
    SUM(Quantity) AS Total_Quantity
FROM order_details
WHERE ProductID IN (1, 5, 10);