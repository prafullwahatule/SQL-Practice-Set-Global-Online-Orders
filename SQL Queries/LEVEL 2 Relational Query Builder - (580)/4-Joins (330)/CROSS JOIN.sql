-- =============================================
-- SQL CROSS JOIN Practice
-- Using: CROSS JOIN to get all combinations of two tables
-- =============================================

-- 1. List all combinations of customers and products
SELECT
    c.CustomerID,
    p.ProductID
FROM customers c
CROSS JOIN products p;

-- 2. Show all combinations of employees and products
SELECT
    e.EmployeeID,
    p.ProductID
FROM employees e
CROSS JOIN products p;

-- 3. List all combinations of orders and products
SELECT
    o.OrderID,
    p.ProductID
FROM orders o
CROSS JOIN products p;

-- 4. Show all combinations of categories and suppliers
SELECT
    c.CategoryID,
    s.SupplierID
FROM categories c
CROSS JOIN suppliers s;
    
-- 5. List all combinations of products and suppliers
SELECT
    p.ProductID,
    s.SupplierID
FROM products p
CROSS JOIN suppliers s;

-- 6. Show all combinations of customers and shippers
SELECT
    c.CustomerID,
    s.ShipperID
FROM customers c
CROSS JOIN shippers s;

-- 7. List all combinations of orders and shippers
SELECT
    o.OrderID,
    s.ShipperID
FROM orders o
CROSS JOIN shippers s;

-- 8. Show all combinations of employees and customers
SELECT
    e.EmployeeID,
    c.CustomerID
FROM employees e
CROSS JOIN customers c;

-- 9. List all combinations of categories and products
SELECT
    c.CategoryID,
    p.ProductID
FROM categories c
CROSS JOIN products p;

-- 10. Show all combinations of products and orders
SELECT
    p.ProductID,
    o.OrderID
FROM products p
CROSS JOIN orders o;

-- 11. List all combinations of customers and order_details
SELECT
    c.CustomerID,
    od.OrderID,
    od.ProductID
FROM customers c
CROSS JOIN order_details od;

-- 12. Show all combinations of employees and shippers
SELECT
    e.EmployeeID,
    s.ShipperID
FROM employees e
CROSS JOIN shippers s;

-- 13. List all combinations of suppliers and orders
SELECT
    s.SupplierID,
    o.OrderID
FROM suppliers s
CROSS JOIN orders o;

-- 14. Show all combinations of products and order_details
SELECT
    p.ProductID,
    od.OrderID,
    od.Quantity
FROM products p
CROSS JOIN order_details od;

-- 15. List all combinations of categories and shippers
SELECT
    c.CategoryID,
    s.ShipperID
FROM categories c
CROSS JOIN shippers s;

-- 16. Show all combinations of employees and categories
SELECT
	employees.EmployeeID,
    categories.CategoryID
FROM employees
CROSS JOIN categories;

-- 17. List all combinations of customers and suppliers
SELECT
	customers.CustomerID,
    suppliers.SupplierID
FROM customers
CROSS JOIN suppliers;

-- 18. Show all combinations of orders and employees
SELECT
	orders.OrderID,
    employees.EmployeeID
FROM orders
CROSS JOIN employees;

-- 19. List all combinations of products and categories
SELECT
	products.ProductID,
    categories.CategoryID
FROM products
CROSS JOIN categories;

-- 20. Show all combinations of shippers and suppliers
SELECT
	shippers.ShipperID,
    shippers.ShipperName,
    suppliers.SupplierID,
    suppliers.SupplierName
FROM shippers
CROSS JOIN suppliers;

-- 21. List all combinations of employees and order_details
SELECT 
	employees.EmployeeID,
    order_details.OrderDetailID
FROM employees
CROSS JOIN order_details;

-- 22. Show all combinations of customers and categories
SELECT 
	customers.CustomerID,
    categories.CategoryID
FROM customers
CROSS JOIN categories;

-- 23. List all combinations of suppliers and products with UnitsInStock > 0.
SELECT
	suppliers.SupplierID,
    products.ProductID
FROM suppliers
CROSS JOIN products
WHERE UnitsInStock > 0;

-- 24. Show all combinations of orders and shippers for July 1996
SELECT
	orders.OrderID,
    orders.OrderDate,
    shippers.ShipperID
FROM orders
CROSS JOIN shippers
WHERE MONTH(orders.OrderDate) = 7 AND YEAR(orders.OrderDate)= 1996;

-- 25. List all combinations of employees and orders with quantity > 10
SELECT
	employees.EmployeeID,
    orders.OrderID
FROM employees
CROSS JOIN orders
WHERE OrderID IN(
	SELECT
		OrderID
	FROM order_details
    WHERE Quantity > 10);

-- 26. Show all combinations of products and suppliers for CategoryID = 1
SELECT
    p.ProductID,
    s.SupplierID
FROM products p
CROSS JOIN suppliers s
WHERE p.CategoryID = 1;

-- 27. List all combinations of customers and orders with UnitPrice > 20
SELECT DISTINCT
    c.CustomerID,
    o.OrderID
FROM customers c
CROSS JOIN orders o
WHERE o.OrderID IN (
    SELECT OrderID
    FROM products
    WHERE UnitPrice > 20
);

-- 28. Show all combinations of employees and products with UnitPrice < 15
SELECT
    e.EmployeeID,
    p.ProductID
FROM employees e
CROSS JOIN products p
WHERE p.UnitPrice < 15;

-- 29. List all combinations of shippers and orders shipped by ShipperID = 1
SELECT
    s.ShipperID,
    o.OrderID
FROM shippers s
CROSS JOIN orders o
WHERE o.ShipperID = 1;

