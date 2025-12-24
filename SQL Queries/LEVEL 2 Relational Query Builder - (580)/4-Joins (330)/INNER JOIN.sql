-- =============================================
-- SQL INNER JOIN Practice
-- Using: INNER JOIN to include only matching rows
-- =============================================

-- 1. List all orders along with customer names
SELECT
    o.OrderID,
    c.CustomerID,
    c.ContactName
FROM customers c
INNER JOIN orders o
    ON c.CustomerID = o.CustomerID;

-- 2. Retrieve order details with product names
SELECT
	od.*,
    p.ProductName
FROM order_details od
INNER JOIN products p
ON od.ProductID = p.ProductID;

-- 3. Show products with their supplier names
SELECT
	p.*,
    s.SupplierName
FROM products p
INNER JOIN suppliers s
ON p.SupplierID = s.SupplierID;

-- 4. List orders with employee names who placed them
SELECT
	O.*,
    CONCAT(E.LastName, " ", E.FirstName) AS EMP_Name
FROM orders O
INNER JOIN employees E
ON O.EmployeeID = E.EmployeeID;

-- 5. Find all orders with shipper names
SELECT
	O.*,
    S.ShipperName
FROM orders O
INNER JOIN shippers S
ON O.ShipperID = S.ShipperID;

-- 6. Display products along with category names
SELECT
	P.*,
    C.CategoryName
FROM products P
INNER JOIN categories C
ON P.CategoryID = C.CategoryID;

-- 7. Get order details with corresponding order dates
SELECT
	OD.*,
    O.OrderDate
FROM order_details OD
INNER JOIN orders O
ON OD.OrderID = O.OrderID;

-- 8. Find customers and the total orders they have placed
SELECT
	C.CustomerID, 
	C.CustomerName,
    COUNT(O.OrderID) AS Total_Orders
FROM customers C
INNER JOIN orders O
ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerID, C.CustomerName;

-- 9. Show employees along with their orders
SELECT
	E.EmployeeID,
    E.LastName,
    E.FirstName,
    O.OrderID
FROM employees E
INNER JOIN orders O
ON E.EmployeeID = O.EmployeeID;

-- 10. List products and order quantities from order_details
SELECT
	P.ProductName,
    OD.Quantity
FROM products P
INNER JOIN order_details OD
ON P.ProductID = OD.ProductID;

-- 11. Retrieve suppliers along with the products they supply
SELECT
    s.SupplierID,
    s.SupplierName,
    p.ProductName
FROM suppliers s
INNER JOIN products p
    ON s.SupplierID = p.SupplierID;

-- 12. Show orders with customer and shipper names
SELECT
    o.OrderID,
    c.ContactName,
    s.ShipperName
FROM orders o
INNER JOIN customers c ON o.CustomerID = c.CustomerID
INNER JOIN shippers s ON o.ShipperID = s.ShipperID;

-- 13. Find products supplied by suppliers in Japan
SELECT
    p.ProductName,
    s.SupplierName
FROM products p
INNER JOIN suppliers s
    ON p.SupplierID = s.SupplierID
WHERE s.Country = 'Japan';

-- 14. List order_details with order and product information for orders > 10 quantity
SELECT
    od.OrderID,
    p.ProductName,
    od.Quantity
FROM order_details od
INNER JOIN orders o ON od.OrderID = o.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID
WHERE od.Quantity > 10;

-- 15. Retrieve customers along with the products they ordered
SELECT DISTINCT
    c.ContactName,
    p.ProductName
FROM customers c
INNER JOIN orders o ON c.CustomerID = o.CustomerID
INNER JOIN order_details od ON o.OrderID = od.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID;

-- 16. Show orders along with customer and employee who handled them
SELECT
    o.OrderID,
    c.ContactName,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName
FROM orders o
INNER JOIN customers c ON o.CustomerID = c.CustomerID
INNER JOIN employees e ON o.EmployeeID = e.EmployeeID;

-- 17. Find categories with products currently in stock
SELECT DISTINCT
    c.CategoryName
FROM categories c
INNER JOIN products p
    ON c.CategoryID = p.CategoryID
WHERE p.UnitsInStock > 0;

-- 18. List products with supplier and category names
SELECT
    p.ProductName,
    s.SupplierName,
    c.CategoryName
FROM products p
INNER JOIN suppliers s ON p.SupplierID = s.SupplierID
INNER JOIN categories c ON p.CategoryID = c.CategoryID;

-- 19. Show orders along with order_details and product names
SELECT
    o.OrderID,
    p.ProductName,
    od.Quantity
