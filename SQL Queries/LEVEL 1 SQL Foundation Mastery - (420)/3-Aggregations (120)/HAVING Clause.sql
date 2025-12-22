-- =============================================
-- SQL HAVING Clause Practice
-- Using: HAVING with GROUP BY
-- =============================================

-- 1. Find categories having more than 5 products 
SELECT
    c.CategoryName,
    COUNT(p.ProductID) AS Total_Products
FROM categories c
JOIN products p
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
HAVING COUNT(p.ProductID) > 5;

-- 2. Retrieve suppliers having supplied more than 10 products
SELECT
    SupplierID,
    COUNT(ProductID) AS Total_Products
FROM products
GROUP BY SupplierID
HAVING COUNT(ProductID) > 10;

-- 3. Find products grouped by CategoryID having average UnitPrice > 20
SELECT
    CategoryID,
    AVG(UnitPrice) AS Avg_UnitPrice
FROM products
GROUP BY CategoryID
HAVING AVG(UnitPrice) > 20;

-- 4. Show orders grouped by CustomerID having total Quantity > 50
SELECT
    o.CustomerID,
    SUM(od.Quantity) AS Total_Quantity
FROM orders o
JOIN order_details od
ON o.OrderID = od.OrderID
GROUP BY o.CustomerID
HAVING SUM(od.Quantity) > 50;

-- 5. Find employees having placed more than 5 orders
SELECT
    EmployeeID,
    COUNT(OrderID) AS Total_Orders
FROM orders
GROUP BY EmployeeID
HAVING COUNT(OrderID) > 5;

-- 6. Retrieve products grouped by SupplierID having total UnitsInStock < 100
SELECT
    SupplierID,
    SUM(UnitsInStock) AS Total_UnitsInStock
FROM products
GROUP BY SupplierID
HAVING SUM(UnitsInStock) < 100;

-- 7. Find categories having average UnitPrice > 15
SELECT
    CategoryID,
    AVG(UnitPrice) AS Avg_UnitPrice
FROM products
GROUP BY CategoryID
HAVING AVG(UnitPrice) > 15;

-- 8. Show orders grouped by ShipperID having count(OrderID) > 20
SELECT
    ShipperID,
    COUNT(OrderID) AS Total_Orders
FROM orders
GROUP BY ShipperID
HAVING COUNT(OrderID) > 20;

-- 9. Find customers having placed more than 3 orders
SELECT
    CustomerID,
    COUNT(OrderID) AS Total_Orders
FROM orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 3;

-- 10. Retrieve products grouped by CategoryID having total UnitsOnOrder > 50
SELECT
    CategoryID,
    SUM(UnitsOnOrder) AS Total_UnitsOnOrder
FROM products
GROUP BY CategoryID
HAVING SUM(UnitsOnOrder) > 50;

-- 11. Find suppliers having more than 5 discontinued products
SELECT
    SupplierID,
    COUNT(ProductID) AS Discontinued_Products
FROM products
WHERE Discontinued = 1
GROUP BY SupplierID
HAVING COUNT(ProductID) > 5;

-- 12. Show orders grouped by EmployeeID having total Quantity > 40
SELECT
    o.EmployeeID,
    SUM(od.Quantity) AS Total_Quantity
FROM orders o
JOIN order_details od
ON o.OrderID = od.OrderID
GROUP BY o.EmployeeID
HAVING SUM(od.Quantity) > 40;

-- 13. Find products where maximum UnitPrice > 25 grouped by SupplierID
SELECT
    SupplierID,
    MAX(UnitPrice) AS Max_UnitPrice
FROM products
GROUP BY SupplierID
HAVING MAX(UnitPrice) > 25;

-- 14. Retrieve categories having total UnitsInStock < 200
SELECT
    CategoryID,
    SUM(UnitsInStock) AS Total_UnitsInStock
FROM products
GROUP BY CategoryID
HAVING SUM(UnitsInStock) < 200;

-- 15. Find employees having average order Quantity > 10
SELECT
    o.EmployeeID,
    AVG(od.Quantity) AS Avg_Quantity
FROM orders o
JOIN order_details od
ON o.OrderID = od.OrderID
GROUP BY o.EmployeeID
HAVING AVG(od.Quantity) > 10;

-- 16. Show products grouped by CategoryID having minimum UnitsInStock = 0
SELECT
    CategoryID,
    MIN(UnitsInStock) AS Min_UnitsInStock
