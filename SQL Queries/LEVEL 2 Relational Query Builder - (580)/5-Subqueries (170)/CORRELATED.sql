-- =============================================
-- CORRELATED SUBQUERY PRACTICE QUESTIONS
-- =============================================

-- ============================
-- PRODUCTS
-- ============================

-- 1. Find products whose UnitPrice is higher than the average UnitPrice 
--    of other products in the same category.
SELECT
    P.ProductID,
    P.ProductName,
    P.UnitPrice,
    C.CategoryName
FROM products P
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.UnitPrice > (
    SELECT
        AVG(P1.UnitPrice)
    FROM products P1
    WHERE P1.CategoryID = P.CategoryID
);

-- 2. List products whose UnitsInStock is lower than the average UnitsInStock 
--    of all products from the same supplier.
SELECT 
    P.ProductID,
    P.ProductName,
    P.UnitsInStock,
    S.SupplierName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.UnitsInStock < (
    SELECT
        AVG(P1.UnitsInStock)
    FROM products P1
    WHERE P1.SupplierID = P.SupplierID
);

-- 3. Retrieve products that are the most expensive product within their category.
SELECT
    P.ProductID,
    P.ProductName,
    C.CategoryName,
    P.UnitPrice
FROM products P
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.UnitPrice = (
    SELECT
        MAX(P1.UnitPrice)
    FROM products P1
    WHERE P1.CategoryID = P.CategoryID
);

-- 4. Find products that have a UnitPrice greater than every other product 
--    from the same supplier.
SELECT 
    P.ProductID,
    P.ProductName,
    P.UnitPrice,
    S.SupplierName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.UnitPrice = (
    SELECT
        MAX(P1.UnitPrice)
    FROM products P1
    WHERE P1.SupplierID = P.SupplierID
);

-- 5. List products where UnitsOnOrder is greater than the total UnitsOnOrder 
--    of all other products in the same category.
SELECT 
    P.ProductID,
    P.ProductName,
    P.UnitsOnOrder,
    C.CategoryName
FROM products P
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.UnitsOnOrder > (
    SELECT
        COALESCE(SUM(P1.UnitsOnOrder), 0)
    FROM products P1
    WHERE P1.CategoryID = P.CategoryID
      AND P1.ProductID <> P.ProductID
);

-- ============================
-- SUPPLIERS
-- ============================

-- 6. Find suppliers who supply more products than the average number 
--    of products supplied by all suppliers.
SELECT
    S.SupplierID,
    S.SupplierName
FROM suppliers S
JOIN products P ON S.SupplierID = P.SupplierID
GROUP BY S.SupplierID, S.SupplierName
HAVING COUNT(P.ProductID) > (
    SELECT
        AVG(ProductCount)
    FROM (
        SELECT
            COUNT(ProductID) AS ProductCount
        FROM products
        GROUP BY SupplierID
    ) A
);

-- 7. Retrieve suppliers who supply at least one product priced higher 
--    than the average UnitPrice of that product’s category.
SELECT DISTINCT
    S.SupplierID,
    S.SupplierName
FROM suppliers S
JOIN products P 
    ON S.SupplierID = P.SupplierID
WHERE P.UnitPrice > (
    SELECT
        AVG(P2.UnitPrice)
    FROM products P2
    WHERE P2.CategoryID = P.CategoryID
);

-- 8. List suppliers who supply products with UnitsInStock below the 
--    average UnitsInStock within each category.
SELECT DISTINCT s.SupplierID, s.SupplierName
FROM suppliers s
JOIN products p 
    ON s.SupplierID = p.SupplierID
WHERE p.UnitsInStock < (
    SELECT AVG(p2.UnitsInStock)
    FROM products p2
    WHERE p2.CategoryID = p.CategoryID
);

-- 9. Show suppliers whose average product price is higher than the 
--    average price of products for all suppliers.
SELECT s.SupplierID, s.SupplierName
FROM suppliers s
JOIN products p 
    ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierID, s.SupplierName
HAVING AVG(p.UnitPrice) > (
    SELECT AVG(UnitPrice)
    FROM products
);

