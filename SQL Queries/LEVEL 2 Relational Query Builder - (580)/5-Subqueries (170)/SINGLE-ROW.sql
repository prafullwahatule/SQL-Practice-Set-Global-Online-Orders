-- =============================================
-- SINGLE-ROW SUBQUERY PRACTICE
-- Uses: =, >, <, >=, <= with single-value subqueries
-- =============================================


-- ============================
-- PRODUCTS
-- ============================

-- 1. Find the product whose UnitPrice is higher than the UnitPrice of ProductID = 1.
SELECT 
    ProductID,
    ProductName,
    UnitPrice
FROM products
WHERE UnitPrice > (
    SELECT UnitPrice
    FROM products
    WHERE ProductID = 1
);


-- 4. Show products with UnitsInStock greater than the UnitsInStock of 'Chai'.
SELECT
    ProductID,
    ProductName,
    UnitsInStock
FROM products
WHERE UnitsInStock > (
    SELECT UnitsInStock
    FROM products
    WHERE ProductName = 'Chai'
);


-- 7. Retrieve products whose UnitPrice is less than the minimum UnitPrice of CategoryID = 2.
SELECT
    ProductID,
    ProductName,
    UnitPrice
FROM products
WHERE UnitPrice < (
    SELECT MIN(UnitPrice)
    FROM products
    WHERE CategoryID = 2
);


-- 10. List products that have a UnitPrice equal to the average UnitPrice of all products.
SELECT
    ProductID,
    ProductName,
    UnitPrice
FROM products
WHERE UnitPrice = (
    SELECT AVG(UnitPrice)
    FROM products
);


-- 15. Show products in the same category as the cheapest product.
SELECT
    ProductName,
    CategoryID
FROM products
WHERE CategoryID = (
    SELECT CategoryID
    FROM products
    WHERE UnitPrice = (
        SELECT MIN(UnitPrice)
        FROM products
    )
    LIMIT 1
);


-- 18. Find products with UnitsInStock less than the UnitsInStock of the most expensive product.
SELECT *
FROM products
WHERE UnitsInStock < (
    SELECT UnitsInStock
    FROM products
    WHERE UnitPrice = (
        SELECT MAX(UnitPrice)
        FROM products
    )
);


-- 21. List products whose ReorderLevel is higher than the ReorderLevel of ProductID = 3.
SELECT *
FROM products
WHERE ReorderLevel > (
    SELECT ReorderLevel
    FROM products
    WHERE ProductID = 3
);


-- 23. Show products priced lower than the average price of CategoryID = 1.
SELECT *
FROM products
WHERE UnitPrice < (
    SELECT AVG(UnitPrice)
    FROM products
    WHERE CategoryID = 1
);


-- 25. List products with UnitsInStock equal to the maximum UnitsInStock of any discontinued product.
SELECT *
FROM products 
WHERE UnitsInStock = (
    SELECT MAX(UnitsInStock)
    FROM products
    WHERE Discontinued = 1
);


-- 27. Retrieve products whose UnitPrice is more than the UnitPrice of 'Chang'.
SELECT *
FROM products
WHERE UnitPrice > (
    SELECT UnitPrice
    FROM products
    WHERE ProductName = 'Chang'
);



-- ============================
-- CUSTOMERS
-- ============================

-- 2. List customers whose CustomerID is greater than the CustomerID of the most recent order.

-- 8. Show customers living in the same city as the customer with CustomerID = 10.

-- 13. Retrieve customers whose PostalCode matches the PostalCode of CustomerID = 5.

-- 19. Show customers from the same Country as the company with highest CustomerID.

-- 29. Find customers whose Country matches the Country of the customer with the earliest CustomerID.


-- ============================
-- EMPLOYEES
-- ============================

-- 3. Find employees born earlier than the employee with EmployeeID = 5.

-- 12. Show employees whose HireDate is after the HireDate of EmployeeID = 3.

-- 22. Find orders handled by the employee with the lowest EmployeeID.

-- 28. List employees whose LastName comes alphabetically after the LastName of EmployeeID = 2.


-- ============================
-- SUPPLIERS
-- ============================

-- 6. Find suppliers located in the same country as SupplierID = 1.

-- 16. Retrieve suppliers whose City matches the City of SupplierID = 4.

-- 24. Find suppliers from the same country as the supplier offering the cheapest product.


-- ============================
-- ORDERS
-- ============================

-- 5. List orders placed after the first order date in the Orders table.

-- 9. Find orders whose Freight is greater than the Freight of OrderID = 10248.

-- 14. Find orders shipped using the same ShipperID as OrderID = 10255.

-- 17. List orders placed by the customer who placed the earliest order.

-- 20. Retrieve categories whose CategoryID equals the category 
--     of the product with max UnitPrice.

-- 22. Find orders handled by the employee with the lowest EmployeeID.

-- 26. Find orders placed on the same date as OrderID = 10260.


-- ============================
-- ORDER DETAILS
-- ============================

-- 30. Show order_details where Quantity is greater than the Quantity 
--     of OrderID = 10248 for ProductID = 11.
