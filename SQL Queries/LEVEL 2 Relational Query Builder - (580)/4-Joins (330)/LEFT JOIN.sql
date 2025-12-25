-- =============================================
-- SQL LEFT JOIN Practice
-- Using: LEFT JOIN to include all rows from the left table
-- =============================================

-- 1. List all customers and their orders (include customers with no orders)
SELECT c.CustomerID, c.ContactName, o.OrderID
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID;

-- 2. Show all employees and the orders they handled (include employees with no orders)
SELECT e.EmployeeID, CONCAT(e.FirstName,' ',e.LastName) AS EmployeeName, o.OrderID
FROM employees e
LEFT JOIN orders o ON e.EmployeeID = o.EmployeeID;

-- 3. Display all products and their order_details (include products never ordered)
SELECT p.ProductID, p.ProductName, od.OrderID, od.Quantity
FROM products p
LEFT JOIN order_details od ON p.ProductID = od.ProductID;

-- 4. List all categories and products (include categories with no products)
SELECT c.CategoryName, p.ProductName
FROM categories c
LEFT JOIN products p ON c.CategoryID = p.CategoryID;

-- 5. Show all shippers and orders shipped (include shippers with no orders)
SELECT s.ShipperName, o.OrderID
FROM shippers s
LEFT JOIN orders o ON s.ShipperID = o.ShipperID;

-- 6. Retrieve all suppliers and products supplied (include suppliers with no products)
SELECT s.SupplierName, p.ProductName
FROM suppliers s
LEFT JOIN products p ON s.SupplierID = p.SupplierID;

-- 7. Find all customers and orders placed in July 1996 (include customers with no orders)
SELECT c.ContactName, o.OrderID, o.OrderDate
FROM customers c
LEFT JOIN orders o
ON c.CustomerID = o.CustomerID
AND o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- 8. Show all products and category names (include products with no category, if possible)
SELECT p.ProductName, c.CategoryName
FROM products p
LEFT JOIN categories c ON p.CategoryID = c.CategoryID;

-- 9. List all employees and total orders they handled (include employees with zero orders)
SELECT e.EmployeeID,
       CONCAT(e.FirstName,' ',e.LastName) AS EmployeeName,
       COUNT(o.OrderID) AS TotalOrders
FROM employees e
LEFT JOIN orders o ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName;

-- 10. Display all orders and order_details (include orders with no details)
SELECT o.OrderID, od.ProductID, od.Quantity
FROM orders o
LEFT JOIN order_details od ON o.OrderID = od.OrderID;

-- 11. Find all categories and products in stock (include categories with no products)
SELECT c.CategoryName, p.ProductName, p.UnitsInStock
FROM categories c
LEFT JOIN products p
ON c.CategoryID = p.CategoryID AND p.UnitsInStock > 0;

-- 12. Show all suppliers and products with UnitsInStock > 0 (include suppliers with no products)
SELECT s.SupplierName, p.ProductName, p.UnitsInStock
FROM suppliers s
LEFT JOIN products p
ON s.SupplierID = p.SupplierID AND p.UnitsInStock > 0;

-- 13. List all customers and their shipped orders (include customers with no shipped orders)
SELECT c.ContactName, o.OrderID, o.ShippedDate
FROM customers c
LEFT JOIN orders o
ON c.CustomerID = o.CustomerID
AND o.ShippedDate IS NOT NULL;

-- 14. Display all employees and orders with quantity > 10 (include employees with no such orders)
SELECT e.EmployeeID, o.OrderID, od.Quantity
FROM employees e
LEFT JOIN orders o ON e.EmployeeID = o.EmployeeID
LEFT JOIN order_details od
ON o.OrderID = od.OrderID AND od.Quantity > 10;

-- 15. Find all products and suppliers (include products with no suppliers, if possible)
SELECT p.ProductName, s.SupplierName
FROM products p
LEFT JOIN suppliers s ON p.SupplierID = s.SupplierID;

-- 16. Show all orders and products in order_details (include orders with no products)
SELECT o.OrderID, p.ProductName
FROM orders o
LEFT JOIN order_details od ON o.OrderID = od.OrderID
LEFT JOIN products p ON od.ProductID = p.ProductID;

