-- =============================================
-- SQL GROUP BY Clause Practice
-- Using: GROUP BY with aggregate functions
-- =============================================

-- 1. Find the total number of products in each category
SELECT
    c.CategoryName,
    COUNT(p.ProductID) AS Total_Products
FROM products p
JOIN categories c
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

-- 2. Calculate the total UnitsInStock for products in each category
SELECT
    c.CategoryName,
    SUM(p.UnitsInStock) AS Total_UnitsInStock
FROM products p
JOIN categories c
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

-- 3. Find the average UnitPrice of products grouped by CategoryID
SELECT
	c.CategoryID,
	AVG(p.UnitPrice) AS Avg_UnitPrice
FROM products p
JOIN categories c
ON c.CategoryID = p.CategoryID
GROUP BY CategoryID;

-- 4. Count the number of customers in each country
SELECT
	Country,
	COUNT(CustomerID) AS Total_Cust
FROM customers
GROUP BY Country;

-- 5. Count the number of employees born in each year
SELECT 
	YEAR(BirthDate) AS Year_of_Born,
    COUNT(EmployeeID) AS Total_Employees
FROM employees
GROUP BY YEAR(BirthDate);

-- 6. Find the total Quantity ordered for each ProductID
SELECT
	p.ProductID,
	SUM(od.Quantity) AS Total_Quantity
FROM order_details od
JOIN products p
ON p.ProductID = od.ProductID
GROUP BY p.ProductID;

-- 7. Calculate the total Quantity for each OrderID
SELECT
	o.OrderID,
	SUM(od.Quantity) AS Total_Quantity
FROM order_details od
JOIN orders o
ON o.OrderID = od.OrderID
GROUP BY o.OrderID;

-- 8. Find the maximum UnitPrice for products in each category
SELECT 
    c.CategoryName,
    MAX(p.UnitPrice) AS Max_UnitPrice
FROM categories c
JOIN products p
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

-- 9. Find the minimum UnitsInStock for products grouped by SupplierID
SELECT
    SupplierID,
    MIN(UnitsInStock) AS Min_UnitsInStock
FROM products
GROUP BY SupplierID;

-- 10. Count the number of orders placed by each CustomerID
SELECT
    CustomerID,
    COUNT(OrderID) AS Total_Orders
FROM orders
GROUP BY CustomerID;

-- 11. Find the total UnitsOnOrder for products grouped by SupplierID
SELECT
    SupplierID,
    SUM(UnitsOnOrder) AS Total_UnitsOnOrder
FROM products
GROUP BY SupplierID;

-- 12. Calculate the average Quantity for each ProductID in order_details
SELECT
    ProductID,
    AVG(Quantity) AS Avg_Quantity
FROM order_details
GROUP BY ProductID;

-- 13. Count the number of orders shipped by each ShipperID
SELECT
    ShipperID,
    COUNT(OrderID) AS Total_Orders
FROM orders
GROUP BY ShipperID;

-- 14. Find the total UnitPrice × UnitsInStock for each category
SELECT
    c.CategoryName,
    SUM(p.UnitPrice * p.UnitsInStock) AS Total_Stock_Value
FROM products p
JOIN categories c
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

-- 15. Calculate the average UnitPrice of products for each SupplierID
SELECT
    SupplierID,
    AVG(UnitPrice) AS Avg_UnitPrice
FROM products
GROUP BY SupplierID;

-- 16. Count the number of discontinued products in each category
SELECT
    c.CategoryName,
    COUNT(p.ProductID) AS Discontinued_Products
FROM products p
JOIN categories c
ON c.CategoryID = p.CategoryID
WHERE p.Discontinued = 1
GROUP BY c.CategoryName;

-- 17. Find the total Quantity for each OrderID placed by EmployeeID = 4
SELECT
    o.OrderID,
    SUM(od.Quantity) AS Total_Quantity
FROM orders o
JOIN order_details od
ON od.OrderID = o.OrderID
WHERE o.EmployeeID = 4
GROUP BY o.OrderID;

-- 18. Count the number of products supplied by each SupplierID
SELECT
    SupplierID,
    COUNT(ProductID) AS Total_Products
FROM products
GROUP BY SupplierID;

-- 19. Find the total UnitsInStock for products where ReorderLevel <= 10, grouped by CategoryID
SELECT
    CategoryID,
    SUM(UnitsInStock) AS Total_UnitsInStock
FROM products
WHERE ReorderLevel <= 10
GROUP BY CategoryID;

-- 20. Calculate the maximum Quantity for each ProductID
SELECT
    ProductID,
    MAX(Quantity) AS Max_Quantity
FROM order_details
GROUP BY ProductID;

-- 21. Count the number of orders for each month (GROUP BY MONTH(OrderDate))
SELECT
    MONTH(OrderDate) AS Order_Month,
    COUNT(OrderID) AS Total_Orders
FROM orders
GROUP BY MONTH(OrderDate);

-- 22. Find the total Quantity ordered for each CustomerID
SELECT
    o.CustomerID,
    SUM(od.Quantity) AS Total_Quantity
FROM orders o
JOIN order_details od
ON od.OrderID = o.OrderID
GROUP BY o.CustomerID;

-- 23. Calculate the average UnitsInStock for each CategoryID
SELECT
    CategoryID,
    AVG(UnitsInStock) AS Avg_UnitsInStock
FROM products
GROUP BY CategoryID;

-- 24. Count the number of products in stock for each SupplierID
SELECT
    SupplierID,
    COUNT(ProductID) AS Products_In_Stock
FROM products
WHERE UnitsInStock > 0
GROUP BY SupplierID;

-- 25. Find the maximum UnitPrice for discontinued products grouped by CategoryID
SELECT
    p.CategoryID,
    MAX(p.UnitPrice) AS Max_UnitPrice
FROM products p
WHERE p.Discontinued = 1
GROUP BY p.CategoryID;

-- 26. Count the number of orders placed by each EmployeeID
SELECT
    EmployeeID,
    COUNT(OrderID) AS Total_Orders
FROM orders
GROUP BY EmployeeID;

-- 27. Find the total UnitsOnOrder for each CategoryID
SELECT
    CategoryID,
    SUM(UnitsOnOrder) AS Total_UnitsOnOrder
FROM products
GROUP BY CategoryID;

-- 28. Calculate the average Quantity for products supplied by each SupplierID
SELECT
    p.SupplierID,
    AVG(od.Quantity) AS Avg_Quantity
FROM products p
JOIN order_details od
ON od.ProductID = p.ProductID
GROUP BY p.SupplierID;

-- 29. Count the number of products in each CategoryID that are discontinued
SELECT
    CategoryID,
    COUNT(ProductID) AS Discontinued_Products
FROM products
WHERE Discontinued = 1
GROUP BY CategoryID;

-- 30. Find the total Quantity in order_details for each ProductID where Quantity >= 10
SELECT
	p.ProductID,
	SUM(od.Quantity) AS Total_Quantity
FROM products p
JOIN order_details od
ON od.ProductID = p.ProductID
WHERE od.Quantity >= 10 
GROUP BY p.ProductID;
    