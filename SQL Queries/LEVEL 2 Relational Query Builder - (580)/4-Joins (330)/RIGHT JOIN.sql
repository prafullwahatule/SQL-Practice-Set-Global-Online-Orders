-- =============================================
-- SQL RIGHT JOIN Practice
-- Using: RIGHT JOIN to include all rows from the right table
-- =============================================

-- 1. List all orders and customers, including customers with no orders
SELECT o.OrderID, c.ContactName
FROM orders o
RIGHT JOIN customers c ON o.CustomerID = c.CustomerID;

-- 2. Show all order_details and products, including products never ordered
SELECT od.OrderID, od.Quantity, p.ProductName
FROM order_details od
RIGHT JOIN products p ON od.ProductID = p.ProductID;

-- 3. Display all products and suppliers, including suppliers with no products
SELECT p.ProductName, s.SupplierName
FROM products p
RIGHT JOIN suppliers s ON p.SupplierID = s.SupplierID;

-- 4. List all categories and products, including products without a category
SELECT p.ProductName, c.CategoryName
FROM categories c
RIGHT JOIN products p ON c.CategoryID = p.CategoryID;

-- 5. Show all orders and employees, including employees with no orders
SELECT o.OrderID, e.FirstName, e.LastName
FROM orders o
RIGHT JOIN employees e ON o.EmployeeID = e.EmployeeID;

-- 6. Retrieve all shippers and orders, including shippers with no orders
SELECT o.OrderID, s.ShipperName
FROM orders o
RIGHT JOIN shippers s ON o.ShipperID = s.ShipperID;

-- 7. Find all products and categories, including categories with no products
SELECT p.ProductName, c.CategoryName
FROM products p
RIGHT JOIN categories c ON p.CategoryID = c.CategoryID;

-- 8. Show all order_details and orders, including orders with no order_details
SELECT od.ProductID, od.Quantity, o.OrderID
FROM order_details od
RIGHT JOIN orders o ON od.OrderID = o.OrderID;

-- 9. List all customers and orders shipped by ShipperID = 1
SELECT o.OrderID, c.ContactName
FROM orders o
RIGHT JOIN customers c
ON o.CustomerID = c.CustomerID AND o.ShipperID = 1;

-- 10. Display all employees and orders in July 1996
SELECT o.OrderID, e.FirstName, e.LastName
FROM orders o
RIGHT JOIN employees e
ON o.EmployeeID = e.EmployeeID
AND o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- 11. Find all products and order_details where Quantity > 10
SELECT od.Quantity, p.ProductName
FROM order_details od
RIGHT JOIN products p
ON od.ProductID = p.ProductID AND od.Quantity > 10;

-- 12. Show all suppliers and products with UnitsInStock > 0
SELECT p.ProductName, s.SupplierName, p.UnitsInStock
FROM products p
RIGHT JOIN suppliers s
ON p.SupplierID = s.SupplierID AND p.UnitsInStock > 0;

-- 13. List all customers and products they ordered from CategoryID = 2
SELECT c.ContactName, p.ProductName
FROM orders o
RIGHT JOIN customers c ON o.CustomerID = c.CustomerID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
LEFT JOIN products p
ON od.ProductID = p.ProductID AND p.CategoryID = 2;

-- 14. Display all categories and total products
SELECT c.CategoryName, COUNT(p.ProductID) AS TotalProducts
FROM products p
RIGHT JOIN categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

-- 15. Find all employees and total quantity handled
SELECT e.EmployeeID,
       COALESCE(SUM(od.Quantity),0) AS TotalQuantity
FROM orders o
RIGHT JOIN employees e ON o.EmployeeID = e.EmployeeID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID;

-- 16. Show all orders and products in order_details
SELECT p.ProductName, o.OrderID
FROM order_details od
RIGHT JOIN orders o ON od.OrderID = o.OrderID
LEFT JOIN products p ON od.ProductID = p.ProductID;

-- 17. List all suppliers and average UnitPrice of products
SELECT s.SupplierName, AVG(p.UnitPrice) AS AvgPrice
FROM products p
RIGHT JOIN suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierName;