-- 17. List all customers and products they ordered from CategoryID = 1
SELECT c.ContactName, p.ProductName
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
LEFT JOIN products p
ON od.ProductID = p.ProductID AND p.CategoryID = 1;

-- 18. Display all shippers and total orders shipped (include shippers with no orders)
SELECT s.ShipperName, COUNT(o.OrderID) AS TotalOrders
FROM shippers s
LEFT JOIN orders o ON s.ShipperID = o.ShipperID
GROUP BY s.ShipperName;

-- 19. Find all suppliers and total units in stock of their products
SELECT s.SupplierName, COALESCE(SUM(p.UnitsInStock),0) AS TotalStock
FROM suppliers s
LEFT JOIN products p ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierName;

-- 20. Show all categories and average UnitPrice of products
SELECT c.CategoryName, AVG(p.UnitPrice) AS AvgUnitPrice
FROM categories c
LEFT JOIN products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

-- 21. List all employees and orders placed in July 1996
SELECT CONCAT(e.FirstName,' ',e.LastName) AS EmployeeName, o.OrderID
FROM employees e
LEFT JOIN orders o
ON e.EmployeeID = o.EmployeeID
AND o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- 22. Display all customers and total quantity ordered
SELECT c.ContactName, COALESCE(SUM(od.Quantity),0) AS TotalQuantity
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY c.ContactName;

-- 23. Find all products and their order_details for quantity > 20
SELECT p.ProductName, od.Quantity
FROM products p
LEFT JOIN order_details od
ON p.ProductID = od.ProductID AND od.Quantity > 20;

-- 24. Show all suppliers and products with ReorderLevel <= 10
SELECT s.SupplierName, p.ProductName, p.ReorderLevel
FROM suppliers s
LEFT JOIN products p
ON s.SupplierID = p.SupplierID AND p.ReorderLevel <= 10;

-- 25. List all orders and corresponding customer names
SELECT o.OrderID, c.ContactName
FROM orders o
LEFT JOIN customers c ON o.CustomerID = c.CustomerID;

-- 26. Display all products and suppliers where Discontinued = 0
SELECT p.ProductName, s.SupplierName, p.Discontinued
FROM products p
LEFT JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.Discontinued = 0;

-- 27. Find all customers and orders where ShipperID = 1
SELECT c.ContactName, o.OrderID
FROM customers c
LEFT JOIN orders o
ON c.CustomerID = o.CustomerID AND o.ShipperID = 1;

-- 28. Show all employees and total quantity handled
SELECT e.EmployeeID,
       CONCAT(e.FirstName,' ',e.LastName) AS EmployeeName,
       COALESCE(SUM(od.Quantity),0) AS TotalQuantity
FROM employees e
LEFT JOIN orders o ON e.EmployeeID = o.EmployeeID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID, e.FirstName, e.LastName;

-- 29. List all categories and number of products in stock
SELECT c.CategoryName,
       COUNT(p.ProductID) AS ProductsInStock
FROM categories c
LEFT JOIN products p
ON c.CategoryID = p.CategoryID AND p.UnitsInStock > 0
GROUP BY c.CategoryName;

-- 30. Display all shippers and orders placed in July 1996
SELECT s.ShipperName, o.OrderID, o.OrderDate
FROM shippers s
LEFT JOIN orders o
ON s.ShipperID = o.ShipperID
AND o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- 31. Find all products and total quantity ordered
SELECT p.ProductName,
       COALESCE(SUM(od.Quantity),0) AS TotalQuantity
FROM products p
LEFT JOIN order_details od ON p.ProductID = od.ProductID
GROUP BY p.ProductName;

-- 32. Show all suppliers and maximum UnitPrice of their products
SELECT s.SupplierName,
       MAX(p.UnitPrice) AS MaxUnitPrice
FROM suppliers s
LEFT JOIN products p ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierName;

-- 33. List all customers and orders with total quantity > 15
SELECT c.ContactName, o.OrderID, SUM(od.Quantity) AS TotalQty
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY c.ContactName, o.OrderID
HAVING TotalQty > 15 OR o.OrderID IS NULL;