FROM products
GROUP BY CategoryID
HAVING MIN(UnitsInStock) = 0;

-- 17. Find customers with total orders Quantity > 30
SELECT
    o.CustomerID,
    SUM(od.Quantity) AS Total_Quantity
FROM orders o
JOIN order_details od
ON o.OrderID = od.OrderID
GROUP BY o.CustomerID
HAVING SUM(od.Quantity) > 30;

-- 18. Retrieve suppliers having average UnitPrice of products > 20
SELECT
    SupplierID,
    AVG(UnitPrice) AS Avg_UnitPrice
FROM products
GROUP BY SupplierID
HAVING AVG(UnitPrice) > 20;

-- 19. Find products grouped by SupplierID having sum(UnitsOnOrder) > 50
SELECT
    SupplierID,
    SUM(UnitsOnOrder) AS Total_UnitsOnOrder
FROM products
GROUP BY SupplierID
HAVING SUM(UnitsOnOrder) > 50;

-- 20. Show categories having more than 2 discontinued products
SELECT
    CategoryID,
    COUNT(ProductID) AS Discontinued_Products
FROM products
WHERE Discontinued = 1
GROUP BY CategoryID
HAVING COUNT(ProductID) > 2;

-- 21. Find orders grouped by CustomerID having maximum Quantity in order_details > 20
SELECT
    o.CustomerID,
    MAX(od.Quantity) AS Max_Quantity
FROM orders o
JOIN order_details od
ON o.OrderID = od.OrderID
GROUP BY o.CustomerID
HAVING MAX(od.Quantity) > 20;

-- 22. Retrieve employees having total orders Quantity > 25
SELECT
    o.EmployeeID,
    SUM(od.Quantity) AS Total_Quantity
FROM orders o
JOIN order_details od
ON o.OrderID = od.OrderID
GROUP BY o.EmployeeID
HAVING SUM(od.Quantity) > 25;

-- 23. Find products grouped by CategoryID having total UnitsInStock between 50 and 150
SELECT
    CategoryID,
    SUM(UnitsInStock) AS Total_UnitsInStock
FROM products
GROUP BY CategoryID
HAVING SUM(UnitsInStock) BETWEEN 50 AND 150;

-- 24. Show suppliers having minimum UnitPrice of products < 10
SELECT
    SupplierID,
    MIN(UnitPrice) AS Min_UnitPrice
FROM products
GROUP BY SupplierID
HAVING MIN(UnitPrice) < 10;

-- 25. Find customers having orders count > 10 in July 1996 (grouped by CustomerID)
SELECT
    CustomerID,
    COUNT(OrderID) AS Total_Orders
FROM orders
WHERE YEAR(OrderDate) = 1996 AND MONTH(OrderDate) = 7
GROUP BY CustomerID
HAVING COUNT(OrderID) > 10;

-- 26. Retrieve products grouped by CategoryID having average UnitsInStock > 20
SELECT
    CategoryID,
    AVG(UnitsInStock) AS Avg_UnitsInStock
FROM products
GROUP BY CategoryID
HAVING AVG(UnitsInStock) > 20;

-- 27. Find orders grouped by ShipperID having total orders > 15 in July 1996
SELECT
    ShipperID,
    COUNT(OrderID) AS Total_Orders
FROM orders
WHERE YEAR(OrderDate) = 1996 AND MONTH(OrderDate) = 7
GROUP BY ShipperID
HAVING COUNT(OrderID) > 15;

-- 28. Show employees having count of distinct orders > 5
SELECT
    EmployeeID,
    COUNT(DISTINCT OrderID) AS Distinct_Orders
FROM orders
GROUP BY EmployeeID
HAVING COUNT(DISTINCT OrderID) > 5;

-- 29. Find products grouped by SupplierID having sum(UnitPrice × UnitsInStock) > 500
SELECT
    SupplierID,
    SUM(UnitPrice * UnitsInStock) AS Stock_Value
FROM products
GROUP BY SupplierID
HAVING SUM(UnitPrice * UnitsInStock) > 500;

-- 30. Retrieve categories having average UnitPrice < 20
SELECT
    CategoryID,
    AVG(UnitPrice) AS Avg_UnitPrice
FROM products
GROUP BY CategoryID
HAVING AVG(UnitPrice) < 20;