FROM orders o
INNER JOIN order_details od ON o.OrderID = od.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID;

-- 20. Find employees and the total number of orders they handled
SELECT
    e.EmployeeID,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName,
    COUNT(o.OrderID) AS TotalOrders
FROM employees e
INNER JOIN orders o
    ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName;

-- 21. List customers and their orders placed in July 1996
SELECT
    c.ContactName,
    o.OrderID,
    o.OrderDate
FROM customers c
INNER JOIN orders o
    ON c.CustomerID = o.CustomerID
WHERE o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- 22. Show suppliers and products with UnitsInStock < 20
SELECT
    s.SupplierName,
    p.ProductName,
    p.UnitsInStock
FROM suppliers s
INNER JOIN products p
    ON s.SupplierID = p.SupplierID
WHERE p.UnitsInStock < 20;

-- 23. Retrieve orders with customer, employee, and shipper info
SELECT
    o.OrderID,
    c.ContactName,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName,
    s.ShipperName
FROM orders o
INNER JOIN customers c ON o.CustomerID = c.CustomerID
INNER JOIN employees e ON o.EmployeeID = e.EmployeeID
INNER JOIN shippers s ON o.ShipperID = s.ShipperID;

-- 24. List order_details with product names and category names
SELECT
    od.OrderID,
    p.ProductName,
    c.CategoryName,
    od.Quantity
FROM order_details od
INNER JOIN products p ON od.ProductID = p.ProductID
INNER JOIN categories c ON p.CategoryID = c.CategoryID;

-- 25. Find customers who ordered products from category “Beverages”
SELECT DISTINCT
    c.ContactName
FROM customers c
INNER JOIN orders o ON c.CustomerID = o.CustomerID
INNER JOIN order_details od ON o.OrderID = od.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID
INNER JOIN categories cat ON p.CategoryID = cat.CategoryID
WHERE cat.CategoryName = 'Beverages';

-- 26. Show all orders with order_details where quantity > 15
SELECT
    o.OrderID,
    od.Quantity
FROM orders o
INNER JOIN order_details od
    ON o.OrderID = od.OrderID
WHERE od.Quantity > 15;

-- 27. Retrieve products with suppliers and reorder levels
SELECT
    p.ProductName,
    s.SupplierName,
    p.ReorderLevel
FROM products p
INNER JOIN suppliers s
    ON p.SupplierID = s.SupplierID;

-- 28. List employees and orders for which they were responsible
SELECT
    e.EmployeeID,
    o.OrderID
FROM employees e
INNER JOIN orders o
    ON e.EmployeeID = o.EmployeeID;

-- 29. Show customers along with orders and total quantity ordered
SELECT
    c.ContactName,
    SUM(od.Quantity) AS TotalQuantity
FROM customers c
INNER JOIN orders o ON c.CustomerID = o.CustomerID
INNER JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY c.ContactName;

-- 30. Find suppliers who provide products with UnitPrice > 20
SELECT DISTINCT
    s.SupplierName
FROM suppliers s
INNER JOIN products p
    ON s.SupplierID = p.SupplierID
WHERE p.UnitPrice > 20;

-- 31. List order_details with orders placed by EmployeeID = 4
SELECT
    od.*
FROM orders o
INNER JOIN order_details od
    ON o.OrderID = od.OrderID
WHERE o.EmployeeID = 4;

-- 32. Retrieve products and suppliers where products are discontinued
SELECT
    p.ProductName,
    s.SupplierName
FROM products p
INNER JOIN suppliers s
    ON p.SupplierID = s.SupplierID
WHERE p.Discontinued = 1;

-- 33. Show orders and order_details with product info where quantity < 10
SELECT
    o.OrderID,
    p.ProductName,
    od.Quantity
FROM orders o
INNER JOIN order_details od ON o.OrderID = od.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID
WHERE od.Quantity < 10;

-- 34. Find customers and products they ordered in CategoryID = 2
SELECT DISTINCT
    c.ContactName,
    p.ProductName
FROM customers c
INNER JOIN orders o ON c.CustomerID = o.CustomerID
INNER JOIN order_details od ON o.OrderID = od.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID
WHERE p.CategoryID = 2;

-- 35. List orders and employee names who handled them and the shipper used
SELECT
    o.OrderID,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName,
    s.ShipperName
FROM orders o
INNER JOIN employees e ON o.EmployeeID = e.EmployeeID
INNER JOIN shippers s ON o.ShipperID = s.ShipperID;