-- 10. Find suppliers that supply the cheapest product in their country.
SELECT DISTINCT s.SupplierID, s.SupplierName, s.Country
FROM suppliers s
JOIN products p 
    ON s.SupplierID = p.SupplierID
WHERE p.UnitPrice = (
    SELECT MIN(p2.UnitPrice)
    FROM products p2
    JOIN suppliers s2 
        ON p2.SupplierID = s2.SupplierID
    WHERE s2.Country = s.Country
);

-- ============================
-- CUSTOMERS
-- ============================

-- 11. Find customers who have placed more orders than the average order count 
--     of customers in their country.
SELECT c.CustomerID, c.CustomerName, c.Country, COUNT(o.OrderID) AS TotalOrders
FROM customers c
JOIN orders o 
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName, c.Country
HAVING COUNT(o.OrderID) > (
    SELECT AVG(OrderCount)
    FROM (
        SELECT COUNT(o2.OrderID) AS OrderCount
        FROM customers c2
        JOIN orders o2 
            ON c2.CustomerID = o2.CustomerID
        WHERE c2.Country = c.Country
        GROUP BY c2.CustomerID
    ) AS CountryAvg
);

-- 12. List customers whose total quantity ordered is greater than the total quantity 
--     ordered by any other customer in the same city.
SELECT c.CustomerID, c.CustomerName, c.City, SUM(od.Quantity) AS TotalQuantity
FROM customers c
JOIN orders o 
    ON c.CustomerID = o.CustomerID
JOIN order_details od 
    ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, c.CustomerName, c.City
HAVING SUM(od.Quantity) > ALL (
    SELECT SUM(od2.Quantity)
    FROM customers c2
    JOIN orders o2 
        ON c2.CustomerID = o2.CustomerID
    JOIN order_details od2 
        ON o2.OrderID = od2.OrderID
    WHERE c2.City = c.City AND c2.CustomerID <> c.CustomerID
    GROUP BY c2.CustomerID
);

-- 13. Retrieve customers who placed at least one order containing a product 
--     whose UnitPrice is greater than the average UnitPrice purchased by that customer.
SELECT DISTINCT c.CustomerID, c.CustomerName
FROM customers c
JOIN orders o 
    ON c.CustomerID = o.CustomerID
JOIN order_details od 
    ON o.OrderID = od.OrderID
JOIN products p 
    ON od.ProductID = p.ProductID
WHERE p.UnitPrice > (
    SELECT AVG(p2.UnitPrice)
    FROM orders o2
    JOIN order_details od2 
        ON o2.OrderID = od2.OrderID
    JOIN products p2 
        ON od2.ProductID = p2.ProductID
    WHERE o2.CustomerID = c.CustomerID
);

-- 14. Find customers whose latest order date is earlier than the latest order date 
--     of other customers in the same country.
SELECT c.CustomerID, c.CustomerName, c.Country, MAX(o.OrderDate) AS LatestOrder
FROM customers c
JOIN orders o 
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName, c.Country
HAVING MAX(o.OrderDate) < (
    SELECT MAX(o2.OrderDate)
    FROM customers c2
    JOIN orders o2 
        ON c2.CustomerID = o2.CustomerID
    WHERE c2.Country = c.Country AND c2.CustomerID <> c.CustomerID
);

-- 15. Show customers who ordered a product more times than any other customer 
--     ordered that same product.
SELECT DISTINCT c.CustomerID, c.CustomerName
FROM customers c
JOIN orders o 
    ON c.CustomerID = o.CustomerID
JOIN order_details od 
    ON o.OrderID = od.OrderID
WHERE NOT EXISTS (
    SELECT 1
    FROM customers c2
    JOIN orders o2 
        ON c2.CustomerID = o2.CustomerID
    JOIN order_details od2 
        ON o2.OrderID = od2.OrderID
    WHERE od2.ProductID = od.ProductID
      AND c2.CustomerID <> c.CustomerID
    GROUP BY c2.CustomerID
    HAVING SUM(od2.Quantity) >= SUM(od.Quantity)
);


-- ============================
-- EMPLOYEES
-- ============================

-- 16. List employees whose age is lower than the average age of employees 
--     who processed orders for the same customers they served.
SELECT e.EmployeeID, e.FirstName, e.LastName, 
       TIMESTAMPDIFF(YEAR, e.BirthDate, CURDATE()) AS Age