-- 30. Show all combinations of categories and products with UnitsInStock > 30
SELECT
    c.CategoryID,
    p.ProductID
FROM categories c
CROSS JOIN products p
WHERE p.UnitsInStock > 30;

-- 31. List all combinations of customers and order_details where Quantity >= 5
SELECT DISTINCT
    c.CustomerID,
    od.OrderID,
    od.ProductID
FROM customers c
CROSS JOIN order_details od
WHERE od.Quantity >= 5;

-- 32. Show all combinations of employees and customers from Germany
SELECT
    e.EmployeeID,
    c.CustomerID
FROM employees e
CROSS JOIN customers c
WHERE c.Country = 'Germany';

-- 33. List all combinations of suppliers and products where Discontinued = 1
SELECT
    s.SupplierID,
    p.ProductID
FROM suppliers s
CROSS JOIN products p
WHERE p.Discontinued = 1;

-- 34. Show all combinations of orders and products in CategoryID = 2
SELECT
    o.OrderID,
    p.ProductID
FROM orders o
CROSS JOIN products p
WHERE p.CategoryID = 2;

-- 35. List all combinations of products and orders for ProductID IN (1,5,10)
SELECT
    p.ProductID,
    o.OrderID
FROM products p
CROSS JOIN orders o
WHERE p.ProductID IN (1,5,10);

-- 36. Show all combinations of customers and suppliers in Japan
SELECT
    c.CustomerID,
    s.SupplierID
FROM customers c
CROSS JOIN suppliers s
WHERE c.Country = 'Japan'
  AND s.Country = 'Japan';

-- 37. List all combinations of employees and shippers with orders in July 1996
SELECT DISTINCT
    e.EmployeeID,
    s.ShipperID
FROM employees e
CROSS JOIN shippers s
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.EmployeeID = e.EmployeeID
      AND o.ShipperID = s.ShipperID
      AND o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
);

-- 38. Show all combinations of categories and suppliers supplying products in CategoryID = 3
SELECT DISTINCT
    c.CategoryID,
    s.SupplierID
FROM categories c
CROSS JOIN suppliers s
WHERE c.CategoryID = 3;

-- 39. List all combinations of products and order_details with Quantity > 20
SELECT
    p.ProductID,
    od.OrderID
FROM products p
CROSS JOIN order_details od
WHERE od.Quantity > 20;

-- 40. Show all combinations of customers and products where UnitPrice > 25
SELECT
    c.CustomerID,
    p.ProductID
FROM customers c
CROSS JOIN products p
WHERE p.UnitPrice > 25;

-- 41. List all combinations of orders and suppliers with products supplied by SupplierID = 5
SELECT
    o.OrderID,
    s.SupplierID
FROM orders o
CROSS JOIN suppliers s
WHERE s.SupplierID = 5;

-- 42. Show all combinations of employees and categories with products in stock
SELECT DISTINCT
    e.EmployeeID,
    c.CategoryID
FROM employees e
CROSS JOIN categories c
WHERE EXISTS (
    SELECT 1
    FROM products p
    WHERE p.CategoryID = c.CategoryID
      AND p.UnitsInStock > 0
);

-- 43. List all combinations of products and customers who ordered them
SELECT DISTINCT
    p.ProductID,
    c.CustomerID
FROM products p
CROSS JOIN customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    JOIN order_details od ON o.OrderID = od.OrderID
    WHERE o.CustomerID = c.CustomerID
      AND od.ProductID = p.ProductID
);

-- 44. Show all combinations of suppliers and customers in the same country
SELECT
    s.SupplierID,
    c.CustomerID
FROM suppliers s
CROSS JOIN customers c
WHERE s.Country = c.Country;

-- 45. List all combinations of categories and employees responsible for orders in that category
SELECT DISTINCT
    c.CategoryID,
    e.EmployeeID
FROM categories c
CROSS JOIN employees e
WHERE EXISTS (
    SELECT 1
    FROM orders o
    JOIN order_details od ON o.OrderID = od.OrderID
    JOIN products p ON p.ProductID = od.ProductID
    WHERE o.EmployeeID = e.EmployeeID
      AND p.CategoryID = c.CategoryID
);

-- 46. Show all combinations of shippers and customers who used them
SELECT DISTINCT
    s.ShipperID,
    c.CustomerID
FROM shippers s
CROSS JOIN customers c
WHERE EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.ShipperID = s.ShipperID
      AND o.CustomerID = c.CustomerID
);

-- 47. List all combinations of order_details and products in CategoryID = 1
SELECT
    od.OrderID,
    p.ProductID
FROM order_details od
CROSS JOIN products p
WHERE p.CategoryID = 1;

-- 48. Show all combinations of employees and orders with total quantity > 15
SELECT DISTINCT
    e.EmployeeID,
    o.OrderID
FROM employees e
CROSS JOIN orders o
WHERE o.OrderID IN (
    SELECT OrderID
    FROM order_details
    GROUP BY OrderID
    HAVING SUM(Quantity) > 15
);

-- 49. List all combinations of products and suppliers with ReorderLevel <= 10
SELECT
    p.ProductID,
    s.SupplierID
FROM products p
CROSS JOIN suppliers s
WHERE p.ReorderLevel <= 10;

-- 50. Show all combinations of categories and orders containing products from that category
SELECT DISTINCT
    c.CategoryID,
    o.OrderID
FROM categories c
CROSS JOIN orders o
WHERE EXISTS (
    SELECT 1
    FROM order_details od
    JOIN products p ON p.ProductID = od.ProductID
    WHERE od.OrderID = o.OrderID
      AND p.CategoryID = c.CategoryID
);