-- 18. Display all customers and total quantity ordered
SELECT c.ContactName, COALESCE(SUM(od.Quantity),0) AS TotalQty
FROM orders o
RIGHT JOIN customers c ON o.CustomerID = c.CustomerID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY c.ContactName;

-- 19. Find all products and suppliers where Discontinued = 0
SELECT p.ProductName, s.SupplierName
FROM products p
RIGHT JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.Discontinued = 0 OR p.ProductID IS NULL;

-- 20. Show all categories and total UnitsInStock
SELECT c.CategoryName, COALESCE(SUM(p.UnitsInStock),0) AS TotalStock
FROM products p
RIGHT JOIN categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

-- 21. List all orders and shippers
SELECT o.OrderID, s.ShipperName
FROM orders o
RIGHT JOIN shippers s ON o.ShipperID = s.ShipperID;

-- 22. Display all employees and order_details where Quantity >= 20
SELECT e.EmployeeID, od.Quantity
FROM orders o
RIGHT JOIN employees e ON o.EmployeeID = e.EmployeeID
LEFT JOIN order_details od
ON o.OrderID = od.OrderID AND od.Quantity >= 20;

-- 23. Find all products and categories where UnitPrice > 20
SELECT p.ProductName, c.CategoryName
FROM products p
RIGHT JOIN categories c
ON p.CategoryID = c.CategoryID AND p.UnitPrice > 20;

-- 24. Show all suppliers and products in CategoryID = 1
SELECT s.SupplierName, p.ProductName
FROM products p
RIGHT JOIN suppliers s
ON p.SupplierID = s.SupplierID AND p.CategoryID = 1;

-- 25. List all customers and orders where UnitPrice > 15
SELECT c.ContactName, o.OrderID
FROM orders o
RIGHT JOIN customers c ON o.CustomerID = c.CustomerID
LEFT JOIN order_details od
ON o.OrderID = od.OrderID AND od.UnitPrice > 15;

-- 26. Display all order_details and orders where OrderID IN (10248,10250)
SELECT od.ProductID, o.OrderID
FROM order_details od
RIGHT JOIN orders o
ON od.OrderID = o.OrderID
AND o.OrderID IN (10248,10250);

-- 27. Find all employees and orders handled
SELECT o.OrderID, e.EmployeeID
FROM orders o
RIGHT JOIN employees e ON o.EmployeeID = e.EmployeeID;

-- 28. Show all products and total UnitsOnOrder
SELECT p.ProductName, COALESCE(SUM(p.UnitsOnOrder),0) AS UnitsOnOrder
FROM products p
RIGHT JOIN products pr ON p.ProductID = pr.ProductID
GROUP BY p.ProductName;

-- 29. List all categories and average UnitPrice of products
SELECT c.CategoryName, AVG(p.UnitPrice) AS AvgPrice
FROM products p
RIGHT JOIN categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

-- 30. Display all customers and products ordered from SupplierID = 5
SELECT c.ContactName, p.ProductName
FROM orders o
RIGHT JOIN customers c ON o.CustomerID = c.CustomerID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
LEFT JOIN products p
ON od.ProductID = p.ProductID AND p.SupplierID = 5;

-- 31. Find all orders and products where Quantity >= 5
SELECT o.OrderID, p.ProductName
FROM order_details od
RIGHT JOIN orders o
ON od.OrderID = o.OrderID AND od.Quantity >= 5
LEFT JOIN products p ON od.ProductID = p.ProductID;

-- 32. Show all suppliers and maximum UnitPrice
SELECT s.SupplierName, MAX(p.UnitPrice) AS MaxPrice
FROM products p
RIGHT JOIN suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierName;

-- 33. List all employees and number of orders placed
SELECT e.EmployeeID, COUNT(o.OrderID) AS TotalOrders
FROM orders o
RIGHT JOIN employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID;

-- 34. Display all orders and customer names
SELECT o.OrderID, c.ContactName
FROM orders o
LEFT JOIN customers c ON o.CustomerID = c.CustomerID;