FROM employees e
WHERE TIMESTAMPDIFF(YEAR, e.BirthDate, CURDATE()) < (
    SELECT AVG(TIMESTAMPDIFF(YEAR, e2.BirthDate, CURDATE()))
    FROM employees e2
    JOIN orders o2 
        ON e2.EmployeeID = o2.EmployeeID
    JOIN orders o1 
        ON o1.CustomerID = o2.CustomerID
    WHERE o1.EmployeeID = e.EmployeeID
);

-- 17. Find employees who handled more orders than the average orders handled 
--     by employees with the same birth decade.
SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(o.OrderID) AS TotalOrders
FROM employees e
JOIN orders o 
    ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
HAVING COUNT(o.OrderID) > (
    SELECT AVG(EmployeeOrders)
    FROM (
        SELECT COUNT(o2.OrderID) AS EmployeeOrders
        FROM employees e2
        JOIN orders o2 
            ON e2.EmployeeID = o2.EmployeeID
        WHERE FLOOR(YEAR(e2.BirthDate)/10) = FLOOR(YEAR(e.BirthDate)/10)
        GROUP BY e2.EmployeeID
    ) AS DecadeAvg
);

-- 18. Retrieve employees whose total quantity processed in orders is greater 
--     than the total quantity processed by all other employees.
SELECT e.EmployeeID, e.FirstName, e.LastName, SUM(od.Quantity) AS TotalQuantity
FROM employees e
JOIN orders o 
    ON e.EmployeeID = o.EmployeeID
JOIN order_details od 
    ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID, e.FirstName, e.LastName
HAVING SUM(od.Quantity) > (
    SELECT SUM(od2.Quantity)
    FROM employees e2
    JOIN orders o2 
        ON e2.EmployeeID = o2.EmployeeID
    JOIN order_details od2 
        ON o2.OrderID = od2.OrderID
    WHERE e2.EmployeeID <> e.EmployeeID
);

-- 19. Show employees who shipped orders faster than the average shipping speed 
--     of other employees.

-- 20. List employees who processed orders for customers that no other employee processed.
SELECT DISTINCT e.EmployeeID, e.FirstName, e.LastName
FROM employees e
JOIN orders o 
    ON e.EmployeeID = o.EmployeeID
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o2
    WHERE o2.CustomerID = o.CustomerID
      AND o2.EmployeeID <> e.EmployeeID
);


-- ============================
-- ORDERS
-- ============================

-- 21. Find orders whose OrderDate is earlier than the average OrderDate 
--     of all orders by the same customer.
SELECT o.OrderID, o.CustomerID, o.OrderDate
FROM orders o
WHERE o.OrderDate < (
    SELECT AVG(o2.OrderDate)
    FROM orders o2
    WHERE o2.CustomerID = o.CustomerID
);

-- 22. List orders where the freight is higher than the average freight 
--     charged by the same shipper.

-- 23. Retrieve orders whose total quantity (in order_details) is greater 
--     than the total quantity of all other orders placed on the same date.
SELECT o.OrderID, o.OrderDate, SUM(od.Quantity) AS TotalQuantity
FROM orders o
JOIN order_details od 
    ON o.OrderID = od.OrderID
GROUP BY o.OrderID, o.OrderDate
HAVING SUM(od.Quantity) > ALL (
    SELECT SUM(od2.Quantity)
    FROM orders o2
    JOIN order_details od2 
        ON o2.OrderID = od2.OrderID
    WHERE o2.OrderDate = o.OrderDate AND o2.OrderID <> o.OrderID
    GROUP BY o2.OrderID
);

-- 24. Show orders that include at least one product whose price is higher 
--     than the average price of products in that order.
SELECT DISTINCT o.OrderID
FROM orders o
JOIN order_details od 
    ON o.OrderID = od.OrderID
JOIN products p 
    ON od.ProductID = p.ProductID
WHERE p.UnitPrice > (
    SELECT AVG(p2.UnitPrice)
    FROM order_details od2
    JOIN products p2 
        ON od2.ProductID = p2.ProductID
    WHERE od2.OrderID = o.OrderID
);