-- 36. Retrieve products with category and supplier info for UnitsInStock > 30
SELECT
    p.ProductName,
    c.CategoryName,
    s.SupplierName
FROM products p
INNER JOIN categories c ON p.CategoryID = c.CategoryID
INNER JOIN suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitsInStock > 30;

-- 37. Show orders along with total quantity per order
SELECT
    o.OrderID,
    SUM(od.Quantity) AS TotalQuantity
FROM orders o
INNER JOIN order_details od
    ON o.OrderID = od.OrderID
GROUP BY o.OrderID;

-- 38. Find employees and the customers they served
SELECT DISTINCT
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName,
    c.ContactName
FROM employees e
INNER JOIN orders o ON e.EmployeeID = o.EmployeeID
INNER JOIN customers c ON o.CustomerID = c.CustomerID;

-- 39. List order_details and product names for orders shipped by ShipperID = 1
SELECT
    od.OrderID,
    p.ProductName,
    od.Quantity
FROM orders o
INNER JOIN order_details od ON o.OrderID = od.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID
WHERE o.ShipperID = 1;

-- 40. Retrieve categories and the products supplied under each category
SELECT
    c.CategoryName,
    p.ProductName
FROM categories c
INNER JOIN products p
    ON c.CategoryID = p.CategoryID;

-- 41. Show orders and corresponding order_details with product UnitPrice
SELECT
    o.OrderID,
    p.ProductName,
    p.UnitPrice,
    od.Quantity
FROM orders o
INNER JOIN order_details od ON o.OrderID = od.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID;

-- 42. Find suppliers and products where UnitsOnOrder > 0
SELECT
    s.SupplierName,
    p.ProductName,
    p.UnitsOnOrder
FROM suppliers s
INNER JOIN products p
    ON s.SupplierID = p.SupplierID
WHERE p.UnitsOnOrder > 0;

-- 43. List customers and total distinct products they ordered
SELECT
    c.ContactName,
    COUNT(DISTINCT od.ProductID) AS DistinctProducts
FROM customers c
INNER JOIN orders o ON c.CustomerID = o.CustomerID
INNER JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY c.ContactName;

-- 44. Retrieve employees and orders where the total quantity exceeds 20
SELECT
    e.EmployeeID,
    o.OrderID,
    SUM(od.Quantity) AS TotalQuantity
FROM employees e
INNER JOIN orders o ON e.EmployeeID = o.EmployeeID
INNER JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID, o.OrderID
HAVING SUM(od.Quantity) > 20;

-- 45. Show products, suppliers, and categories where UnitPrice > 15
SELECT
    p.ProductName,
    s.SupplierName,
    c.CategoryName,
    p.UnitPrice
FROM products p
INNER JOIN suppliers s ON p.SupplierID = s.SupplierID
INNER JOIN categories c ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice > 15;

-- 46. Find orders along with order_details for products supplied by SupplierID = 5
SELECT
    o.OrderID,
    p.ProductName,
    od.Quantity
FROM orders o
INNER JOIN order_details od ON o.OrderID = od.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID
WHERE p.SupplierID = 5;

-- 47. List customers and orders along with shipper names in July 1996
SELECT
    c.ContactName,
    o.OrderID,
    s.ShipperName,
    o.OrderDate
FROM customers c
INNER JOIN orders o ON c.CustomerID = o.CustomerID
INNER JOIN shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

-- 48. Retrieve products with category names and reorder levels less than 10
SELECT
    p.ProductName,
    c.CategoryName,
    p.ReorderLevel
FROM products p
INNER JOIN categories c ON p.CategoryID = c.CategoryID
WHERE p.ReorderLevel < 10;

-- 49. Show orders with employee names and products ordered with quantity > 5
SELECT
    o.OrderID,
    CONCAT(e.FirstName, ' ', e.LastName) AS EmployeeName,
    p.ProductName,
    od.Quantity
FROM orders o
INNER JOIN employees e ON o.EmployeeID = e.EmployeeID
INNER JOIN order_details od ON o.OrderID = od.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID
WHERE od.Quantity > 5;

-- 50. Find suppliers and the total number of products supplied in each category
SELECT
    s.SupplierName,
    c.CategoryName,
    COUNT(p.ProductID) AS TotalProducts
FROM suppliers s
INNER JOIN products p ON s.SupplierID = p.SupplierID
INNER JOIN categories c ON p.CategoryID = c.CategoryID
GROUP BY
    s.SupplierName,
    c.CategoryName;