-- 35. Find all products and categories where UnitsInStock > 0
SELECT p.ProductName, c.CategoryName
FROM products p
RIGHT JOIN categories c
ON p.CategoryID = c.CategoryID AND p.UnitsInStock > 0;

-- 36. Show all customers and total orders placed in July 1996
SELECT c.ContactName, COUNT(o.OrderID) AS TotalOrders
FROM orders o
RIGHT JOIN customers c
ON o.CustomerID = c.CustomerID
AND o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
GROUP BY c.ContactName;

-- 37. List all shippers and total orders shipped
SELECT s.ShipperName, COUNT(o.OrderID) AS TotalOrders
FROM orders o
RIGHT JOIN shippers s ON o.ShipperID = s.ShipperID
GROUP BY s.ShipperName;

-- 38. Display all products and suppliers where ReorderLevel <= 10
SELECT p.ProductName, s.SupplierName
FROM products p
RIGHT JOIN suppliers s
ON p.SupplierID = s.SupplierID AND p.ReorderLevel <= 10;

-- 39. Find all employees and average Quantity per order
SELECT e.EmployeeID, AVG(od.Quantity) AS AvgQty
FROM orders o
RIGHT JOIN employees e ON o.EmployeeID = e.EmployeeID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID;

-- 40. Show all categories and number of discontinued products
SELECT c.CategoryName,
       COUNT(p.ProductID) AS DiscontinuedProducts
FROM products p
RIGHT JOIN categories c
ON p.CategoryID = c.CategoryID AND p.Discontinued = 1
GROUP BY c.CategoryName;

-- 41. List all order_details and products for ProductID IN (1,5,10)
SELECT od.OrderID, p.ProductName
FROM order_details od
RIGHT JOIN products p
ON od.ProductID = p.ProductID
AND p.ProductID IN (1,5,10);

-- 42. Display all suppliers and total UnitsInStock
SELECT s.SupplierName, COALESCE(SUM(p.UnitsInStock),0) AS TotalStock
FROM products p
RIGHT JOIN suppliers s ON p.SupplierID = s.SupplierID
GROUP BY s.SupplierName;

-- 43. Find all customers and total Quantity where Quantity > 10
SELECT c.ContactName, COALESCE(SUM(od.Quantity),0) AS TotalQty
FROM orders o
RIGHT JOIN customers c ON o.CustomerID = c.CustomerID
LEFT JOIN order_details od
ON o.OrderID = od.OrderID AND od.Quantity > 10
GROUP BY c.ContactName;

-- 44. Show all products and total UnitsInStock per category
SELECT c.CategoryName, COALESCE(SUM(p.UnitsInStock),0) AS TotalStock
FROM products p
RIGHT JOIN categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

-- 45. List all orders and total Quantity per order
SELECT o.OrderID, COALESCE(SUM(od.Quantity),0) AS TotalQty
FROM order_details od
RIGHT JOIN orders o ON od.OrderID = o.OrderID
GROUP BY o.OrderID;

-- 46. Display all employees and orders with Quantity > 15
SELECT e.EmployeeID, o.OrderID
FROM orders o
RIGHT JOIN employees e ON o.EmployeeID = e.EmployeeID
LEFT JOIN order_details od
ON o.OrderID = od.OrderID AND od.Quantity > 15;

-- 47. Find all categories and total UnitsOnOrder
SELECT c.CategoryName, COALESCE(SUM(p.UnitsOnOrder),0) AS UnitsOnOrder
FROM products p
RIGHT JOIN categories c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName;

-- 48. Show all suppliers and products in CategoryID = 2
SELECT s.SupplierName, p.ProductName
FROM products p
RIGHT JOIN suppliers s
ON p.SupplierID = s.SupplierID AND p.CategoryID = 2;

-- 49. List all customers and orders with ShipperID = 3
SELECT c.ContactName, o.OrderID
FROM orders o
RIGHT JOIN customers c
ON o.CustomerID = c.CustomerID AND o.ShipperID = 3;

-- 50. Display all products and suppliers with UnitPrice > 15
SELECT p.ProductName, s.SupplierName
FROM products p
RIGHT JOIN suppliers s
ON p.SupplierID = s.SupplierID AND p.UnitPrice > 15;