-- 25. Find orders whose employee handled fewer total orders than the 
--     average orders handled by employees in that same month.
SELECT o.OrderID, o.EmployeeID, o.OrderDate
FROM orders o
WHERE (
    SELECT COUNT(*)
    FROM orders o1
    WHERE o1.EmployeeID = o.EmployeeID
      AND MONTH(o1.OrderDate) = MONTH(o.OrderDate)
      AND YEAR(o1.OrderDate) = YEAR(o.OrderDate)
) < (
    SELECT AVG(EmployeeOrders)
    FROM (
        SELECT COUNT(*) AS EmployeeOrders
        FROM orders o2
        WHERE MONTH(o2.OrderDate) = MONTH(o.OrderDate)
          AND YEAR(o2.OrderDate) = YEAR(o.OrderDate)
        GROUP BY o2.EmployeeID
    ) AS MonthlyAvg
);


-- ============================
-- ORDER DETAILS
-- ============================

-- 26. Find order_details where Quantity is greater than the average quantity 
--     for products in the same category.
SELECT od.OrderDetailID, od.OrderID, od.ProductID, od.Quantity
FROM order_details od
JOIN products p 
    ON od.ProductID = p.ProductID
WHERE od.Quantity > (
    SELECT AVG(od2.Quantity)
    FROM order_details od2
    JOIN products p2 
        ON od2.ProductID = p2.ProductID
    WHERE p2.CategoryID = p.CategoryID
);

-- 27. List order_details for which the product was ordered more frequently 
--     by this customer than any other customer.
SELECT od.OrderDetailID, od.OrderID, od.ProductID, o.CustomerID, SUM(od.Quantity) AS CustomerQty
FROM order_details od
JOIN orders o 
    ON od.OrderID = o.OrderID
GROUP BY od.OrderDetailID, od.OrderID, od.ProductID, o.CustomerID
HAVING SUM(od.Quantity) > ALL (
    SELECT SUM(od2.Quantity)
    FROM order_details od2
    JOIN orders o2 
        ON od2.OrderID = o2.OrderID
    WHERE od2.ProductID = od.ProductID
      AND o2.CustomerID <> o.CustomerID
    GROUP BY o2.CustomerID
);

-- 28. Retrieve order_details where the price of the product is higher 
--     than the average price of all products in other order_details 
--     of the same OrderID.
SELECT od.OrderDetailID, od.OrderID, od.ProductID, p.UnitPrice
FROM order_details od
JOIN products p 
    ON od.ProductID = p.ProductID
WHERE p.UnitPrice > (
    SELECT AVG(p2.UnitPrice)
    FROM order_details od2
    JOIN products p2 
        ON od2.ProductID = p2.ProductID
    WHERE od2.OrderID = od.OrderID
      AND od2.OrderDetailID <> od.OrderDetailID
);

-- 29. Show order_details where quantity exceeds the average quantity ordered 
--     by the same employee across all their orders.
SELECT od.OrderDetailID, od.OrderID, od.ProductID, od.Quantity, o.EmployeeID
FROM order_details od
JOIN orders o 
    ON od.OrderID = o.OrderID
WHERE od.Quantity > (
    SELECT AVG(od2.Quantity)
    FROM order_details od2
    JOIN orders o2 
        ON od2.OrderID = o2.OrderID
    WHERE o2.EmployeeID = o.EmployeeID
);

-- 30. Find order_details where the product belongs to a category that the 
--     ordering customer has purchased more than any other category.
SELECT od.OrderDetailID, od.OrderID, od.ProductID, p.CategoryID, o.CustomerID
FROM order_details od
JOIN products p 
    ON od.ProductID = p.ProductID
JOIN orders o 
    ON od.OrderID = o.OrderID
WHERE p.CategoryID = (
    SELECT t.CategoryID
    FROM (
        SELECT p2.CategoryID, SUM(od2.Quantity) AS TotalQty
        FROM order_details od2
        JOIN products p2 
            ON od2.ProductID = p2.ProductID
        JOIN orders o2 
            ON od2.OrderID = o2.OrderID
        WHERE o2.CustomerID = o.CustomerID
        GROUP BY p2.CategoryID
        ORDER BY TotalQty DESC
        LIMIT 1
    ) AS t
);
