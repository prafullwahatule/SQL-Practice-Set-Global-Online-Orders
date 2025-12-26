-- =============================================
-- SQL SELF JOIN Practice
-- Using: SELF JOIN to compare rows within the same table
-- =============================================

-- 1. Find employees who share the same birth year
SELECT
    E1.EmployeeID AS Emp1_ID,
    E1.FirstName  AS Emp1_Name,
    E2.EmployeeID AS Emp2_ID,
    E2.FirstName  AS Emp2_Name,
    YEAR(E1.BirthDate) AS BirthYear
FROM employees E1
JOIN employees E2
ON YEAR(E1.BirthDate) = YEAR(E2.BirthDate)
AND E1.EmployeeID <> E2.EmployeeID;

-- 2. List employees whose birth year is earlier than another employee’s birth year
SELECT DISTINCT
    E1.EmployeeID AS Emp1_ID,
    E1.FirstName  AS Emp1_Name,
    YEAR(E1.BirthDate) AS Emp1_BirthYear
FROM employees E1
JOIN employees E2
ON YEAR(E1.BirthDate) < YEAR(E2.BirthDate);

-- 3. Find employees whose last name starts with the same letter as another employee
SELECT DISTINCT
    E1.EmployeeID,
    E1.FirstName,
    E1.LastName
FROM employees E1
JOIN employees E2
ON LEFT(E1.LastName, 1) = LEFT(E2.LastName, 1)
AND E1.EmployeeID <> E2.EmployeeID;

-- 4. Show pairs of employees where one has handled more orders than the other
SELECT
    E1.EmployeeID AS Employee_1,
    COUNT(O1.OrderID) AS Orders_Handled_By_E1,
    E2.EmployeeID AS Employee_2,
    COUNT(O2.OrderID) AS Orders_Handled_By_E2
FROM employees E1
LEFT JOIN orders O1
    ON E1.EmployeeID = O1.EmployeeID
LEFT JOIN employees E2
    ON E1.EmployeeID <> E2.EmployeeID
LEFT JOIN orders O2
    ON E2.EmployeeID = O2.EmployeeID
GROUP BY
    E1.EmployeeID,
    E2.EmployeeID
HAVING
    COUNT(O1.OrderID) > COUNT(O2.OrderID);

-- 5. List employees who are older than at least one other employee
SELECT DISTINCT
    E1.EmployeeID,
    CONCAT(E1.FirstName, ' ', E1.LastName) AS Emp_Name,
    E1.BirthDate
FROM employees E1
JOIN employees E2
    ON E1.EmployeeID <> E2.EmployeeID
   AND E1.BirthDate < E2.BirthDate;

-- 6. Find employees and other employees born in the same month
SELECT DISTINCT
    E1.EmployeeID,
    CONCAT(E1.FirstName, ' ', E1.LastName) AS Employee_Name,
    MONTH(E1.BirthDate) AS Birth_Month
FROM employees E1
JOIN employees E2
ON E1.EmployeeID <> E2.EmployeeID
AND MONTH(E1.BirthDate) = MONTH(E2.BirthDate);

-- 7. Show employees whose first name matches another employee’s first name
SELECT DISTINCT
    E1.EmployeeID,
    E1.FirstName,
    E1.LastName
FROM employees E1
JOIN employees E2
ON E1.EmployeeID <> E2.EmployeeID
AND E1.FirstName = E2.FirstName;

-- 8. Find customers living in the same city as another customer
SELECT DISTINCT
    C1.CustomerID,
    C1.CustomerName,
    C1.City
FROM customers C1
JOIN customers C2
ON C1.CustomerID <> C2.CustomerID
AND C1.City = C2.City;

-- 9. List customers whose postal code matches another customer
SELECT DISTINCT
    C1.CustomerID,
    C1.CustomerName,
    C1.PostalCode
FROM customers C1
JOIN customers C2
ON C1.CustomerID <> C2.CustomerID
AND C1.PostalCode = C2.PostalCode;

-- 10. Find suppliers located in the same country as another supplier
SELECT DISTINCT
    S1.SupplierID,
    S1.SupplierName,
    S1.Country
FROM suppliers S1
JOIN suppliers S2
ON S1.SupplierID <> S2.SupplierID
AND S1.Country = S2.Country;

-- 11. Show products supplied by the same supplier
SELECT
    P1.ProductID,
    P1.ProductName,
    P1.SupplierID
FROM products P1
JOIN products P2
ON P1.ProductID <> P2.ProductID
AND P1.SupplierID = P2.SupplierID;

-- 12. Find products in the same category with higher UnitPrice than another product
SELECT
    P1.ProductID,
    P1.ProductName,
    P1.CategoryID,
    P1.UnitPrice
FROM products P1
JOIN products P2
ON P1.ProductID <> P2.ProductID
AND P1.CategoryID = P2.CategoryID
AND P1.UnitPrice > P2.UnitPrice;

-- 13. List products that have the same UnitsInStock as another product
SELECT DISTINCT
    P1.ProductID,
    P1.ProductName,
    P1.UnitsInStock
FROM products P1
JOIN products P2
ON P1.ProductID <> P2.ProductID
AND P1.UnitsInStock = P2.UnitsInStock;

-- 14. Find orders placed by different customers on the same date
SELECT DISTINCT
    O1.OrderID,
    O1.CustomerID,
    O1.OrderDate
FROM orders O1
JOIN orders O2
ON O1.OrderID <> O2.OrderID
AND O1.OrderDate = O2.OrderDate
AND O1.CustomerID <> O2.CustomerID;

-- 15. Show orders handled by different employees on the same date
SELECT DISTINCT
    O1.OrderID,
    O1.EmployeeID,
    O1.OrderDate
