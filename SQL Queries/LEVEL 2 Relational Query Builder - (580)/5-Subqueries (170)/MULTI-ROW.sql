-- =============================================
-- MULTI-ROW SUBQUERY PRACTICE
-- Uses: IN, ANY, ALL, NOT IN
-- =============================================


-- ============================
-- PRODUCTS
-- ============================

-- 1. Find products whose CategoryID is IN the list of categories 
--    that have more than 1 product.
SELECT *
FROM products
WHERE CategoryID IN (
    SELECT CategoryID
    FROM products
    GROUP BY CategoryID
    HAVING COUNT(*) > 1
);

-- 2. List products whose SupplierID is IN suppliers located in Japan.
SELECT *
FROM products
WHERE SupplierID IN (
    SELECT SupplierID
    FROM suppliers
    WHERE Country = 'Japan'
);

-- 3. Retrieve products whose ProductID is IN the list of ProductIDs 
--    in order_details with Quantity > 30.
SELECT *
FROM products
WHERE ProductID IN (
    SELECT DISTINCT ProductID
    FROM order_details
    WHERE Quantity > 30
);

-- 4. Find products whose UnitPrice is greater than ANY UnitPrice 
--    of products in CategoryID = 1.
SELECT *
FROM products
WHERE UnitPrice > ANY (
    SELECT UnitPrice
    FROM products
    WHERE CategoryID = 1
);

-- 5. Find products whose UnitPrice is greater than ALL UnitPrices 
--    in CategoryID = 2.
SELECT *
FROM products
WHERE UnitPrice > ALL (
    SELECT UnitPrice
    FROM products
    WHERE CategoryID = 2
);

-- 6. Show products whose ProductID is NOT IN the order_details table 
--    (never ordered products).
SELECT *
FROM products
WHERE ProductID NOT IN (
    SELECT ProductID
    FROM order_details
    WHERE ProductID IS NOT NULL
);
    
-- 7. Retrieve products whose UnitPrice is less than ANY UnitPrice 
--    in CategoryID = 5.
SELECT *
FROM products
WHERE UnitPrice < ANY (
    SELECT UnitPrice
    FROM products
    WHERE CategoryID = 5
);

-- 8. Retrieve products whose UnitsInStock is less than ANY UnitsInStock 
--    of discontinued products.
SELECT * 
FROM products
WHERE UnitsInStock < ANY (
	SELECT
		UnitsInStock
    FROM products
    WHERE Discontinued = 1
);

-- 9. Find categories whose CategoryID is IN categories having products out of stock.
SELECT *
FROM categories
WHERE CategoryID IN (
    SELECT CategoryID
    FROM products
    WHERE UnitsInStock = 0
);

-- 10. Show categories whose CategoryID is IN the categories 
--     used by discontinued products.
SELECT *
FROM customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM orders
    WHERE OrderDate >= '1996-07-01'
      AND OrderDate < '1996-08-01'
);


-- ============================ 
-- CUSTOMERS -- 
-- ============================

-- 11. List customers whose CustomerID is IN the set of customers 
-- who placed orders in July 1996.
SELECT *
FROM customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM orders
    WHERE OrderDate >= '1996-07-01'
      AND OrderDate < '1996-08-01'
);

-- 12. Show orders where CustomerID is IN the group of customers from Germany.
SELECT *
FROM orders
WHERE CustomerID IN (
    SELECT CustomerID
    FROM customers
    WHERE Country = 'Germany'
);

-- 13. Find customers whose CustomerID is IN the list of customers 
--     who placed orders shipped by 'Federal Shipping'.
SELECT *
FROM customers
WHERE CustomerID IN (
    SELECT O.CustomerID
    FROM orders O
    JOIN shippers S
        ON O.ShipperID = S.ShipperID
    WHERE S.ShipperName = 'Federal Shipping'
);

-- 14. Find customers whose CustomerID is IN customers with PostalCode 
--     starting with '5'.
SELECT *
FROM customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM customers
    WHERE PostalCode LIKE '5%'
);

-- 15. List customers whose Country is IN the countries of suppliers 
--     who supply CategoryID = 1 products.
SELECT *
FROM customers
WHERE Country IN (
    SELECT DISTINCT S.Country
    FROM suppliers S
    JOIN products P
        ON S.SupplierID = P.SupplierID
    WHERE P.CategoryID = 1
);


