-- =============================================
-- SQL JOIN with Conditions Practice
-- Using: INNER JOIN, LEFT JOIN, RIGHT JOIN with WHERE
-- =============================================

-- 1. List orders with customer names where OrderDate > '1996-07-10'
SELECT
    C.CustomerName,
    O.OrderID,
    O.OrderDate
FROM orders O
INNER JOIN customers C
    ON O.CustomerID = C.CustomerID
WHERE O.OrderDate > '1996-07-10';

-- 2. Show products and suppliers where UnitsInStock > 20
-- 2. Show products and suppliers where UnitsInStock > 20
SELECT
	P.ProductID,
	P.ProductName,
    S.SupplierName
FROM products P
JOIN suppliers S
ON P.SupplierID = S.SupplierID
WHERE P.UnitsInStock > 20;

-- 3. Retrieve orders and employees where EmployeeID = 4
SELECT O.*, E.FirstName, E.LastName
FROM orders O
JOIN employees E ON O.EmployeeID = E.EmployeeID
WHERE O.EmployeeID = 4;

-- 4. List customers and orders where ShipperID = 3
SELECT C.CustomerName, O.OrderID
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
WHERE O.ShipperID = 3;

-- 5. Show order_details with product and order info where Quantity >= 10
SELECT OD.*, P.ProductName, O.OrderDate
FROM order_details OD
JOIN products P ON OD.ProductID = P.ProductID
JOIN orders O ON OD.OrderID = O.OrderID
WHERE OD.Quantity >= 10;

-- 6. Find products with category and supplier where UnitPrice > 15
SELECT P.ProductName, C.CategoryName, S.SupplierName
FROM products P
JOIN categories C ON P.CategoryID = C.CategoryID
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.UnitPrice > 15;

-- 7. Orders with customer and shipper between dates
SELECT O.OrderID, C.CustomerName, S.ShipperName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN shippers S ON O.ShipperID = S.ShipperID
WHERE O.OrderDate BETWEEN '1996-07-01' AND '1996-07-15';

-- 8. Customers and orders where Country = 'Germany'
SELECT C.CustomerName, O.OrderID
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
WHERE C.Country = 'Germany';

-- 9. Employees and orders where BirthDate < '1960-01-01'
SELECT E.FirstName, O.OrderID
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
WHERE E.BirthDate < '1960-01-01';

-- 10. Products and suppliers where Discontinued = 1
SELECT P.ProductName, S.SupplierName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.Discontinued = 1;

-- 11. Orders with customer and employee where EmployeeID != 3
SELECT O.OrderID, C.CustomerName, E.FirstName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID
WHERE O.EmployeeID <> 3;

-- 12. Products, category, supplier where UnitsOnOrder > 0
SELECT P.ProductName, C.CategoryName, S.SupplierName
FROM products P
JOIN categories C ON P.CategoryID = C.CategoryID
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.UnitsOnOrder > 0;

-- 13. Order_details, products, orders where ProductID IN (1,5,10)
SELECT OD.*, P.ProductName, O.OrderDate
FROM order_details OD
JOIN products P ON OD.ProductID = P.ProductID
JOIN orders O ON OD.OrderID = O.OrderID
WHERE OD.ProductID IN (1,5,10);

-- 14. Orders with customer, employee, shipper where ShipperID = 2
SELECT O.OrderID, C.CustomerName, E.FirstName, S.ShipperName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID
JOIN shippers S ON O.ShipperID = S.ShipperID
WHERE O.ShipperID = 2;

-- 15. Products and suppliers where CategoryID = 2
SELECT P.ProductName, S.SupplierName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.CategoryID = 2;

-- 16. Customers and orders where PostalCode LIKE 'S%'
SELECT C.CustomerName, O.OrderID
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
WHERE C.PostalCode LIKE 'S%';

-- 17. Order_details with Quantity BETWEEN 5 AND 20
SELECT OD.*, P.ProductName, O.OrderDate
FROM order_details OD
JOIN products P ON OD.ProductID = P.ProductID
JOIN orders O ON OD.OrderID = O.OrderID
WHERE OD.Quantity BETWEEN 5 AND 20;

