-- =============================================
-- SQL COUNT() Function Practice
-- Using: COUNT() aggregate function
-- =============================================

-- 1. Count the total number of products in the database
SELECT
	COUNT(ProductID) AS Total_Products
FROM products;

-- 2. Count how many customers are from Germany
SELECT
	COUNT(CustomerID) AS Total_cust_Germany
FROM customers
WHERE Country = "Germany";

-- 3. Count the total number of orders placed
SELECT 
	COUNT(OrderID) AS Total_Orders
FROM orders;

-- 4. Count the number of employees born before 1960
SELECT
    COUNT(EmployeeID) AS Total_Employees
FROM employees
WHERE BirthDate < '1960-01-01';

-- 5. Count how many products have UnitsInStock = 0
SELECT
    COUNT(ProductID) AS Out_of_Stock_Products
FROM products
WHERE UnitsInStock = 0;

-- 6. Count the total number of suppliers
SELECT
    COUNT(SupplierID) AS Total_Suppliers
FROM suppliers;

-- 7. Count the number of products in CategoryID = 2 (Condiments)
SELECT
    COUNT(ProductID) AS Total_Products_Category_2
FROM products
WHERE CategoryID = 2;

-- 8. Count the total number of orders shipped by ShipperID = 1
SELECT
    COUNT(OrderID) AS Total_Orders_Shipper_1
FROM orders
WHERE ShipperID = 1;

-- 9. Count how many customers live in Mexico
SELECT
    COUNT(CustomerID) AS Total_Customers_Mexico
FROM customers
WHERE Country = 'Mexico';

-- 10. Count the number of order_details where Quantity >= 20
SELECT
    COUNT(*) AS Total_OrderDetails
FROM order_details
WHERE Quantity >= 20;

-- 11. Count the total number of discontinued products
SELECT
    COUNT(ProductID) AS Discontinued_Products
FROM products
WHERE Discontinued = 1;

-- 12. Count how many products have ReorderLevel <= 10
SELECT
    COUNT(ProductID) AS Low_Reorder_Products
FROM products
WHERE ReorderLevel <= 10;

-- 13. Count the number of employees whose LastName starts with 'D'
SELECT
    COUNT(EmployeeID) AS Employees_LastName_D
FROM employees
WHERE LastName LIKE 'D%';

-- 14. Count how many orders were placed by EmployeeID = 4
SELECT
    COUNT(OrderID) AS Orders_By_Employee_4
FROM orders
WHERE EmployeeID = 4;

-- 15. Count the number of products supplied by SupplierID = 5
SELECT
    COUNT(ProductID) AS Products_By_Supplier_5
FROM products
WHERE SupplierID = 5;