-- ============================
-- EMPLOYEES
-- ============================

-- 16. Find employees whose EmployeeID is IN the list of employees 
--     who handled orders shipped by ShipperID = 3.
SELECT *
FROM employees
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM orders
    WHERE ShipperID = 3
);

-- 17. Show employees whose EmployeeID is IN the list of employees 
--     who handled orders for CustomerID = 20.
SELECT *
FROM employees 
WHERE EmployeeID IN (
	SELECT
		EmployeeID
	FROM orders
    WHERE CustomerID = 20
);

-- 18. Retrieve employees whose EmployeeID is IN employees 
--     with birthdates earlier than ANY customer registration date (if exists).

-- 19. Find employees where EmployeeID is IN employees who were born in the 1950s.
SELECT *
FROM employees
WHERE BirthDate >= '1950-01-01'
  AND BirthDate < '1960-01-01';


-- ============================
-- ORDERS   
-- ============================

-- 20. Show orders whose OrderID is IN the top 5 earliest OrderIDs.
SELECT o.*
FROM orders o
JOIN (
    SELECT OrderID
    FROM orders
    ORDER BY OrderDate ASC
    LIMIT 5
) t ON o.OrderID = t.OrderID;

-- 21. Find orders whose ShipperID is IN the list of shippers used by EmployeeID = 4.
SELECT *
FROM orders
WHERE ShipperID IN (
    SELECT DISTINCT ShipperID
    FROM orders
    WHERE EmployeeID = 4
); 

-- 22. Find orders whose OrderDate is earlier than ALL order dates of CustomerID = 34.
SELECT *
FROM orders
WHERE OrderDate < ALL (
		SELECT
			OrderDate
		WHERE CustomerID = 34
);

-- 23. Find orders where CustomerID is IN customers who placed orders 
--     shipped by 'Federal Shipping'.
SELECT *
FROM orders
WHERE CustomerID IN (
    SELECT DISTINCT CustomerID
    FROM orders
    WHERE ShipperID = (
        SELECT ShipperID
        FROM shippers
        WHERE ShipperName = 'Federal Shipping'
    )
);


-- 24. Find orders whose CustomerID is IN customers with PostalCode starting with '5'.
SELECT *
FROM orders
WHERE CustomerID IN (
    SELECT CustomerID
    FROM customers
    WHERE PostalCode LIKE '5%'
);

-- 25. Retrieve orders whose ShipperID is IN orders placed after '1996-07-20'.
SELECT *
FROM orders
WHERE ShipperID IN (
    SELECT DISTINCT ShipperID
    FROM orders
    WHERE OrderDate > '1996-07-20'
);


-- ============================
-- SUPPLIERS
-- ============================

-- 26. List suppliers whose SupplierID is IN the SupplierIDs 
--     of products priced above 20.
SELECT *
FROM suppliers
WHERE SupplierID IN (
		SELECT DISTINCT
			SupplierID
		FROM products
        WHERE UnitPrice > 20
);

-- 27. Show suppliers whose country is IN the customer countries 
--     from which orders were placed.
SELECT *
FROM suppliers
WHERE Country IN (
    SELECT DISTINCT c.Country
    FROM customers c
    JOIN orders o ON c.CustomerID = o.CustomerID
);

-- 28. Show suppliers whose SupplierID is IN the SupplierIDs 
--     of the cheapest products.
SELECT *
FROM suppliers
WHERE SupplierID IN (
    SELECT SupplierID
    FROM products
    WHERE UnitPrice = (
        SELECT MIN(UnitPrice)
        FROM products
    )
);

-- 29. List suppliers whose Country is IN the cities of customers 
--     (if applicable).
SELECT *
FROM suppliers s
WHERE EXISTS (
    SELECT 1
    FROM customers c
    WHERE c.City = s.Country
);


-- ============================
-- ORDER DETAILS
-- ============================

-- 30. Show order_details whose Quantity is greater than ALL quantities 
--     of OrderID = 10248.

-- 31. Retrieve order_details where ProductID is IN products supplied by 
--     suppliers located in the country with the most suppliers.