-- 18. Products with supplier and category where UnitPrice <= 20
SELECT P.ProductName, S.SupplierName, C.CategoryName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.UnitPrice <= 20;

-- 19. Employees and orders where OrderDate < '1996-07-15'
SELECT E.FirstName, O.OrderID
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
WHERE O.OrderDate < '1996-07-15';

-- 20. Customers and orders where Country != 'USA'
SELECT C.CustomerName, O.OrderID
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
WHERE C.Country <> 'USA';

-- 21. Products, suppliers, categories where UnitsInStock = 0
SELECT P.ProductName, S.SupplierName, C.CategoryName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.UnitsInStock = 0;

-- 22. Order_details where Quantity > 10 AND UnitPrice > 15
SELECT OD.*, P.ProductName
FROM order_details OD
JOIN products P ON OD.ProductID = P.ProductID
WHERE OD.Quantity > 10 AND P.UnitPrice > 15;

-- 23. Orders, customers, shippers where OrderDate >= '1996-07-20'
SELECT O.OrderID, C.CustomerName, S.ShipperName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN shippers S ON O.ShipperID = S.ShipperID
WHERE O.OrderDate >= '1996-07-20';

-- 24. Products and suppliers where SupplierID BETWEEN 5 AND 15
SELECT P.ProductName, S.SupplierName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.SupplierID BETWEEN 5 AND 15;

-- 25. Employees and orders where EmployeeID IN (1,2,4)
SELECT E.FirstName, O.OrderID
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
WHERE E.EmployeeID IN (1,2,4);

-- 26. Products where UnitsOnOrder > ReorderLevel
SELECT P.ProductName, C.CategoryName, S.SupplierName
FROM products P
JOIN categories C ON P.CategoryID = C.CategoryID
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.UnitsOnOrder > P.ReorderLevel;

-- 27. Customers and orders where City = 'Berlin'
SELECT C.CustomerName, O.OrderID
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
WHERE C.City = 'Berlin';

-- 28. Orders, products, customers where UnitPrice > 20
SELECT O.OrderID, C.CustomerName, P.ProductName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
WHERE P.UnitPrice > 20;

-- 29. Order_details where Quantity <= 10
SELECT OD.*, P.ProductName
FROM order_details OD
JOIN products P ON OD.ProductID = P.ProductID
WHERE OD.Quantity <= 10;

-- 30. Suppliers and products where Country = 'Japan' AND UnitsInStock > 10
SELECT S.SupplierName, P.ProductName
FROM suppliers S
JOIN products P ON S.SupplierID = P.SupplierID
WHERE S.Country = 'Japan' AND P.UnitsInStock > 10;

-- 31. Orders, customers, employees where ShipperID != 1
SELECT O.OrderID, C.CustomerName, E.FirstName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID
WHERE O.ShipperID <> 1;

-- 32. Products and suppliers where Discontinued = 0 AND UnitsInStock > 0
SELECT P.ProductName, S.SupplierName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.Discontinued = 0 AND P.UnitsInStock > 0;

-- 33. Customers, orders, products where CategoryID = 1
SELECT C.CustomerName, O.OrderID, P.ProductName
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
WHERE P.CategoryID = 1;

-- 34. Order_details where Quantity >= 20 OR UnitPrice > 25
SELECT OD.*, P.ProductName
FROM order_details OD
JOIN products P ON OD.ProductID = P.ProductID
WHERE OD.Quantity >= 20 OR P.UnitPrice > 25;

-- 35. Employees and orders between dates
SELECT E.FirstName, O.OrderID
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
WHERE O.OrderDate BETWEEN '1996-07-10' AND '1996-07-30';

-- 36. Products where UnitsInStock < 20 AND UnitPrice > 10
SELECT P.ProductName, S.SupplierName, C.CategoryName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.UnitsInStock < 20 AND P.UnitPrice > 10;

-- 37. Customers and orders where Country = 'Mexico'
SELECT C.CustomerName, O.OrderID
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
WHERE C.Country = 'Mexico';