-- 34. Display all products and categories
SELECT p.ProductName, c.CategoryName
FROM products p
LEFT JOIN categories c ON p.CategoryID = c.CategoryID;

-- 35. Find all employees and number of orders placed by them
SELECT e.EmployeeID,
       CONCAT(e.FirstName,' ',e.LastName) AS EmployeeName,
       COUNT(o.OrderID) AS TotalOrders
FROM employees e
LEFT JOIN orders o ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName;

-- 36. Show all orders and order_details where Quantity >= 10
SELECT o.OrderID, od.ProductID, od.Quantity
FROM orders o
LEFT JOIN order_details od
ON o.OrderID = od.OrderID AND od.Quantity >= 10;

-- 37. List all categories and total UnitsInStock of products
SELECT c.CategoryName,
       COALESCE(SUM(p.UnitsInStock),0) AS TotalStock
FROM categories c
LEFT JOIN products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

-- 38. Display all suppliers and products in CategoryID = 2
SELECT s.SupplierName, p.ProductName
FROM suppliers s
LEFT JOIN products p
ON s.SupplierID = p.SupplierID AND p.CategoryID = 2;

-- 39. Find all customers and orders shipped by ShipperID = 3
SELECT c.ContactName, o.OrderID
FROM customers c
LEFT JOIN orders o
ON c.CustomerID = o.CustomerID AND o.ShipperID = 3;

-- 40. Show all products and suppliers with UnitsOnOrder > 0
SELECT p.ProductName, s.SupplierName, p.UnitsOnOrder
FROM products p
LEFT JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitsOnOrder > 0;

-- 41. List all employees and orders where UnitPrice > 20
SELECT e.EmployeeID, o.OrderID, od.UnitPrice
FROM employees e
LEFT JOIN orders o ON e.EmployeeID = o.EmployeeID
LEFT JOIN order_details od
ON o.OrderID = od.OrderID AND od.UnitPrice > 20;

-- 42. Display all orders and total quantity per order
SELECT o.OrderID,
       COALESCE(SUM(od.Quantity),0) AS TotalQuantity
FROM orders o
LEFT JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY o.OrderID;

-- 43. Find all categories and average UnitsInStock
SELECT c.CategoryName,
       AVG(p.UnitsInStock) AS AvgStock
FROM categories c
LEFT JOIN products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

-- 44. Show all shippers and total orders per shipper
SELECT s.ShipperName,
       COUNT(o.OrderID) AS TotalOrders
FROM shippers s
LEFT JOIN orders o ON s.ShipperID = o.ShipperID
GROUP BY s.ShipperName;

-- 45. List all suppliers and total UnitsOnOrder
SELECT s.SupplierName,
       COALESCE(SUM(p.UnitsOnOrder),0) AS TotalUnitsOnOrder
FROM suppliers s
LEFT JOIN products p ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierName;

-- 46. Display all customers and products ordered from SupplierID = 5
SELECT c.ContactName, p.ProductName
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
LEFT JOIN products p
ON od.ProductID = p.ProductID AND p.SupplierID = 5;

-- 47. Find all employees and average Quantity per order
SELECT e.EmployeeID,
       AVG(od.Quantity) AS AvgQuantity
FROM employees e
LEFT JOIN orders o ON e.EmployeeID = o.EmployeeID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID;

-- 48. Show all products and categories with UnitPrice > 15
SELECT p.ProductName, c.CategoryName, p.UnitPrice
FROM products p
LEFT JOIN categories c ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice > 15;

-- 49. List all orders and product names for ProductID IN (1,5,10)
SELECT o.OrderID, p.ProductName
FROM orders o
LEFT JOIN order_details od
ON o.OrderID = od.OrderID AND od.ProductID IN (1,5,10)
LEFT JOIN products p ON od.ProductID = p.ProductID;

-- 50. Display all customers and total orders where Quantity >= 20
SELECT c.ContactName,
       COUNT(DISTINCT o.OrderID) AS TotalOrders
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID
LEFT JOIN order_details od
ON o.OrderID = od.OrderID AND od.Quantity >= 20
GROUP BY c.ContactName;