FROM orders O1
JOIN orders O2
ON O1.OrderID <> O2.OrderID
AND O1.OrderDate = O2.OrderDate
AND O1.EmployeeID <> O2.EmployeeID;

-- 16. List customers and other customers from the same city but different countries
SELECT DISTINCT
    C1.CustomerID,
    C1.CustomerName,
    C1.City,
    C1.Country
FROM customers C1
JOIN customers C2
ON C1.CustomerID <> C2.CustomerID
AND C1.City = C2.City
AND C1.Country <> C2.Country;

-- 17. Find suppliers with the same phone number as another supplier (if duplicates exist)
SELECT DISTINCT
    S1.SupplierID,
    S1.SupplierName,
    S1.Phone
FROM suppliers S1
JOIN suppliers S2
ON S1.SupplierID <> S2.SupplierID
AND S1.Phone = S2.Phone;

-- 18. Show employees whose birth month and day match another employee
SELECT DISTINCT
    E1.EmployeeID,
    E1.FirstName,
    E1.LastName,
    E1.BirthDate
FROM employees E1
JOIN employees E2
ON E1.EmployeeID <> E2.EmployeeID
AND MONTH(E1.BirthDate) = MONTH(E2.BirthDate)
AND DAY(E1.BirthDate) = DAY(E2.BirthDate);

-- 19. List products where UnitsOnOrder matches another product’s UnitsOnOrder
SELECT DISTINCT
    P1.ProductID,
    P1.ProductName,
    P1.UnitsOnOrder
FROM products P1
JOIN products P2
ON P1.ProductID <> P2.ProductID
AND P1.UnitsOnOrder = P2.UnitsOnOrder;

-- 20. Find orders that have the same CustomerID and ShipperID as another order
SELECT DISTINCT
    O1.OrderID,
    O1.CustomerID,
    O1.ShipperID
FROM orders O1
JOIN orders O2
ON O1.OrderID <> O2.OrderID
AND O1.CustomerID = O2.CustomerID
AND O1.ShipperID = O2.ShipperID; 

-- 21. Show employees whose LastName and FirstName match another employee
SELECT DISTINCT
    E1.EmployeeID,
    E1.FirstName,
    E1.LastName
FROM employees E1
JOIN employees E2
ON E1.EmployeeID <> E2.EmployeeID
AND E1.FirstName = E2.FirstName
AND E1.LastName  = E2.LastName;

-- 22. Find customers in the same city with different CustomerIDs
SELECT DISTINCT
    C1.CustomerID,
    C1.City
FROM customers C1
JOIN customers C2
ON C1.CustomerID <> C2.CustomerID
AND C1.City = C2.City;

-- 23. List suppliers in the same city and country as another supplier
SELECT DISTINCT
    S1.SupplierID,
    S1.City,
    S1.Country
FROM suppliers S1
JOIN suppliers S2
ON S1.SupplierID <> S2.SupplierID
AND S1.City = S2.City
AND S1.Country = S2.Country;

-- 24. Show products in the same category where UnitPrice is less than another product
SELECT DISTINCT
    P1.ProductID,
    P1.ProductName,
    P1.UnitPrice,
    P1.CategoryID
FROM products P1
JOIN products P2
ON P1.ProductID <> P2.ProductID
AND P1.CategoryID = P2.CategoryID
AND P1.UnitPrice < P2.UnitPrice;

-- 25. Find order_details where Quantity matches another order_detail’s Quantity
SELECT DISTINCT
    OD1.OrderID,
    OD1.ProductID,
    OD1.Quantity
FROM order_details OD1
JOIN order_details OD2
ON OD1.OrderID <> OD2.OrderID
AND OD1.Quantity = OD2.Quantity;

-- 26. List employees with fewer orders than another employee
SELECT DISTINCT
    E1.EmployeeID,
    E1.FirstName,
    E1.LastName
FROM employees E1
JOIN orders O1 ON E1.EmployeeID = O1.EmployeeID
JOIN employees E2
JOIN orders O2 ON E2.EmployeeID = O2.EmployeeID
WHERE E1.EmployeeID <> E2.EmployeeID
GROUP BY E1.EmployeeID, E1.FirstName, E1.LastName
HAVING COUNT(O1.OrderID) < COUNT(O2.OrderID);

-- 27. Show customers who share the same postal code with another customer
SELECT DISTINCT
    C1.CustomerID,
    C1.PostalCode
FROM customers C1
JOIN customers C2
ON C1.CustomerID <> C2.CustomerID
AND C1.PostalCode = C2.PostalCode;

-- 28. Find suppliers whose products belong to the same category as another supplier’s products
SELECT DISTINCT
    S1.SupplierID,
    P1.CategoryID
FROM suppliers S1
JOIN products P1 ON S1.SupplierID = P1.SupplierID
JOIN suppliers S2
JOIN products P2 ON S2.SupplierID = P2.SupplierID
WHERE S1.SupplierID <> S2.SupplierID
AND P1.CategoryID = P2.CategoryID;

-- 29. List products supplied by different suppliers but belonging to the same category
SELECT DISTINCT
    P1.ProductID,
    P1.ProductName,
    P1.CategoryID
FROM products P1
JOIN products P2
ON P1.ProductID <> P2.ProductID
AND P1.SupplierID <> P2.SupplierID
AND P1.CategoryID = P2.CategoryID;

-- 30. Show orders placed on the same date by different employees for the same customer
SELECT DISTINCT
    O1.OrderID,
    O1.CustomerID,
    O1.OrderDate
FROM orders O1
JOIN orders O2
ON O1.OrderID <> O2.OrderID
AND O1.CustomerID = O2.CustomerID
AND O1.OrderDate = O2.OrderDate
AND O1.EmployeeID <> O2.EmployeeID;