-- 38. Orders, products where ProductID <= 10
SELECT O.OrderID, P.ProductName
FROM orders O
JOIN order_details OD ON O.OrderID = OD.OrderID
JOIN products P ON OD.ProductID = P.ProductID
WHERE P.ProductID <= 10;

-- 39. Employees and orders where BirthDate >= '1960-01-01'
SELECT E.FirstName, O.OrderID
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
WHERE E.BirthDate >= '1960-01-01';

-- 40. Products and categories where CategoryID IN (1,2,3)
SELECT P.ProductName, C.CategoryName
FROM products P
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.CategoryID IN (1,2,3);

-- 41. Suppliers and products where UnitsOnOrder = 0 OR Discontinued = 1
SELECT S.SupplierName, P.ProductName
FROM suppliers S
JOIN products P ON S.SupplierID = P.SupplierID
WHERE P.UnitsOnOrder = 0 OR P.Discontinued = 1;

-- 42. Customers, orders, shippers where ShipperID = 3 AND OrderDate < '1996-07-20'
SELECT C.CustomerName, O.OrderID, S.ShipperName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN shippers S ON O.ShipperID = S.ShipperID
WHERE O.ShipperID = 3 AND O.OrderDate < '1996-07-20';

-- 43. Order_details where Quantity > 5 AND UnitPrice <= 20
SELECT OD.*, P.ProductName
FROM order_details OD
JOIN products P ON OD.ProductID = P.ProductID
WHERE OD.Quantity > 5 AND P.UnitPrice <= 20;

-- 44. Products where CategoryID = 5 AND UnitsInStock >= 10
SELECT P.ProductName, C.CategoryName, S.SupplierName
FROM products P
JOIN categories C ON P.CategoryID = C.CategoryID
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.CategoryID = 5 AND P.UnitsInStock >= 10;

-- 45. Orders, customers, employees where CustomerID > 50
SELECT O.OrderID, C.CustomerName, E.FirstName
FROM orders O
JOIN customers C ON O.CustomerID = C.CustomerID
JOIN employees E ON O.EmployeeID = E.EmployeeID
WHERE C.CustomerID > 50;

-- 46. List products and suppliers where UnitPrice BETWEEN 10 AND 20
SELECT
	P.ProductID,
    P.ProductName,
    S.SupplierName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
WHERE P.UnitPrice BETWEEN 10 AND 20;

-- 47. Show customers and orders where Country NOT IN ('USA','UK')
SELECT
    C.CustomerID,
    C.CustomerName,
    O.OrderID
FROM customers C
JOIN orders O ON C.CustomerID = O.CustomerID
WHERE C.Country NOT IN ('USA', 'UK');

-- 48. Find order_details, orders, and products where Quantity < 15 AND CategoryID = 2
SELECT
    OD.OrderID,
    OD.ProductID,
    OD.Quantity,
    P.ProductName,
    O.OrderDate
FROM order_details OD
JOIN products P ON OD.ProductID = P.ProductID
JOIN orders O ON OD.OrderID = O.OrderID
WHERE OD.Quantity < 15
AND P.CategoryID = 2;

-- 49. List employees and orders where EmployeeID <= 5 OR OrderDate >= '1996-07-25'
SELECT
    E.EmployeeID,
    E.FirstName,
    O.OrderID,
    O.OrderDate
FROM employees E
JOIN orders O ON E.EmployeeID = O.EmployeeID
WHERE E.EmployeeID <= 5
OR O.OrderDate >= '1996-07-25';

-- 50. Show products, suppliers, and categories where UnitsOnOrder > 0 AND CategoryID IN (1,3,5)
SELECT
    P.ProductID,
    P.ProductName,
    S.SupplierName,
    C.CategoryName
FROM products P
JOIN suppliers S ON P.SupplierID = S.SupplierID
JOIN categories C ON P.CategoryID = C.CategoryID
WHERE P.UnitsOnOrder > 0
AND P.CategoryID IN (1,3,5);
