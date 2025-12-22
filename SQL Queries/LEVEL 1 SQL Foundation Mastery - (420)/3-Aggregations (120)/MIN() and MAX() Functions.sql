-- =============================================
-- SQL MIN() and MAX() Functions Practice
-- Using: MIN() and MAX() aggregate functions
-- =============================================

-- 1. Find the minimum UnitPrice among all products
SELECT 
	MIN(UnitPrice) AS Min_UnitPrice
FROM products;

-- 2. Find the maximum UnitPrice among all products
SELECT
    MAX(UnitPrice) AS Max_UnitPrice
FROM products;

-- 3. Find the minimum UnitsInStock of all products
SELECT
    MIN(UnitsInStock) AS Min_UnitsInStock
FROM products;

-- 4. Find the maximum UnitsInStock of all products
SELECT
    MAX(UnitsInStock) AS Max_UnitsInStock
FROM products;

-- 5. Find the minimum Quantity in order_details
SELECT
    MIN(Quantity) AS Min_Quantity
FROM order_details;

-- 6. Find the maximum Quantity in order_details
SELECT
    MAX(Quantity) AS Max_Quantity
FROM order_details;

-- 7. Find the minimum UnitPrice of products in CategoryID = 1 (Beverages)
SELECT
    MIN(UnitPrice) AS Min_UnitPrice
FROM products
WHERE CategoryID = 1;

-- 8. Find the maximum UnitPrice of products supplied by SupplierID = 3
SELECT
    MAX(UnitPrice) AS Max_UnitPrice
FROM products
WHERE SupplierID = 3;

-- 9. Find the minimum UnitsOnOrder among all products
SELECT
    MIN(UnitsOnOrder) AS Min_UnitsOnOrder
FROM products;

-- 10. Find the maximum UnitsOnOrder among discontinued products
SELECT
    MAX(UnitsOnOrder) AS Max_UnitsOnOrder
FROM products
WHERE Discontinued = 1;

-- 11. Find the minimum ReorderLevel of all products
SELECT
    MIN(ReorderLevel) AS Min_ReorderLevel
FROM products;

-- 12. Find the maximum Quantity in order_details for orders placed by EmployeeID = 4
SELECT
	MAX(od.Quantity) AS Max_Quantity
FROM order_details od
JOIN orders o
ON o.OrderID = od.OrderID
WHERE o.EmployeeID = 4;

-- 13. Find the minimum UnitPrice among products where UnitsInStock > 0
SELECT
    MIN(UnitPrice) AS Min_UnitPrice
FROM products
WHERE UnitsInStock > 0;

-- 14. Find the maximum UnitPrice of products in CategoryID = 2 (Condiments)
SELECT
    MAX(UnitPrice) AS Max_UnitPrice
FROM products
WHERE CategoryID = 2;

-- 15. Find the minimum BirthDate among all employees (oldest employee)
SELECT
    MIN(BirthDate) AS Oldest_Employee_BirthDate
FROM employees;