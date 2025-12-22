-- =============================================
-- SQL AVG() Function Practice
-- Using: AVG() aggregate function
-- =============================================

-- 1. Find the average UnitPrice of all products
SELECT
    AVG(UnitPrice) AS avg_unit_price
FROM products;

-- 2. Calculate the average UnitsInStock of all products
SELECT
    AVG(UnitsInStock) AS avg_units_in_stock
FROM products;

-- 3. Find the average UnitsOnOrder for all products
SELECT
    AVG(UnitsOnOrder) AS avg_units_on_order
FROM products;

-- 4. Calculate the average Quantity in order_details
SELECT
    AVG(Quantity) AS avg_quantity
FROM order_details;

-- 5. Find the average UnitPrice of products in CategoryID = 1 (Beverages)
SELECT
    AVG(UnitPrice) AS avg_unit_price_catID_1
FROM products
WHERE CategoryID = 1;

-- 6. Calculate the average UnitsInStock for products supplied by SupplierID = 3
SELECT
    AVG(UnitsInStock) AS Avg_UnitsInStock
FROM products
WHERE SupplierID = 3;

-- 7. Find the average Quantity in order_details for OrderID = 10248
SELECT
    AVG(Quantity) AS avg_quantity
FROM order_details
WHERE OrderID = 10248;

-- 8. Calculate the average UnitPrice of discontinued products
SELECT
    AVG(UnitPrice) AS avg_unit_price
FROM products
WHERE Discontinued = 1;

-- 9. Find the average UnitsInStock for products where ReorderLevel <= 10
SELECT
    AVG(UnitsInStock) AS avg_UnitsInStock
FROM products
WHERE ReorderLevel <= 10;

-- 10. Calculate the average Quantity for order_details where Quantity >= 10
SELECT
    AVG(Quantity) AS Avg_Quantity
FROM order_details
WHERE Quantity >= 10;

-- 11. Find the average UnitPrice of products in CategoryID = 2 (Condiments)
SELECT 
	AVG(UnitPrice) AS avg_UnitPrice
FROM products
WHERE CategoryID = 2;

-- 12. Calculate the average UnitsOnOrder for products that are not discontinued
SELECT
    AVG(UnitsOnOrder) AS avg_UnitsOnOrder
FROM products
WHERE Discontinued = 0;

-- 13. Find the average Quantity in order_details for products with ProductID IN (1,5,10)
SELECT
	AVG(Quantity) AS avg_Quantity
FROM order_details
WHERE ProductID IN (1,5,10);

-- 14. Calculate the average UnitPrice × UnitsInStock for all products (average stock value)
SELECT
	AVG(UnitPrice * UnitsInStock) AS avg_UnitPrice_UnitsInStock
FROM products;

-- 15. Find the average Quantity of order_details for orders placed by EmployeeID = 4
SELECT
    AVG(od.Quantity) AS avg_Quantity
FROM order_details od
JOIN orders o
ON o.OrderID = od.OrderID
WHERE o.EmployeeID = 4;
